package exari_test.hive;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import exari_test.eif.data.EifTestData;
import exari_test.eif.data.EifTestList;
import exari_test.eif.flow.ContractFlow;
import exari_test.eif.flow.IContractFlowLoader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.TimeKeeper;
import util.configuration.IConfigurable;

import java.util.*;
import java.util.stream.Collectors;

public class Hive implements IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(Hive.class);
    private final int QUEUE_SIZE = configGetOptionalInteger("hive.maxThreads").orElse(5);
    private static Hive INSTANCE = new Hive();
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
        EifTestList testList = new EifTestList();
        testList.loadCSV("eif-basic-central-list.csv");
        IContractFlowLoader loader = new IContractFlowLoader() {
        };
        final String buildName = "[Hive] " + TimeKeeper.getInstance().getStartTimeISO();

        for (EifTestData data : testList) {
            log.info("creating flow for {}", data.getCommonName());
            ContractFlow flow = loader.loadFlowContract(data.getEifFile());
            flow.connectEifTestData(data);
            Hive.getInstance().addToQueue(new ContractThread(flow, buildName));
        }

        List<String> list = Hive.getInstance().getQueueNames();
        log.info("{}", list);

        Hive.getInstance().start().waitTillComplete();
    }
    
    /*
    CLASS METHODS
    */

    public Hive addToQueue(ContractThread contractThread) {
        threadQueue.offer(contractThread);
        threadsAll.add(contractThread);
        return this;
    }

    public Hive start() {
        while (!threadQueue.isEmpty()) {
            ContractThread nextThread = threadQueue.poll();

            log.info("waiting to add {} to queue", nextThread);

            // Wait until a slot becomes available
            while (threadsActive.size() >= QUEUE_SIZE) {
                // Remove any terminated mangers
//                log.info("thread states: {}", threadsActive.stream().map(Thread::getState).collect(Collectors.toList()));
                threadsActive.removeIf(m -> m.getState() == Thread.State.TERMINATED);
            }

            // start next managers
            nextThread.start();

            // add manager to active list
            threadsActive.add(nextThread);
        }

        return this;
    }

    public Hive waitTillComplete() {
        log.info("waiting until ");
        while (threadsActive.size() > 0) {
            // Remove any terminated mangers
//            log.info("thread states: {}", threadsActive.stream().map(Thread::getState).collect(Collectors.toList()));
            threadsActive.removeIf(m -> m.getState() == Thread.State.TERMINATED);
        }

        return this;
    }

    public JsonElement getCompletedReport() {
        JsonArray array = new JsonArray();

        for (ContractThread thread : threadsAll) {
            array.add(thread.getJsonReport());
        }

        return array;
    }

    public List<String> getQueueNames() {
        return this.threadQueue.stream().map(Thread::getName).collect(Collectors.toList());
    }
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
