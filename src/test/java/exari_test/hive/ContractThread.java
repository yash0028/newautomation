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

    private SauceLabs sauceLabs;
    private ProtoStep protoStep;

    private String sauceLink;

    /*
    CONSTRUCTOR
    */

    /**
     * Create Contract Thread with given flow and build name
     *
     * @param flow
     * @param buildName
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
     * @param buildName
     * @param data
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
        this.sauceLabs = builder.build();
        this.sauceLink = this.sauceLabs.getSauceLink();
        log.info("SauceLabs Test Video: {}", this.sauceLink);


        //Pass Driver to new ProtoStep
        this.protoStep = new ProtoStep(sauceLabs.getDriver());
        //Set the flow of ProtoStep
        this.protoStep.setFlow(contractFlow);

        // Start Contract

        try {
            if (!configGetOptionalBoolean("hive.demoMode").orElse(false)) {
                this.protoStep.loginHome().setSite().authorContract().finalCapture();
            } else {
                this.protoStep.loginHome().setSite();
            }

            assert this.contractFlow.getReport().getFailureStage() >= 100;

            this.sauceLabs.testPassed();
        } catch (AssertionError e) {
            this.sauceLabs.testFailed();
        } catch (Exception e) {

        } finally {
            this.sauceLabs.close();
        }
    }

    /**
     * Get the report of the contract's creation
     * @return
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
     * @return
     */
    private List<Before> getBefore() {
        Before.Builder builder = new Before.Builder();

        // Add Sauce Link
        builder.withOutput(Collections.singletonList("SauceLabs Test Video: " + this.sauceLink));


        return Collections.singletonList(builder.build());
    }

    /**
     * Createa a cucumber after step to be used by the report
     * @return
     */
    private List<After> getAfter() {
        After.Builder builder = new After.Builder();

        return Collections.singletonList(builder.build());

    }

    
    /*
    UTILITY CLASS
    */
}
