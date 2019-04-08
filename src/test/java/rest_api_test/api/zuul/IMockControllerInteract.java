package rest_api_test.api.zuul;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface IMockControllerInteract {
    Logger log = LoggerFactory.getLogger(IMockControllerInteract.class);
    
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
