package rest_api_test.util.eventgateway;

import com.google.gson.JsonElement;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.AbstractRestApi;
import rest_api_test.util.IRestStep;
import rest_api_test.util.datastructure.gson.eventgateway.BusinessEvent;
import rest_api_test.util.datastructure.gson.transaction.TransactionId;
import rest_api_test.util.datastructure.type.BusinessEventType;

import static io.restassured.RestAssured.given;

public class EventGatewayHelper extends AbstractRestApi implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(EventGatewayHelper.class);
    private static final String ENDPOINT_TEST = "https://event-gateway-api-clm-test.ocp-ctc-dmz-nonprod.optum.com";
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

        Response response = request.post(RESOURCE_EVENTS + BusinessEventType.CONTRACT_INSTALLED.eventName);
        JsonElement jsonElement = parseJsonElementResponse(response);

        TransactionId tid = gson.fromJson(jsonElement, TransactionId.class);

        return tid.getTransactionId();
    }
    
    /*
    HELPER METHODS
    */

    @Override
    protected String getEndpoint() {
        return this.useDev ? "" : ENDPOINT_TEST;
    }
    
    /*
    UTILITY CLASS
    */

}
