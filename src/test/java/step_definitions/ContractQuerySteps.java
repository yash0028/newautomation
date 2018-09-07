package step_definitions;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import utils.FileHelper;
import utils.RestHelper;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import static io.restassured.RestAssured.given;

/**
 * Created by aberns on 8/14/2018.
 */
public class ContractQuerySteps {

    private static final String BASE_URI = "http://contracts-query-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_ECM = "/v1.0/exari/ecm";
    private static final String ENDPOINT_FACILITY = "/v1.0/exari/facilitycontracts";

    private String contractId;
    private JsonObject result;

//    private static final String ECM_MASTER =
//            "businessEventDetails\n" +
//            "contractDetails.capture\n" +
//            "contractDetails.contractFolderName\n" +
//            "contractDetails.contractName\n" +
//            "contractDetails.contractOwner\n" +
//            "contractDetails.contractStructure\n" +
//            "contractDetails.contractTitle\n" +
//            "contractDetails.storageNode.properties.contractValueCommitted\n" +
//            "contractDetails.created\n" +
//            "contractDetails.createInParentFolder\n" +
//            "contractDetails.dateEffective\n" +
//            "contractDetails.dateExpiry\n" +
//            "contractDetails.dealID\n" +
//            "contractDetails.dealName\n" +
//            "contractDetails.externalID\n" +
//            "contractDetails.hasDraft\n" +
//            "contractDetails.masterAgreement\n" +
//            "contractDetails.modified\n" +
//            "contractDetails.parentContractID\n" +
//            "contractDetails.status\n" +
//            "contractDetails.storageNode\n" +
//            "contractDetails.storageNode.properties.counterpartyLegalName\n" +
//            "contractDetails.storageNode.properties.mpin_tin\n" +
//            "contractDetails.storageNode.properties.ourLegalName\n" +
//            "contractDetails.storageNode.properties.uhg_CounterpartyAddressCity\n" +
//            "contractDetails.storageNode.properties.uhg_CounterpartyAddressStreet\n" +
//            "contractDetails.storageNode.properties.uhg_CounterpartyAddressZip\n" +
//            "contractDetails.storageNode.properties.uhg_Market_Number_DMCQ\n" +
//            "contractDetails.superStatus\n" +
//            "contractDetails.workflowInstances\n" +
//            "contractID\n" +
//            "contractOrders\n" +
//            "contractTransactions\n" +
//            "contractTransactions.storageNode\n" +
//            "docGenID\n" +
//            "providerRoster\n" +
//            "siteInfo\n" +
//            "supportingDocuments\n" +
//            "templateDocument\n" +
//            "templateDocument.storageNode\n" +
//            "type\n";
////            "workflowInstances\n";

    //    private JsonObject payload;
    private RequestSpecification request;
    private Response response;


    @Given("^the Domain Service has received a business event from Exari$")
    public void buildValidRequest() throws Throwable {
        this.request = given().baseUri(BASE_URI).header("Content-Type", "application/json");
    }

    @When("^the Domain Service queries for additional contract details from Exari$")
    public void getValidResponse() throws Throwable {
        response = request.param("contractId", "455293").get(ENDPOINT_ECM);
    }

    @Then("^the Domain Service receives the Exari contract model$")
    public void checkValidResponse() throws Throwable {
        JsonObject result = RestHelper.getInstance().parseJsonResponse(response);
        Assert.assertEquals("Unexpected response", 200, result.get("responseCode").getAsInt());

        String tempMessage = result.get("responseMessage").getAsString();
        JsonObject ecm = RestHelper.getInstance().parseJsonString(tempMessage);

//        System.out.println(ecm.toString());
        verifyECM(ecm);
    }

    @When("^the Domain Service queries for invalid contract details from Exari$")
    public void getInvalidResponse() throws Throwable {
        response = request.param("contractId", "455292").get(ENDPOINT_ECM);
    }

    @Then("^the Domain Service returns a service error$")
    public void checkInvalidResponse() throws Throwable {
        result = RestHelper.getInstance().parseJsonResponse(response);
        Assert.assertNotEquals("Unexpected response: should have received a service error", 200, result.get("responseCode").getAsInt());
    }

    private void verifyECM(JsonElement ecmRoot) throws Throwable {
        List<String> masterSet = FileHelper.getInstance().getFileLines("/support/ecm.txt");
        int failCount = 0;

        for (String masterKey : masterSet) {
            List<String> deepKeySet = Arrays.stream(masterKey.split("\\.")).map(String::trim).collect(Collectors.toList());
            StringBuilder traveledPath = new StringBuilder("ecmObject");
            boolean tempTest = verifySingleKey(deepKeySet, 0, ecmRoot, traveledPath);
            if (tempTest) {
                UtilSteps.write2Scenario("Found all keys for " + traveledPath.toString());
            } else {
                failCount++;
            }
        }

        Assert.assertEquals("At least 1 key set did not exist", 0, failCount);
    }

    private boolean verifySingleKey(List<String> keySet, int index, JsonElement currJson, StringBuilder traveledPath) throws Throwable {
        JsonElement nextJson;

        //Move into array
        while (currJson.isJsonArray() && currJson.getAsJsonArray().size() > 0) {
            currJson = currJson.getAsJsonArray().get(0);
            traveledPath.append("[0]");
        }

        //Check that the previous json is still usable and not at the end of the check
        if (index >= keySet.size()) {
            return true;
        }

        String errorMessage = "Missing key <" + keySet.get(index) + "> in " + traveledPath.toString();
        if (currJson.isJsonPrimitive() || currJson.isJsonNull() || currJson.isJsonArray() || !currJson.getAsJsonObject().has(keySet.get(index))) {
            UtilSteps.write2Scenario(errorMessage);
            return false;
        }

        nextJson = currJson.getAsJsonObject().get(keySet.get(index));
        traveledPath.append(".").append(keySet.get(index));
        return verifySingleKey(keySet, index + 1, nextJson, traveledPath);
    }

    @Given("^Exari has received a request to send data to PIC$")
    public void exartiWantsPICData() throws Throwable {
        //No Operations, assume it has happened
    }

    @When("^the micro service has received the contract id of \"([^\"]*)\" from Exari$")
    public void recieveContractId(String contractId) throws Throwable {
        this.contractId = contractId;
        this.request = given().baseUri(BASE_URI).header("Content-Type", "application/json").param("contractId", contractId);
        this.response = request.get(ENDPOINT_FACILITY);
        Assert.assertEquals(200, this.response.getStatusCode());
    }

    @And("^the micro service finds the data valid based on the selection criteria$")
    public void isContractIdDataValid() throws Throwable {
        result = RestHelper.getInstance().parseJsonResponse(this.response);
        String agreementId = result.get("responseData").getAsJsonArray().get(0).getAsJsonObject().get("agreementId").getAsString();
        Assert.assertEquals(contractId, agreementId);
    }

    @Then("^the micro service sends the data to PIC$")
    public void sendDataToPIC() throws Throwable {
        Assert.assertEquals(200, result.get("responseCode").getAsInt());
        Assert.assertEquals("Success", result.get("responseStatus").getAsString());
    }

    @And("^the micro service finds the data invalid based on the selection criteria$")
    public void theMicroServiceFindsTheDataInvalidBasedOnTheSelectionCriteria() throws Throwable {
        result = RestHelper.getInstance().parseJsonResponse(this.response);
        String responseMessage = result.get("responseMessage").getAsString();
        Assert.assertTrue(responseMessage.contains("A contract has not been found for contract"));
    }


    @Then("^the micro service returns a service error$")
    public void theMicroServiceReturnsAServiceError() throws Throwable {
        Assert.assertNotEquals(200, result.get("responseCode").getAsInt());
        Assert.assertEquals("Failure", result.get("responseStatus").getAsString());
    }
}