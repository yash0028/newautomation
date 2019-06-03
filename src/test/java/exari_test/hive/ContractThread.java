package exari_test.hive;

import exari_test.eif.flow.ContractFlow;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.ProtoStep;
import ui_test.util.SauceLabs;
import ui_test.util.UiConfigHelper;
import util.configuration.IConfigurable;

import java.util.Optional;

public class ContractThread extends Thread implements IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(ContractThread.class);

    private SauceLabs sauceLabs;
    private ProtoStep step;
    private String contractId;

    /*
    CONSTRUCTOR
    */

    public ContractThread(ContractFlow flow) {
        super(flow.getName());
        sauceLabs = UiConfigHelper.getInstance().getDefaultSauceBuilder(flow.getName()).build();
        this.step = new ProtoStep(sauceLabs.getDriver());
        this.step.setFlow(flow);
    }
    
    /*
    CLASS METHODS
    */

    @Override
    public void run() {
        super.run();
//        this.contractId = this.step.loginHome().setSite().authorContract().finalCapture();
        this.step.loginHome().setSite();
    }

    public Optional<String> getContractId() {
        return Optional.ofNullable(contractId);
    }

    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
