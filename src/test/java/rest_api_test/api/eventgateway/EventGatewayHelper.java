package rest_api_test.api.eventgateway;

import com.google.gson.JsonElement;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;
import rest_api_test.api.eventgateway.model.BusinessEvent;
import rest_api_test.api.eventgateway.model.BusinessEventType;
import rest_api_test.api.transaction.model.TransactionId;
import rest_api_test.util.IRestStep;

import static io.restassured.RestAssured.given;

public class EventGatewayHelper extends AbstractRestApi implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(EventGatewayHelper.class);
    private static final String ENDPOINT_DEV = "http://event-gateway-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "http://event-gateway-api-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_EVENTS = "/v1.0/events/";//add business event type to end

    private static EventGatewayHelper INSTANCE = new EventGatewayHelper();

    /*
    CONSTRUCTOR
    */

    private EventGatewayHelper() {
        super();
    }
    
    /*
    STATIC METHODS
    */

    public static EventGatewayHelper getInstance() {
        return INSTANCE;
    }
    
    /*
    CLASS METHODS
    */

    /**
     * Submit a ContractInstalled event to Event Gateway
     * maps to POST /v1.0/events/{businessEventType}
     *
     * @param contractId the contract id to submit
     * @return transaction id
     */
    String postContractInstalledEvent(String contractId) {
        BusinessEvent.Builder eventBuilder = new BusinessEvent.Builder();
        eventBuilder.withContractId(contractId);
        eventBuilder.withEventName(BusinessEventType.CONTRACT_INSTALLED);

        BusinessEvent event = eventBuilder.build();

        RequestSpecification request = given().baseUri(getEndpoint())
                .header("Content-Type", "application/json")
                .body(gson.toJson(event));

        String path = RESOURCE_EVENTS + BusinessEventType.CONTRACT_INSTALLED.url;

        Response response = request.post(path);
        JsonElement jsonElement = parseJsonElementResponse(response);

        TransactionId tid = gson.fromJson(jsonElement, TransactionId.class);

        return tid.getTransactionId();
    }

    TransactionId getTransactionId(Response response) {
        TransactionId tid = gson.fromJson(parseJsonElementResponse(response), TransactionId.class);
        tid.setResponse(response);
        return tid;
    }
    
    /*
    HELPER METHODS
    */

    @Override
    protected String getEndpoint() {
        switch (env) {
            case stage:
            case test:
                return ENDPOINT_TEST;
            case dev:
            default:
                return ENDPOINT_DEV;
        }
    }
    
    /*
    UTILITY CLASS
    */

}
