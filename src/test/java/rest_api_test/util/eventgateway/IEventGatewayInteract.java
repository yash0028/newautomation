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

    /**
     * Submit a ContractInstalled event to Event Gateway
     * maps to POST /v1.0/events/{businessEventType}
     *
     * @param contractId the contract id to submit
     * @return transaction id
     */
    default String eventGatewayPostContractInstalledEvent(String contractId) {
        return EventGatewayHelper.getInstance().postContractInstalledEvent(contractId);
    }
    
    /*
    UTILITY CLASS
    */
}
