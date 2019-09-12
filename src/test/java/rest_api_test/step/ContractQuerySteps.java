package rest_api_test.step;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.contractsquery.IContractsQueryInteract;
import rest_api_test.api.contractsquery.model.QueryResponse;
import rest_api_test.util.IRestStep;
import util.configuration.IConfigurable;
import util.file.IFileReader;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by aberns on 8/14/2018.
 */
public class ContractQuerySteps implements IRestStep, IFileReader, IConfigurable, IContractsQueryInteract {
    private final static Logger log = LoggerFactory.getLogger(ContractQuerySteps.class);

    private String contractId;
    private List<String> contractIds = new ArrayList<>();
    private JsonElement jsonResponse;
    private Response response;
    private List<Response> responses = new ArrayList<>();
    private int numContracts;
    private String massActionId;
    private QueryResponse queryResponse;


    @Given("^the Domain Service has received a business event from Exari$")
    public void buildValidRequest() throws Throwable {
        // NO OP
    }

    @When("^the Domain Service queries for additional contract details from Exari$")
    public void getValidResponse() throws Throwable {
        // TODO change contract id to work in test env
        useDevApi(); // Test Env does not have data yet
        response = getExariContractModel("91414303");
        log.debug("Contract query response: {}", response.asString());
    }

    @Then("^the Domain Service receives the Exari contract model$")
    public void checkValidResponse() throws Throwable {
        jsonResponse = parseJsonElementResponse(response);
        Assert.assertTrue(jsonResponse.isJsonObject());
        Assert.assertEquals(200, response.statusCode());

        String tempMessage = jsonResponse.getAsJsonObject().get("responseMessage").getAsString();
        JsonElement ecm = parseJsonElementString(tempMessage);
        Assert.assertTrue(ecm.isJsonObject());

        List<String> masterSet = getFileLines("/support/ecm/ecm.txt");
        Assert.assertTrue(verifyFields(ecm, masterSet, "\\."));
    }

    @When("^the Domain Service queries for invalid contract details from Exari$")
    public void getInvalidResponse() throws Throwable {
        // TODO change contract id to work in test env
        useDevApi(); // Test Env does not have data yet
        response = getExariContractModel("455292");
        log.debug("Contract query response: {}", response.asString());
    }

    @Then("^the Domain Service returns a service error$")
    public void checkInvalidResponse() throws Throwable {
        jsonResponse = parseJsonElementResponse(response);
        Assert.assertTrue(jsonResponse.isJsonObject());
        Assert.assertNotEquals("Unexpected response: should have received a service error", 200, jsonResponse.getAsJsonObject().get("responseCode").getAsInt());
    }

    @Given("^Exari has received a request to send data to PIC$")
    public void exartiWantsPICData() throws Throwable {
        //No Operations, assume it has happened
    }

    @When("^the micro service has received the contract id of \"([^\"]*)\" from Exari$")
    public void recieveContractId(String contractId) throws Throwable {
        this.contractId = contractId;
        this.response = getFacilityContractData(contractId);
        Assert.assertEquals(200, this.response.getStatusCode());
    }

    @And("^the micro service finds the data valid based on the selection criteria$")
    public void isContractIdDataValid() throws Throwable {
        log.info("Response: {}", response.asString());

        jsonResponse = parseJsonElementResponse(this.response);
        Assert.assertTrue(jsonResponse.isJsonObject());
        String agreementId = jsonResponse.getAsJsonObject().get("responseData").getAsJsonArray().get(0).getAsJsonObject().get("agreementId").getAsString();
        Assert.assertEquals(contractId, agreementId);
    }

    @Then("^the micro service sends the data to PIC$")
    public void sendDataToPIC() throws Throwable {
        Assert.assertEquals(0, jsonResponse.getAsJsonObject().get("responseCode").getAsInt());
    }

    @And("^the micro service finds the data invalid based on the selection criteria$")
    public void theMicroServiceFindsTheDataInvalidBasedOnTheSelectionCriteria() throws Throwable {
        jsonResponse = parseJsonElementResponse(this.response);
        Assert.assertTrue(jsonResponse.isJsonObject());
        String responseMessage = jsonResponse.getAsJsonObject().get("responseMessage").getAsString();
        Assert.assertTrue(responseMessage.contains("A contract has not been found for contract"));
    }


    @Then("^the micro service returns a service error$")
    public void theMicroServiceReturnsAServiceError() throws Throwable {
        Assert.assertNotEquals(200, jsonResponse.getAsJsonObject().get("responseCode").getAsInt());
    }

    //US1367884 and US1384733 (Exari Automation Testing using Contract Query API)

    @Given("^a contract with Contract ID of \"([^\"]*)\"$")
    public void aContractWithContractIDOf(String contractId) throws Throwable {
        this.contractId = contractId;
    }

    @When("^hitting the Exari API for Contract JSON Data$")
    public void hittingTheExariAPIForContractJSONData() throws Throwable {
        this.response = getExariContractJson(contractId);
        Assert.assertEquals(200, this.response.getStatusCode());
    }

    @Then("^the fields from file \"([^\"]*)\" are returned$")
    public void theFollowingFieldsAreReturned(String filename) throws Throwable {
        jsonResponse = parseJsonElementResponse(this.response);
        Assert.assertTrue(jsonResponse.isJsonObject());

        log.info("Response: {}", response.asString());

        String responseMessage = jsonResponse.getAsJsonObject().get("responseMessage").getAsString();
        JsonObject responseJson = parseJsonElementString(responseMessage).getAsJsonObject();

        List<String> masterSet = getFileLines("/support/ecm/" + filename);

        Assert.assertTrue("Not all required fields were returned in the Exari Contract JSON", verifyFields(responseJson, masterSet, " "));
    }

    @And("^the fields from file \"([^\"]*)\" are not null$")
    public void theFieldsFromFileAreNotNull(String filename) throws Throwable {
        String responseMessage = jsonResponse.getAsJsonObject().get("responseMessage").getAsString();
        JsonObject responseJson = parseJsonElementString(responseMessage).getAsJsonObject();

        List<String> masterSet = getFileLines("/support/ecm/" + filename);

        Assert.assertTrue("Some fields in the contract JSON were blank or null when they shouldn't be", verifyFieldsNotNull(responseJson, masterSet, " "));
    }

    //US1384733

    @Given("^the (\\d+) latest \"([^\"]*)\" contract IDs from Exari$")
    public void theLatestContractIDsFromExari(int numContracts, String contractType) throws Throwable {
        this.numContracts = numContracts;

        // JSON request to get latest contracts from Exari (swagger page: https://uhgpoc-dev.exaricontracts.com/exaricm/contracts-api-ui/index.html)
        String searchString = "{\n" +
                "  \"anyFieldQuery\": \"" + contractType + "\",\n" +
                "  \"filter\": {\n" +
                "    \"filters\": {\n" +
                "      \"status\": [\n" +
                "        \"Active\"\n" +
                "      ]\n" +
                "    }\n" +
                "  },\n" +
                "  \"sort\": {\n" +
                "    \"fieldName\": \"created\",\n" +
                "    \"ascending\": false\n" +
                "  },\n" +
                "  \"pagination\": {\n" +
                "    \"maxItems\": " + numContracts + "\n" +
                "  },\n" +
                "  \"includeExtraFields\": [\n" +
                "    \"cm:created\"\n" +
                "  ]\n" +
                "}";
        JsonElement searchPayload = parseJsonElementString(searchString);
        this.response = searchContractsWithFilter(searchPayload);
        Assert.assertEquals(200, response.getStatusCode());

        log.info("Response from contract query api: {}", response.asString());

        this.jsonResponse = parseJsonElementResponse(response);

        // Since the API returns nested JSON in a JSON Primitive object, we need to first get the response message
        // And then parse it as a JSON element, so that we can get the nested array later
        String message = jsonResponse.getAsJsonObject().get("responseMessage").getAsJsonPrimitive().getAsString();
        jsonResponse = parseJsonElementString(message);

        // All the contract data we're interested in resides in the "entries" object
        JsonArray entries = jsonResponse.getAsJsonObject().get("entries").getAsJsonArray();

        // Go through each entry and put each contract ID into an array list
        for(JsonElement entry: entries){
            JsonObject obj = entry.getAsJsonObject();
            this.contractIds.add(obj.get("contractID").getAsString());
        }

    }

    @When("^hitting Exari for each contract's JSON$")
    public void hittingExariForEachContractSJSON() throws Throwable {
        // Get JSON data for each contract ID, and store each jsonResponse in another array list
        for(String contractId: this.contractIds){
            log.info("Hitting Exari to get JSON for Contract ID: {}", contractId);

            this.response = searchContractsById(contractId);
            Assert.assertEquals(200, this.response.getStatusCode());

            // Array list holding all of the response data for each contract ID
            this.responses.add(response);
        }

    }

    @Then("^the fields from file \"([^\"]*)\" are returned for each contract$")
    public void theFieldsFromFileAreReturnedForEachContract(String filename) throws Throwable {
        int count = 0;

        // Go through each response and verify it has the necessary JSON fields/elements
        for(Response resp: this.responses){
            jsonResponse = parseJsonElementResponse(resp);
            Assert.assertTrue(jsonResponse.isJsonObject());

            // The data we need resides in the "responseMessage" object
            String responseMessage = jsonResponse.getAsJsonObject().get("responseMessage").getAsString();
            JsonObject responseJson = parseJsonElementString(responseMessage).getAsJsonObject();

            String contract = responseJson.get("contractID").getAsString();

            List<String> masterSet = getFileLines("/support/ecm/" + filename);

            // Verify the fields in the response against the master set
            if(verifyFields(responseJson, masterSet, " ")){
                count++;
                log.info("All fields match for contract id {}", contract);
            }else{
                log.info("Not all fields match for contract id {}", contract);
            }

//            Assert.assertTrue("Not all required fields were returned in the Exari Contract JSON for Contract ID " + contract, verifyFields(responseJson, masterSet, " "));
        }
        log.info("Valid contracts: {} -- Invalid Contracts: {}", count, numContracts-count);

        Assert.assertTrue("Not all required fields were returned in the Exari Contract JSON for at least half the contracts", count > numContracts/2);
    }

    @And("^the fields from file \"([^\"]*)\" are not null for each contract$")
    public void theFieldsFromFileAreNotNullForEachContract(String filename) throws Throwable {
        int count = 0;

        // Go through each response and verify that fields that shouldn't be null/blank, aren't null/blank
        for(Response resp: this.responses){
            jsonResponse = parseJsonElementResponse(resp);
            Assert.assertTrue(jsonResponse.isJsonObject());

            // The data we need resides in the "responseMessage" object
            String responseMessage = jsonResponse.getAsJsonObject().get("responseMessage").getAsString();
            JsonObject responseJson = parseJsonElementString(responseMessage).getAsJsonObject();

            String contract = responseJson.get("contractID").getAsString();

            List<String> masterSet = getFileLines("/support/ecm/" + filename);

            // Verify the fields in the response against the master set
            if(verifyFieldsNotNull(responseJson, masterSet, " ")){
                count++;
                log.info("All required non-null fields pass for contract id {}", contract);
            }else{
                log.info("Not all required non-null fields pass for contract id {}", contract);
            }

//            Assert.assertTrue("Some fields in the contract JSON were blank or null when they shouldn't be for Contract ID " + contract, verifyFieldsNotNull(responseJson, masterSet, " "));
        }
        Assert.assertTrue("Some fields in the contract JSON were blank or null when they shouldn't be", count > numContracts/2);

    }

    @Given("the mass action id {string}")
    public void theMassActionId(String arg0) {
        massActionId = arg0;
    }

    @When("I send the mass action id to the endpoint")
    public void iSendTheMassActionIdToTheEndpoint() {
        queryResponse = getExariMassAction(massActionId);
    }

    @Then("I receive a valid query response")
    public void iReceiveAValidQueryResponse() {
        log.info(queryResponse.toString());
        Assert.assertEquals(queryResponse.getResponseCode(), 0);
        Assert.assertEquals(queryResponse.getResponseMessage().getSystemUUID(), massActionId);
    }
}