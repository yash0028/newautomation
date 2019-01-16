package rest_api_test.step;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import general_test.util.ISharedValueReader;
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
public class CPSLookupSteps implements IRestStep, ISharedValueReader{
    private static final Logger log = LoggerFactory.getLogger(CPSLookupSteps.class);

    private static final String ENDPOINT_EVENT_GATEWAY = "http://event-gateway-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_EVENT_GATEWAY_CONTRACT_INSTALLED = "/v1.0/events/contract-installed";
    private static final String ENDPOINT_FALLOUT_SERVICE = "https://fallout-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_FALLOUT_SERVICE_CONTRACT_DETAILS = "/v1.0/contract-details";

    private RequestSpecification eventGatewayRequest;
    private RequestSpecification falloutRequest;
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
//        String contractNumber = getSharedString("contractNumber").orElse(" ");
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
        eventGatewayRequest = given().baseUri(ENDPOINT_EVENT_GATEWAY).header("Content-Type", "application/json").body(payload);
        eventGatewayResponse = eventGatewayRequest.post(RESOURCE_EVENT_GATEWAY_CONTRACT_INSTALLED);

        // Verify successful HTTP response
        Assert.assertEquals("HTTP Status code 200 was not rerturned", 200, eventGatewayResponse.getStatusCode());

        // retrieve transaction id
        JsonElement gatewayResultElement = parseJsonElementResponse(eventGatewayResponse);
        String transactionId = gatewayResultElement.getAsJsonObject().get("transactionId").getAsString();
        log.trace("Transaction id from response: {}", transactionId);

        // Make a GET request to the fallout service with the transaction id
        // to get the OCM json
        falloutRequest = given().baseUri(ENDPOINT_FALLOUT_SERVICE).header("Content-Type", "application/json").relaxedHTTPSValidation();
        falloutResponse = falloutRequest.get(RESOURCE_FALLOUT_SERVICE_CONTRACT_DETAILS + "/9eb2a03a-d7e5-4e6c-9212-99167bb127bf");
        Assert.assertEquals(200, falloutResponse.getStatusCode());

        // retrieve the OCM Json
        JsonElement falloutResultElement = parseJsonElementResponse(falloutResponse);
        String OCMJson = falloutResultElement.toString();
        log.trace("OCM JSON response: {}", OCMJson);

        // Verify OCM Json contains "marketDivRegion": "DIV" and "contractOrPackage": "22503"

    }
}
