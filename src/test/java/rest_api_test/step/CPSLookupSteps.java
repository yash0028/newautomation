package rest_api_test.step;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

import static io.restassured.RestAssured.given;

/**
 * Created by dtimaul on 1/15/19.
 */
public class CPSLookupSteps implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(CPSLookupSteps.class);

    private static final String EVENT_GATEWAY_ENDPOINT = "http://event-gateway-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String EVENT_GATEWAY_CONTRACT_INSTALLED = "/v1.0/events/contract-installed";
    private static final String FALLOUT_SERVICE_ENDPOINT = "https://fallout-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String FALLOUT_SERVICE_CONTRACT_DETAILS = "/v1.0/contract-details/";

    private RequestSpecification eventGatewayRequest;
    private Response eventGatewayResponse;
    private Response falloutResponse;
    private JsonObject payload = new JsonObject();


    // US1337392 [Continued] [Continued] CPS lookup API Layer-7 implementation

    @When("^COSMOS updater requires additional information$")
    public void cosmosUpdaterRequiresAdditionalInformation() throws Throwable {
        // Do nothing here
    }

    @And("^COSMOS updater waits until NDB updates are complete$")
    public void cosmosUpdaterWaitsUntilNDBUpdatesAreComplete() throws Throwable {
        // Do nothing here
    }

    @And("^COSMS gets notified the NDB request returns valid values$")
    public void cosmsGetsNotifiedTheNDBRequestReturnsValidValues() throws Throwable {
        // Do nothing here
    }

    @Then("^The CPS Lookup API will respond with valid NDB values$")
    public void theCPSLookupAPIWillRespondWithValidNDBValues() throws Throwable {
        // Do nothing here
    }

    @And("^The COSMOS DIV is \"([^\"]*)\" and Contract package # is \"([^\"]*)\"$")
    public void theCOSMOSDIVIsAndContractPackageIs(String arg0, String arg1) throws Throwable {
        String contractNumber = "23134405";

        // Make a POST request to the event gateway API with the contract number
        // and get back the transaction status number
        payload.addProperty("eventName", "ContractInstalled");
        payload.addProperty("userId", "QE Test three");
        payload.addProperty("timestamp", "1533137086203");
        payload.addProperty("contractId", contractNumber);
        payload.addProperty("transactionId", " ");
        payload.addProperty("orderId", "");

        // send payload
        eventGatewayRequest = given().baseUri(EVENT_GATEWAY_ENDPOINT).header("Content-Type", "application/json").body(payload);
        eventGatewayResponse = eventGatewayRequest.post(EVENT_GATEWAY_CONTRACT_INSTALLED);

        // Verify successful HTTP response
        Assert.assertEquals("HTTP Status code 200 was not rerturned", 200, eventGatewayResponse.getStatusCode());

        // retrieve transaction id
        JsonElement gatewayResultElement = parseJsonElementResponse(eventGatewayResponse);
        String transactionId = gatewayResultElement.getAsJsonObject().get("transactionId").getAsString();
        log.info("Transaction id from response: " + transactionId);

        // Make a GET request to the fallout service with the transaction id
        // to get the OCM json


        // Verify OCM Json contains "marketDivRegion": "DIV" and "contractOrPackage": "22503"


    }
}
