package exari_test.hive;

import exari_test.eif.data.EifTestData;
import exari_test.eif.flow.ContractFlow;
import exari_test.eif.flow.IContractFlowLoader;
import exari_test.eif.report.After;
import exari_test.eif.report.Before;
import exari_test.eif.report.Scenario;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.ProtoStep;
import ui_test.util.SauceLabs;
import ui_test.util.UiConfigHelper;
import util.configuration.IConfigurable;

import java.util.Collections;
import java.util.List;

/**
 * Contract Thread handles creating SauceLabs connections and the creation of the contract.
 */
public class ContractThread extends Thread implements IConfigurable, IContractFlowLoader {
    private static final Logger log = LoggerFactory.getLogger(ContractThread.class);

    private ContractFlow contractFlow;
    private SauceLabs.Builder builder;

    private String sauceLink;

    /*
    CONSTRUCTOR
    */

    /**
     * Create Contract Thread with given flow and build name
     *
     * @param flow Flow containing EIF data for the contract
     * @param buildName name of build for SauceLabs
     */
    public ContractThread(ContractFlow flow, String buildName) {
        super(flow.getName());
        this.contractFlow = flow;

        builder = UiConfigHelper.getInstance().getDefaultSauceBuilder(flow.getName()).withBuildName(buildName);
        builder.withBrowserName("chrome");
    }

    /**
     * Create Contract Thread with given build name and Test Data
     * Test Data is used to create a parametric SauceLabs Contract
     * @param buildName name of build for SauceLabs
     * @param data EIF test data for the contract
     */
    public ContractThread(String buildName, EifTestData data) {
        super(data.getCommonName());

        this.contractFlow = loadFlowContract(data.getEifFile());
        this.contractFlow.connectEifTestData(data);

        builder = UiConfigHelper.getInstance().getParametricSauceBuilder(this.contractFlow.getName(), null).withBuildName(buildName);
        builder.loadPropertyMap(data.getDriverParam());

    }
    
    /*
    CLASS METHODS
    */

    /**
     * Creates a contract in Exari using EIF.
     */
    @Override
    public void run() {
        super.run();

        //Create SauceLabs Instance
        SauceLabs sauceLabs = builder.build();
        this.sauceLink = sauceLabs.getSauceLink();
        log.info("SauceLabs Test Video: {}", this.sauceLink);


        //Pass Driver to new ProtoStep
        ProtoStep protoStep = new ProtoStep(sauceLabs.getDriver());
        //Set the flow of ProtoStep
        protoStep.setFlow(contractFlow);

        // Start Contract

        try {
            if (!configGetOptionalBoolean("hive.demoMode").orElse(false)) {
                protoStep.loginHome().setSite().authorContract().finalCapture();
            } else {
                protoStep.loginHome().setSite();
            }

            // TODO add new way to assert test passed

            sauceLabs.testPassed();
        } catch (AssertionError e) {
            sauceLabs.testFailed();
            log.error("Assertion error:", e);
        } catch (Exception e) {
            log.error("Error:", e);
        } finally {
            sauceLabs.close();
        }
    }

    /**
     * Get the report of the contract's creation
     * @return Scenario report
     */
    public Scenario getScenarioReport() {
        Scenario.Builder builder = new Scenario.Builder();

        // Add basic scenario values
        builder.withId("hive;" + contractFlow.getName().replaceAll(" ", "-"));
        builder.withName(contractFlow.getName());
        builder.withLine(1);


        // Add Before
        builder.withBefore(getBefore());

        // Add Steps
        builder.withSteps(contractFlow.getReport().getStepsReport());

        // Add After
        builder.withAfter(getAfter());

        return builder.build();
    }

    /*
    HELPER METHODS
    */


    /**
     * Create a cucumber before step to be used by the report
     * @return Before report
     */
    private List<Before> getBefore() {
        Before.Builder builder = new Before.Builder();

        // Add Sauce Link
        builder.withOutput(Collections.singletonList("SauceLabs Test Video: " + this.sauceLink));

        return Collections.singletonList(builder.build());
    }

    /**
     * Createa a cucumber after step to be used by the report
     * @return After report
     */
    private List<After> getAfter() {
        After.Builder builder = new After.Builder();

        // Add usage report
        builder.withOutput(Collections.singletonList("Usage Report" + this.contractFlow.getUsageReport(true).toString()));

        return Collections.singletonList(builder.build());
    }

    
    /*
    UTILITY CLASS
    */
}
