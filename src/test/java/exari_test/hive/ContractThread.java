package exari_test.hive;

import exari_test.eif.flow.ContractFlow;
import exari_test.eif.flow.IContractFlowLoader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.SauceLabs;
import ui_test.util.UiConfigHelper;
import util.configuration.IConfigurable;

public class ContractThread extends Thread implements IConfigurable, IContractFlowLoader {
    private static final Logger log = LoggerFactory.getLogger(ContractThread.class);

    private ContractFlow flow;
    private SauceLabs sauceLabs;

    /*
    CONSTRUCTOR
    */

    ContractThread(String eifFileName) {
        flow = loadFlowContract(eifFileName);
        sauceLabs = UiConfigHelper.getInstance().getDefaultSauceBuilder(flow.getName()).build();
    }
    
    /*
    CLASS METHODS
    */
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
