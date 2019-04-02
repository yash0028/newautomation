package rest_api_test.util.eventgateway;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface IEventGatewayInteract {
    Logger log = LoggerFactory.getLogger(IEventGatewayInteract.class);
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    default String eventGatewayPostContractInstalledEvent(String contractId) {
        return EventGatewayHelper.getInstance().postContractInstalledEvent(contractId);
    }
    
    /*
    UTILITY CLASS
    */
}
