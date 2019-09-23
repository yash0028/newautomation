package rest_api_test.api.fallout;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface IFalloutInteract extends
        IFalloutContractControllerInteract,
        IFalloutWorkObjectControllerInteract {
    Logger log = LoggerFactory.getLogger(IFalloutInteract.class);
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
