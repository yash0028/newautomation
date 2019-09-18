package rest_api_test.api.eventgateway;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.eventgateway.model.BusinessEvent;
import rest_api_test.api.eventgateway.model.BusinessEventType;

public interface IEventGatewayInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IEventGatewayInteract.class);

    String RESOURCE_EVENTS = "/v1.0/events/{}";
    String RESOURCE_EVENT_GATEWAY_CONTRACT_INSTALLED = "/v1.0/events/contract-installed";


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
        BusinessEvent.Builder eventBuilder = new BusinessEvent.Builder();
        eventBuilder.withContractId(contractId);
        eventBuilder.withEventName(BusinessEventType.CONTRACT_INSTALLED);

        String r = RESOURCE_EVENTS.replace("{}", BusinessEventType.CONTRACT_INSTALLED.url);
        Response response = EventGatewayHelper.getInstance().doBasicPost(r, eventBuilder.build());

        return EventGatewayHelper.getInstance().getTransactionId(response).getTransactionId();
    }
    
    /*
    UTILITY CLASS
    */
}
