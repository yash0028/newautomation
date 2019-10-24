package exari_test.hive;

import com.google.gson.*;
import exari_test.eif.data.EifTestData;
import exari_test.eif.data.EifTestList;
import exari_test.eif.flow.ContractFlow;
import exari_test.eif.report.CukeReport;
import exari_test.eif.report.Feature;
import exari_test.eif.report.Scenario;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.TimeKeeper;
import util.configuration.ConfigStub;
import util.configuration.IConfigurable;
import util.file.FileHandler;

import java.lang.reflect.Type;
import java.util.*;
import java.util.stream.Collectors;

/**
 * Hive is a manager for multiple threaded Exari Contract Creation. Each thread will create a contract using SauceLabs.
 * Data is loaded from a CSV file and a maximum number of concurrent threads can be setup.
 */
public class Hive implements IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(Hive.class);
    private static Hive INSTANCE = new Hive();
    private final int QUEUE_SIZE = configGetOptionalInteger("hive.maxThreads").orElse(5);
    private Queue<ContractThread> threadQueue;
    private Collection<ContractThread> threadsActive;
    private Collection<ContractThread> threadsAll;

    /*
    CONSTRUCTOR
    */

    private Hive() {
        threadQueue = new ArrayDeque<>();
        threadsActive = new ArrayList<>();
        threadsAll = new ArrayList<>();
    }
    
    /*
    STATIC METHODS
    */

    public static Hive getInstance() {
        return INSTANCE;
    }

    public static void main(String[] args) {
        IConfigurable config = new ConfigStub();
        EifTestList testList = new EifTestList();

        //Create Name for build
        final String buildName = "[Hive] " + TimeKeeper.getInstance().getStartTimeISO();

        // Get path and name of CSV Test Data
        String csvFileNameList = config.configGetOptionalString("hive.data.csv").orElse("unknown");

        for (String csvFileName : csvFileNameList.split(",")) {
            csvFileName = StringUtils.appendIfMissing(csvFileName.trim(), ".csv");
            log.info("loading csv file: '{}'", csvFileName);

            // Load CSV Test Data
            testList.loadCSV(csvFileName);
        }

        // Add all tests from CSV Test Data
        for (EifTestData data : testList) {
            log.info("creating flow for {}", data.getCommonName());
            Hive.getInstance().addToQueue(new ContractThread(buildName, data));
        }

        //Print all the tests in the queue
        List<String> list = Hive.getInstance().getQueueNames();
        log.info("{}", list);

        // Start and Wait until complete
        Hive.getInstance().start().waitTillComplete();

        // Perform Rerun?
        if (config.configGetBoolean("hive.rerunFailed")) {
            List<ContractThread> failedThreads = Hive.getInstance().threadsAll.stream().filter(t -> t.getContractId() == null).collect(Collectors.toList());
            log.info("performing rerun on {}", failedThreads);
            Hive.getInstance().rerunFailedThreads(buildName, failedThreads).waitTillComplete();
        }

        // Save Report
        if (config.configGetBoolean("hive.saveReport")) {
            CukeReport report = Hive.getInstance().getCukeReport();
            Gson gson = new GsonBuilder()
                    .registerTypeHierarchyAdapter(List.class, new ListAdapter())
                    .setPrettyPrinting()
                    .create();

            // Find path to report
            StringBuilder path = new StringBuilder();
            path.append(config.configGetOptionalString("hive.reportLocation").orElse("output/report/"));
            if (!path.toString().endsWith("/")) {
                path.append("/");
            }

            // Find name of report
            String fileName = config.configGetOptionalString("hive.reportName").orElse("jsonreport").replaceAll(" ", "_");
            fileName = StringUtils.appendIfMissing(fileName, ".json");

            // Try to save report
            try {
                FileHandler.getInstance().saveFile(path + fileName, gson.toJson(report));
            } catch (Exception e) {
                e.printStackTrace();
            }

            // Try to save contract ids
            String ids = String.join("\n", Hive.getInstance().getContractIds());
            try {
                FileHandler.getInstance().saveFile(path + "contractIds.txt", ids);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        log.info("Contract IDs: {}", Hive.getInstance().getContractIds());


    }
    
    /*
    CLASS METHODS
    */

    /**
     * Add a thread to the queue
     *
     * @param contractThread thread to add
     * @return this
     */
    public Hive addToQueue(ContractThread contractThread) {
        threadQueue.offer(contractThread);
        threadsAll.add(contractThread);
        return this;
    }

    /**
     * Start hive's threads. Will return once all threads have been started, but not finished.
     *
     * @return this
     */
    public Hive start() {
        while (!threadQueue.isEmpty()) {
            ContractThread nextThread = threadQueue.poll();

            log.info("waiting to add {} to queue", nextThread);

            // Wait until a slot becomes available
            while (threadsActive.size() >= QUEUE_SIZE) {
                // Remove any terminated mangers
                threadsActive.removeIf(m -> m.getState() == Thread.State.TERMINATED);
            }

            // start next managers
            nextThread.start();

            // add manager to active list
            threadsActive.add(nextThread);

            //With more than 5 threads, enable a staggering
            if (threadsActive.size() > 5) {
                //Wait a random amount of time, between 1 to 5 minutes
//                long sleepTime = (long) Math.min(240_000, Math.random() * 240_000 + 30_000);
                long sleepTime = (long) 10_000 * threadsActive.size();
                try {
                    Thread.sleep(sleepTime);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                } finally {
                    log.info("staggered for {}", sleepTime);
                }
            } else {
                try {
                    Thread.sleep(10_000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }

        return this;
    }

    /**
     * Wait until all threads registered to hive have finished.
     *
     * @return this
     */
    public Hive waitTillComplete() {
        log.info("waiting until {} threads finish.", threadsActive.size());
        while (threadsActive.size() > 0) {
            // Remove any terminated mangers
            threadsActive.removeIf(m -> m.getState() == Thread.State.TERMINATED);
        }

        return this;
    }

    public Hive rerunFailedThreads(String buildName, List<ContractThread> failedThreads) {
        for (ContractThread thread : failedThreads) {
            ContractFlow failedFlow = thread.getContractFlow().deepCopy();
            failedFlow.setName("[rerun] " + failedFlow.getName());
            this.addToQueue(new ContractThread(failedFlow, buildName));
        }

        return this.start();
    }

    /**
     * Get a Cucumber Report that can be read by Jenkins
     *
     * @return Cucumber Report
     */
    public CukeReport getCukeReport() {
        CukeReport report = new CukeReport();
        Feature.Builder builder = new Feature.Builder();

        // Add basic Feature values
        builder.withName("Hive Parallel Testing");
        builder.withDescription("Runs parallel Exari Contract Authoring");
        builder.withId("hive");
        builder.withUri("hive.feature");
        builder.withLine(1);

        // Add Scenarios
        List<Scenario> scenarios = this.threadsAll.stream().map(ContractThread::getScenarioReport).collect(Collectors.toList());
        builder.withElements(scenarios);

        report.add(builder.build());
        return report;
    }

    public List<String> getContractIds() {
        return threadsAll.stream().map(t -> t.getName() + "::" + t.getContractId()).collect(Collectors.toList());
    }

    /**
     * Get name of all threads
     *
     * @return List of thread names
     */
    public List<String> getQueueNames() {
        return this.threadQueue.stream().map(Thread::getName).collect(Collectors.toList());
    }
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */

    public static class ListAdapter implements JsonSerializer<List<String>> {
        @Override
        public JsonElement serialize(List<String> src, Type typeOfSrc, JsonSerializationContext context) {
            if (src == null || src.isEmpty()) // exclusion is made here
                return null;

            JsonArray array = new JsonArray();

            for (Object child : src) {
                JsonElement element = context.serialize(child);
                array.add(element);
            }

            return array;
        }
    }
}
