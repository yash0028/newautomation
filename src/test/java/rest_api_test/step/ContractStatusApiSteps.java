package rest_api_test.step;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.contractstatus.IContractStatusInteract;
import rest_api_test.api.fallout.IFalloutContractControllerInteract;
import rest_api_test.api.fallout.model.ContractStatus;
import rest_api_test.api.fallout.model.ContractType;
import rest_api_test.api.fallout.model.PageTransactionContract;
import rest_api_test.api.fallout.model.contract.ContractModel;
import rest_api_test.api.transaction.ITransactionInteract;
import rest_api_test.api.transaction.model.TSortField;
import rest_api_test.api.transaction.model.TransactionContract;
import rest_api_test.api.transaction.model.TransactionDetails;
import rest_api_test.api.transaction.model.TransactionId;
import rest_api_test.util.IRestStep;

import java.util.Arrays;

/***
 *** Created by vkyrasa on 3/26/19
 ***/

public class ContractStatusApiSteps implements IRestStep, ITransactionInteract, IFalloutContractControllerInteract, IContractStatusInteract {
    private static final Logger log = LoggerFactory.getLogger(TransactionSteps.class);

    private Response response;

    private String exariStorageNodeId;
    private String contractId;

    @Given("a new contract exists in Exari that has just become {string}")
    public void aNewContractExistsInExariThatHasJustBecomeActive(String contractStatus) {

        //TODO:
        // make this use the FalloutHelper

    }

    @When("the contract has been successfully installed")
    public void theContractHasBeenSuccessfullyInstalled() {
        TransactionDetails details = transactionQueryDetails(Arrays.asList(ContractStatus.SUCCESS), Arrays.asList(TSortField.TIME_STAMP), true, 0, 10);
        String txId = details.stream().filter(dd -> dd.getType().equals("InstallContract")).map(TransactionId::getTransactionId).findFirst().orElse(null);

        // Query Fallout to get Contract ID
        ContractModel model = falloutQueryContractModel(txId);
        contractId = model.getContractID();


        // get exariTransactionID from contract-status-api
        response = getContractStatus(contractId);
        JsonArray results = parseJsonElementResponse(response).getAsJsonArray();

        // get first event in result
        for (JsonElement element : results) {
            if (element.isJsonObject() && element.getAsJsonObject().get("transactionResult").getAsString().equals("SUCCESS")) {
                exariStorageNodeId = element.getAsJsonObject().get("transactionResult").getAsString();
                break;
            }
        }
    }

    @And("a call to the Optum Transaction Status with the Exari contract ID and Exari Transaction ID for the install contract event")
    public void aCallToTheOptumTransactionStatusWithTheExariContractIDAndExariTransactionIDForTheInstallContractEvent() {
        // call with Exari Storage Node ID
        response = getContractStatus(contractId, exariStorageNodeId);
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
        PageTransactionContract contract = falloutQueryTransactionContracts(ContractType.TYPE_1);
        log.info(contract.getResponse().toString());

        // Pull the first Type 1 contractId we see
        contractId = contract.getContent().stream().findFirst().map(TransactionContract::getContractId).orElse(null);

        // get exariTransactionID from contract-status-api
        response = getContractStatus(contractId);
        JsonArray results = parseJsonElementResponse(response).getAsJsonArray();

        // get first event in result
        for (JsonElement element : results) {
            log.trace(element.toString());
            if (element.isJsonObject() && element.getAsJsonObject().get("transactionResult").getAsString().equals("PENDING")
                    && !element.getAsJsonObject().get("exari_StorageNodeID").isJsonNull()
            ) {
                exariStorageNodeId = element.getAsJsonObject().get("exari_StorageNodeID").getAsString();
                break;
            }
        }
    }

    @When("the contract's installation process generates a Type {int} error for {int} of N Contract Line Adds")
    public void theContractSInstallationProcessGeneratesATypeErrorForOfNContractLineAdds(int arg0, int arg1) {
        // query fallout for Type 2 errors
        PageTransactionContract contract = falloutQueryTransactionContracts(ContractType.TYPE_2);

        // Pull the first Install Contract event in type 2 we see
        contractId = contract.getContent().stream().findFirst().map(TransactionContract::getContractId).orElse(null);

        // get exariTransactionID from contract-status-api
        response = getContractStatus(contractId);
        JsonArray results = parseJsonElementResponse(response).getAsJsonArray();

        // get first event in result
        for (JsonElement element : results) {
            log.trace(element.toString());
            if (element.isJsonObject() && element.getAsJsonObject().get("transactionResult").getAsString().equals("PENDING")
                    && !element.getAsJsonObject().get("exari_StorageNodeID").isJsonNull()
                    && element.getAsJsonObject().get("transactionStatus").getAsString().matches("MANUAL_HOLD_TYPE_2")
            ) {
                exariStorageNodeId = element.getAsJsonObject().get("exari_StorageNodeID").getAsString();
                break;
            }
        }
    }
}
