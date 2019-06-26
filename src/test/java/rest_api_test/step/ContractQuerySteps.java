package rest_api_test.step;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;
import util.configuration.IConfigurable;
import util.file.IFileReader;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static io.restassured.RestAssured.given;

/**
 * Created by aberns on 8/14/2018.
 */
public class ContractQuerySteps implements IRestStep, IFileReader, IConfigurable {
    private final static Logger log = LoggerFactory.getLogger(ContractQuerySteps.class);

    private static final String ENDPOINT = "http://contracts-query-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_ECM = "/v1.0/exari/ecm";
    private static final String RESOURCE_FACILITY = "/v1.0/exari/facilitycontracts";
    private static final String RESOURCE_CONTRACT_JSON = "/v1.0/exari/json";
    private static final String RESOURCE_CONTRACT_SEARCH = "/v1.0/exari/contracts/search";

    private String contractId;
    private List<String> contractIds = new ArrayList<>();
    private JsonElement result;
    private RequestSpecification request;
    private Response response;
    private List<Response> responses = new ArrayList<>();
    private int numContracts;


    @Given("^the Domain Service has received a business event from Exari$")
    public void buildValidRequest() throws Throwable {
        this.request = given().baseUri(ENDPOINT).header("Content-Type", "application/json");
    }

    @When("^the Domain Service queries for additional contract details from Exari$")
    public void getValidResponse() throws Throwable {
        response = request.param("contractId", "91414303").get(RESOURCE_ECM);

        log.info("Contract query response: {}", response.asString());
    }

    @Then("^the Domain Service receives the Exari contract model$")
    public void checkValidResponse() throws Throwable {
        JsonElement result = parseJsonElementResponse(response);
        Assert.assertTrue(result.isJsonObject());
        Assert.assertEquals("Unexpected response", 200, response.statusCode());

        String tempMessage = result.getAsJsonObject().get("responseMessage").getAsString();
        JsonElement ecm = parseJsonElementString(tempMessage);
        Assert.assertTrue(ecm.isJsonObject());

//        System.out.println(ecm.toString());
        List<String> masterSet = getFileLines("/support/ecm/ecm.txt");
        Assert.assertTrue(verifyFields(ecm, masterSet, "\\."));
    }

    @When("^the Domain Service queries for invalid contract details from Exari$")
    public void getInvalidResponse() throws Throwable {
        response = request.param("contractId", "455292").get(RESOURCE_ECM);
    }

    @Then("^the Domain Service returns a service error$")
    public void checkInvalidResponse() throws Throwable {
        result = parseJsonElementResponse(response);
        Assert.assertTrue(result.isJsonObject());
        Assert.assertNotEquals("Unexpected response: should have received a service error", 200, result.getAsJsonObject().get("responseCode").getAsInt());
    }

    @Given("^Exari has received a request to send data to PIC$")
    public void exartiWantsPICData() throws Throwable {
        //No Operations, assume it has happened
    }

    @When("^the micro service has received the contract id of \"([^\"]*)\" from Exari$")
    public void recieveContractId(String contractId) throws Throwable {
        this.contractId = contractId;
        this.request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").param("contractId", contractId);
        this.response = request.get(RESOURCE_FACILITY);
        Assert.assertEquals(200, this.response.getStatusCode());
    }

    @And("^the micro service finds the data valid based on the selection criteria$")
    public void isContractIdDataValid() throws Throwable {
        result = parseJsonElementResponse(this.response);
        Assert.assertTrue(result.isJsonObject());
        String agreementId = result.getAsJsonObject().get("responseData").getAsJsonArray().get(0).getAsJsonObject().get("agreementId").getAsString();
        Assert.assertEquals(contractId, agreementId);
    }

    @Then("^the micro service sends the data to PIC$")
    public void sendDataToPIC() throws Throwable {
        Assert.assertEquals(0, result.getAsJsonObject().get("responseCode").getAsInt());
//        Assert.assertEquals("Success", result.get("responseStatus").getAsString());
    }

    @And("^the micro service finds the data invalid based on the selection criteria$")
    public void theMicroServiceFindsTheDataInvalidBasedOnTheSelectionCriteria() throws Throwable {
        result = parseJsonElementResponse(this.response);
        Assert.assertTrue(result.isJsonObject());
        String responseMessage = result.getAsJsonObject().get("responseMessage").getAsString();
        Assert.assertTrue(responseMessage.contains("A contract has not been found for contract"));
    }


    @Then("^the micro service returns a service error$")
    public void theMicroServiceReturnsAServiceError() throws Throwable {
        Assert.assertNotEquals(200, result.getAsJsonObject().get("responseCode").getAsInt());
//        Assert.assertEquals("Failure", result.get("responseStatus").getAsString());
    }

    //US1367884 and US1384733 (Exari Automation Testing using Contract Query API)

    @Given("^a contract with Contract ID of \"([^\"]*)\"$")
    public void aContractWithContractIDOf(String contractId) throws Throwable {
        this.contractId = contractId;
    }

    @When("^hitting the Exari API for Contract JSON Data$")
    public void hittingTheExariAPIForContractJSONData() throws Throwable {
        this.request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").param("contractId", contractId);
        this.response = request.get(RESOURCE_CONTRACT_JSON);
        Assert.assertEquals(200, this.response.getStatusCode());
    }

    @Then("^the fields from file \"([^\"]*)\" are returned$")
    public void theFollowingFieldsAreReturned(String filename) throws Throwable {

        result = parseJsonElementResponse(this.response);
        Assert.assertTrue(result.isJsonObject());

        log.info("Response: {}", response.asString());

        String responseMessage = result.getAsJsonObject().get("responseMessage").getAsString();
        JsonObject responseJson = parseJsonElementString(responseMessage).getAsJsonObject();

        List<String> masterSet = getFileLines("/support/ecm/" + filename);

        Assert.assertTrue("Not all required fields were returned in the Exari Contract JSON", verifyFields(responseJson, masterSet, " "));
    }

    @And("^the fields from file \"([^\"]*)\" are not null$")
    public void theFieldsFromFileAreNotNull(String filename) throws Throwable {
        String responseMessage = result.getAsJsonObject().get("responseMessage").getAsString();
        JsonObject responseJson = parseJsonElementString(responseMessage).getAsJsonObject();

        List<String> masterSet = getFileLines("/support/ecm/" + filename);

        Assert.assertTrue("Some fields in the contract JSON were blank or null when they shouldn't be", verifyFieldsNotNull(responseJson, masterSet, " "));
    }

    //US1384733

    @Given("^the (\\d+) latest \"([^\"]*)\" contract IDs from Exari$")
    public void theLatestContractIDsFromExari(int numContracts, String contractType) throws Throwable {
        this.numContracts = numContracts;

        // JSON request to get latest contracts from Exari (swagger page: https://uhgpoc-dev.exaricontracts.com/exaricm/contracts-api-ui/index.html)
        String jsonRequestString = "{\n" +
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
        JsonElement requestBody = parseJsonElementString(jsonRequestString);

        // Build out the request
        this.request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody);
        //this.request.header("Authorization", configGetOptionalString("exari.searchAuthorization").orElse(""));

        this.response = request.post(RESOURCE_CONTRACT_SEARCH);

        Assert.assertEquals(200, response.getStatusCode());

        log.info("Response from contract query api: {}", response.asString());

        this.result = parseJsonElementResponse(response);

        // Since the API returns nested JSON in a JSON Primitive object, we need to first get the response message
        // And then parse it as a JSON element, so that we can get the nested array later
        JsonPrimitive responseMessage = result.getAsJsonObject().get("responseMessage").getAsJsonPrimitive();
        JsonElement responseJson = parseJsonElementString(responseMessage.getAsString());

        // All the contract data we're interested in resides in the "entries" object
        JsonArray entries = responseJson.getAsJsonObject().get("entries").getAsJsonArray();

        // Go through each entry and put each contract ID into an array list
        for(JsonElement entry: entries){
            JsonObject obj = entry.getAsJsonObject();
            this.contractIds.add(obj.get("contractID").getAsString());
        }

    }

    @When("^hitting Exari for each contract's JSON$")
    public void hittingExariForEachContractSJSON() throws Throwable {
        // Get JSON data for each contract ID, and store each result in another array list
        for(String contractId: this.contractIds){
            log.info("Hitting Exari to get JSON for Contract ID: {}", contractId);

            this.request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").param("contractId", contractId);
            this.response = request.get(RESOURCE_CONTRACT_JSON);
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
            result = parseJsonElementResponse(resp);
            Assert.assertTrue(result.isJsonObject());

            // The data we need resides in the "responseMessage" object
            String responseMessage = result.getAsJsonObject().get("responseMessage").getAsString();
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
            result = parseJsonElementResponse(resp);
            Assert.assertTrue(result.isJsonObject());

            // The data we need resides in the "responseMessage" object
            String responseMessage = result.getAsJsonObject().get("responseMessage").getAsString();
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
}