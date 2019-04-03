package rest_api_test.step;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

import static io.restassured.RestAssured.given;

/***
 *** Created by vkyrasa on 3/26/19
 ***/

public class ContractStatusApiSteps implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(TransactionSteps.class);

    private final String ENDPOINT = "http://contract-status-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private final String RESOURCE_CONTRACT_STATUS = "/v1.0/contract-status/";

    private final String TX_ENDPOINT = "https://transaction-status-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private final String RESOURCE_TRANSACTION_STATUS = "/v1.0/transactions/results";

    private final String FALLOUT_ENDPOINT = "https://fallout-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private final String RESOURCE_CONTRACT_DETAILS = "/v1.0/contract-details";
    private final String RESOURCE_CONTRACT_SUMMARIES = "/v1.0/contract-summaries/work-objects";

    private RequestSpecification request;
    private Response response;
    private JsonObject payload;

    private String contractId;
    private String txId;

    @Given("a new contract exists in Exari that has just become {string}")
    public void aNewContractExistsInExariThatHasJustBecomeActive(String contractStatus) {

        //TODO:
        // make this use the FalloutHelper


    }

    @When("the contract has been successfully installed")
    public void theContractHasBeenSuccessfullyInstalled() {

        // INTERFACE TIME

        // query txStatus API for list of successful installs
        payload = new JsonObject();
        payload.addProperty("offset", 0);
        payload.addProperty("pageNumber", 0);
        payload.addProperty("pageSize", 1);
        payload.addProperty("sortDirection","DESC");
        JsonArray resultStatus = new JsonArray();
        resultStatus.add("SUCCESS");
        payload.add("resultStatus", resultStatus);
        JsonArray sortFields = new JsonArray();
        sortFields.add("id");
        payload.add("sortFields", sortFields);

        log.trace(payload.toString());

        //send payload
        RestAssured.useRelaxedHTTPSValidation();
        request = given().baseUri(TX_ENDPOINT).header("Content-Type", "application/json").body(payload);
        response = request.post(RESOURCE_TRANSACTION_STATUS);

        JsonElement result = parseJsonElementResponse(response);

        txId = result.getAsJsonObject().get("results").getAsJsonArray()
                .get(0).getAsJsonObject()
                .get("transactionId").getAsString();

        // query fallout to get contract ID
        response = given().baseUri(FALLOUT_ENDPOINT).get(RESOURCE_CONTRACT_DETAILS.concat("/").concat(txId));
        result = parseJsonElementResponse(response);
        contractId = result.getAsJsonObject().get("contractID").getAsString();
    }

    @And("a call to the Optum Transaction Status with the Exari contract ID and Exari Transaction ID for the install contract event")
    public void aCallToTheOptumTransactionStatusWithTheExariContractIDAndExariTransactionIDForTheInstallContractEvent() {
        // finally check
        log.trace("Checking contract ID: " + contractId);
        response = given().baseUri(ENDPOINT).get(RESOURCE_CONTRACT_STATUS.concat(contractId));
        JsonElement result = parseJsonElementResponse(response);

        Assert.assertEquals(200, response.getStatusCode());
    }

    @Then("the Optum service should return the status of that installation transaction as {string}")
    public void theOptumServiceShouldReturnTheStatusOfThatInstallationTransactionAs(String expectedStatus) {
        String txStatus = "";
        String txResult = "";
        switch (expectedStatus) {
            case "Successful":
                txResult = "SUCCESS";
                txStatus = "ENDED";
                break;
            case "InProgress":
                txResult = "PENDING";
                txStatus = "MANUAL_HOLD";
                break;
            case "Partial Success":
                txResult = "PENDING";
                txStatus = "MANUAL_HOLD_TYPE_2";
                break;
        }
        JsonArray results = parseJsonElementResponse(response).getAsJsonArray();
        JsonElement result = results.get(0);

        for(JsonElement result_ : results){
            String str = result_.getAsJsonObject().get("transactionStatus").getAsString();
            if(str.equals(txStatus)){
                result = result_;
                break;
            }
        }

        Assert.assertEquals(txStatus, result.getAsJsonObject().get("transactionStatus").getAsString());
        Assert.assertEquals(txResult, result.getAsJsonObject().get("transactionResult").getAsString());
    }

    @When("the contract's installation process generates a Type {int} Contract Master error")
    public void theContractSInstallationProcessGeneratesATypeContractMasterError(int arg0) {
        RestAssured.useRelaxedHTTPSValidation();
        response = given().baseUri(FALLOUT_ENDPOINT).get(
                RESOURCE_CONTRACT_SUMMARIES.concat("/").concat("TYPE_1_ERROR_CONTRACT_MASTER"));

        JsonElement result = parseJsonElementResponse(response);

        result.getAsJsonObject();
        JsonArray results = result.getAsJsonObject().get("content").getAsJsonArray();

        contractId = results
                .get((results.size() - 1))
                .getAsJsonObject()
                .get("contractId").getAsString();

    }

    @When("the contract's installation process generates a Type {int} error for {int} of N Contract Line Adds")
    public void theContractSInstallationProcessGeneratesATypeErrorForOfNContractLineAdds(int arg0, int arg1) {
        // TODO:
        // this will work, but contract-status-api needs to be aware of contracts before it does
        // once the DB is cleared and contracts flow thru again this can be automated
        // for now it is manual

        RestAssured.useRelaxedHTTPSValidation();
        response = given().baseUri(FALLOUT_ENDPOINT).get(
                RESOURCE_CONTRACT_SUMMARIES.concat("/").concat("TYPE_2_ERROR").concat("?page=0&sort=timestamp,desc"));

        JsonElement result = parseJsonElementResponse(response);
        result.getAsJsonObject();

        result = parseJsonElementResponse(response);
        JsonArray results = result.getAsJsonObject().get("content").getAsJsonArray();

        contractId = results
                .get(0)
                .getAsJsonObject()
                .get("contractId").getAsString();
    }
}
