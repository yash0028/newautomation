package exari_test.hive;

import exari_test.eif.flow.ContractFlow;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.ProtoStep;
import ui_test.util.SauceLabs;
import ui_test.util.UiConfigHelper;
import util.configuration.IConfigurable;

public class ContractThread extends Thread implements IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(ContractThread.class);

    private ContractFlow contractFlow;
    private SauceLabs.Builder builder;

    private SauceLabs sauceLabs;
    private ProtoStep protoStep;

    /*
    CONSTRUCTOR
    */

    public ContractThread(ContractFlow flow, String buildName) {
        super(flow.getName());
        builder = UiConfigHelper.getInstance().getDefaultSauceBuilder(flow.getName()).withBuildName(buildName);
        builder.withBrowserName("chrome");
        this.contractFlow = flow;
    }
    
    /*
    CLASS METHODS
    */

    @Override
    public void run() {
        super.run();

        //Create SauceLabs Instance
        this.sauceLabs = builder.build();
        log.info("SauceLabs Test Video: {}", this.sauceLabs.getSauceLink());


        //Pass Driver to new ProtoStep
        this.protoStep = new ProtoStep(sauceLabs.getDriver());
        //Set the flow of ProtoStep
        this.protoStep.setFlow(contractFlow);

        // Start Contract
        this.protoStep.loginHome().setSite().authorContract().finalCapture();
    }

    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
