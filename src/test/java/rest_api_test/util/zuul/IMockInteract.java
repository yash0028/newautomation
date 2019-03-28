package rest_api_test.util.zuul;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface IMockInteract {
    Logger log = LoggerFactory.getLogger(IMockInteract.class);
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    default boolean mockSetContractIdFlag(String contractId) {
        return MockControllerHelper.getInstance().set(contractId);
    }

    default boolean mockClearFlag() {
        return MockControllerHelper.getInstance().clear();
    }
    
    /*
    UTILITY CLASS
    */
}
