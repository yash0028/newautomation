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
import rest_api_test.api.eventgateway.IEventGatewayInteract;
import rest_api_test.api.eventgateway.model.BusinessEvent;
import rest_api_test.api.eventgateway.model.BusinessEventType;
import rest_api_test.api.fallout.IFalloutContractControllerInteract;
import rest_api_test.api.fallout.model.contract.ContractModel;
import rest_api_test.api.transaction.model.TransactionId;
import rest_api_test.util.IRestStep;
import util.TimeKeeper;

import static io.restassured.RestAssured.given;

/**
 * Created by dtimaul on 1/15/19.
 */
public class CPSLookupSteps implements IRestStep, ISharedValueReader, IEventGatewayInteract, IFalloutContractControllerInteract {
    private static final Logger log = LoggerFactory.getLogger(CPSLookupSteps.class);

    private static final String ENDPOINT_EVENT_GATEWAY = "http://event-gateway-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_EVENT_GATEWAY_CONTRACT_INSTALLED = "/v1.0/events/contract-installed";
    private static final String ENDPOINT_FALLOUT_SERVICE = "https://fallout-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_FALLOUT_SERVICE_CONTRACT_DETAILS = "/v1.0/contract-details/";

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

    @And("^COSMOS gets notified that the NDB request returns valid values$")
    public void cosmosGetsNotifiedThatTheNDBRequestReturnsValidValues() throws Throwable {
        // Do nothing here
    }

    @Then("^The CPS Lookup API will respond with valid NDB values$")
    public void theCPSLookupAPIWillRespondWithValidNDBValues() throws Throwable {
        // Do nothing here
    }

    @And("^The COSMOS DIV is \"([^\"]*)\" and Contract package # is \"([^\"]*)\"$")
    public void verifyDivAndPackageNumber(String expectedMarketDivRegion, String expectedPackageNumber) throws Throwable {

        // get the contract id from the contract that was created by Selenium during the previous steps.
        String contractNumber = getSharedString("contractNumber").orElse(" ");

        BusinessEvent.Builder eventBuilder = new BusinessEvent.Builder();
        eventBuilder.withContractId(contractNumber);
        eventBuilder.withEventName(BusinessEventType.CONTRACT_INSTALLED);
        eventBuilder.withTimestamp(TimeKeeper.getInstance().getCurrentEpochSeconds());
        eventBuilder.withUserId("clmqe1");

        // send payload
        TransactionId tid = eventGatewayPostContractInstalledEvent(eventBuilder.build());

        // Verify successful HTTP response
        Assert.assertEquals(200, tid.getResponse().getStatusCode());

        // retrieve transaction id
        JsonElement gatewayResultElement = parseJsonElementResponse(eventGatewayResponse);
        String transactionId = gatewayResultElement.getAsJsonObject().get("transactionId").getAsString();
        log.trace("Transaction id from response: {}", transactionId);

        // Make a GET request to the fallout service with the transaction id
        falloutRequest = given().baseUri(ENDPOINT_FALLOUT_SERVICE).header("Content-Type", "application/json").relaxedHTTPSValidation();
        falloutResponse = falloutRequest.get(RESOURCE_FALLOUT_SERVICE_CONTRACT_DETAILS + transactionId);
        ContractModel model = falloutQueryContractModel(transactionId);
        Assert.assertEquals(200, model.getResponse().getStatusCode());

        // Verify OCM Json contains "marketDivRegion": "DIV" and "contractOrPackage": "22503"
        boolean marketDivRegionFound = model.getFeeScheduleDetails().stream().anyMatch(f -> f.getMarketDivRegion().equals(expectedMarketDivRegion));
        boolean packageNumberFound = model.getFeeScheduleDetails().stream().anyMatch(f -> f.getContractOrPackage().equals(expectedPackageNumber));

        Assert.assertTrue("The specified marketDivRegion was not found", marketDivRegionFound);
        Assert.assertTrue("The specified package number was not found", packageNumberFound);
    }

}
