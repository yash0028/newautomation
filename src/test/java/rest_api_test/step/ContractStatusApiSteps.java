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
    private final String RESOURCE_CONTRACT_STATUS = "/v1.0/contract-status";

    private final String TX_ENDPOINT = "https://transaction-status-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private final String RESOURCE_TRANSACTION_STATUS = "/v1.0/transactions/results";

    private final String FALLOUT_ENDPOINT = "https://fallout-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private final String RESOURCE_CONTRACT_DETAILS = "/v1.0/contract-details";
    private final String RESOURCE_CONTRACT_SUMMARIES = "/v1.0/contract-summaries/work-objects";

    private final String ENDPOINT_EVENT_GATEWAY = "http://event-gateway-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private final String RESOURCE_EVENT_GATEWAY_CONTRACT_INSTALLED = "/v1.0/events/contract-installed";

    private RequestSpecification request;
    private Response response;
    private JsonObject payload;

    private String exariStorageNodeId;
    private String contractId;
    private String timestamp = "";
    private String txId;

    @Given("a new contract exists in Exari that has just become {string}")
    public void aNewContractExistsInExariThatHasJustBecomeActive(String contractStatus) {

        //TODO:
        // make this use the FalloutHelper

    }

    @When("the contract has been successfully installed")
    public void theContractHasBeenSuccessfullyInstalled() {
        // query txStatus API for list of successful installs
        payload = new JsonObject();
        payload.addProperty("offset", 0);
        payload.addProperty("pageNumber", 0);
        payload.addProperty("pageSize", 10);
        payload.addProperty("sortDirection","DESC");
        JsonArray resultStatus = new JsonArray();
        resultStatus.add("SUCCESS");
        payload.add("resultStatus", resultStatus);
        JsonArray sortFields = new JsonArray();
        sortFields.add("timestamp");
        payload.add("sortFields", sortFields);

        log.info(payload.toString());

        //send payload
        RestAssured.useRelaxedHTTPSValidation();
        request = given().baseUri(TX_ENDPOINT).header("Content-Type", "application/json").body(payload);
        response = request.post(RESOURCE_TRANSACTION_STATUS);

        JsonElement tmpResult = parseJsonElementResponse(response);
        JsonArray results = tmpResult.getAsJsonObject().get("results").getAsJsonArray();
        JsonObject result;

        for(JsonElement res : results){
            result = res.getAsJsonObject();
            if(result.get("type").getAsString().matches("InstallContract")){
                // make sure we are only getting InstallContract events
                txId = result.get("transactionId").getAsString();
                break;
            }
        }

        // query fallout w/ txId to get contract ID
        response = given().baseUri(FALLOUT_ENDPOINT).get(RESOURCE_CONTRACT_DETAILS.concat("/").concat(txId));
        log.info(response.asString());
        result = parseJsonElementResponse(response).getAsJsonObject();
        contractId = result.getAsJsonObject().get("contractID").getAsString();

        // get exariTransactionID from contract-status-api
        response = given().log().everything().baseUri(ENDPOINT).get(RESOURCE_CONTRACT_STATUS
                .concat("/").concat(contractId));
        results = parseJsonElementResponse(response).getAsJsonArray();
        // manually get rid of duplicate events
        for(JsonElement res : results) {
            if(res.getAsJsonObject().get("transactionResult").getAsString().matches("SUCCESS")){
                exariStorageNodeId = res.getAsJsonObject().get("exari_StorageNodeID").getAsString();
                break;
            }
        }
    }

    @And("a call to the Optum Transaction Status with the Exari contract ID and Exari Transaction ID for the install contract event")
    public void aCallToTheOptumTransactionStatusWithTheExariContractIDAndExariTransactionIDForTheInstallContractEvent() {
        // call with Exari Storage Node ID
        if(timestamp.isEmpty()) {
            response = given().log().everything().baseUri(ENDPOINT).get(RESOURCE_CONTRACT_STATUS
                    .concat("/").concat(contractId).concat("/").concat(exariStorageNodeId));
        } else {
            response = given().log().everything().baseUri(ENDPOINT).get(RESOURCE_CONTRACT_STATUS
                    .concat("/").concat(contractId).concat("/").concat(exariStorageNodeId)
                    .concat("/".concat(timestamp)));
        }
        log.info(response.asString());
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
        JsonElement result = parseJsonElementResponse(response);

        Assert.assertEquals(txStatus, result.getAsJsonObject().get("transactionStatus").getAsString());
        Assert.assertEquals(txResult, result.getAsJsonObject().get("transactionResult").getAsString());
    }

    @When("the contract's installation process generates a Type {int} Contract Master error")
    public void theContractSInstallationProcessGeneratesATypeContractMasterError(int arg0) {
        // query fallout for Type 1 Contract Master errors
        RestAssured.useRelaxedHTTPSValidation();
        response = given().baseUri(FALLOUT_ENDPOINT).get(
                RESOURCE_CONTRACT_SUMMARIES.concat("/")
                        .concat("TYPE_1_ERROR_CONTRACT_MASTER")
                        .concat("?sort=timestamp,desc"));
        JsonElement result = parseJsonElementResponse(response);
        System.out.println(result.getAsJsonObject());
        JsonArray results = result.getAsJsonObject().get("content").getAsJsonArray();

        // Pull the first Type 1 contractId we see
        contractId = results.get(0).getAsJsonObject().get("contractId").getAsString();

        // get exariTransactionID from contract-status-api
        response = given().log().everything().baseUri(ENDPOINT).get(RESOURCE_CONTRACT_STATUS
                .concat("/").concat(contractId));
        results = parseJsonElementResponse(response).getAsJsonArray();
        // manually get rid of duplicate events
        for(JsonElement res : results) {
            if(res.getAsJsonObject().get("transactionResult").getAsString().matches("PENDING")){
                exariStorageNodeId = res.getAsJsonObject().get("exari_StorageNodeID").getAsString();
                break;
            }
        }
    }

    @When("the contract's installation process generates a Type {int} error for {int} of N Contract Line Adds")
    public void theContractSInstallationProcessGeneratesATypeErrorForOfNContractLineAdds(int arg0, int arg1) {
        RestAssured.useRelaxedHTTPSValidation();
        response = given().baseUri(FALLOUT_ENDPOINT).get(
                RESOURCE_CONTRACT_SUMMARIES.concat("/")
                        .concat("TYPE_2_ERROR_DOWNSTREAM")
                        .concat("?sort=timestamp,desc"));
        JsonElement result = parseJsonElementResponse(response);
        log.info("Result: {}", result.getAsJsonObject());
        JsonArray results = result.getAsJsonObject().get("content").getAsJsonArray();

        // Pull the first Install Contract event in type 2 we see
        for(JsonElement res : results ) {
            if(res.getAsJsonObject().get("transactionType").getAsString().matches("InstallContract")) {
                contractId = res.getAsJsonObject().get("contractId").getAsString();
                break;
            }
        }




        // get exariTransactionID from contract-status-api
        response = given().log().everything().baseUri(ENDPOINT).get(RESOURCE_CONTRACT_STATUS
                .concat("/").concat(contractId));
        results = parseJsonElementResponse(response).getAsJsonArray();
        // manually get rid of duplicate events
        for(JsonElement res : results) {
            if(res.getAsJsonObject().get("transactionResult").getAsString().matches("PENDING")
                && !res.getAsJsonObject().get("exari_StorageNodeID").isJsonNull()
                && res.getAsJsonObject().get("transactionStatus").getAsString().matches("MANUAL_HOLD_TYPE_2"))
            {
                exariStorageNodeId = res.getAsJsonObject().get("exari_StorageNodeID").getAsString();
                timestamp = res.getAsJsonObject().get("contractBusinessEvent").getAsJsonObject().get("timestamp").getAsString();
                break;
            }
        }
    }
}
