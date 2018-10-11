package rest_api_test.step;

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
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;
import util.FileHelper;
import java.util.List;

import static io.restassured.RestAssured.given;

/**
 * Created by aberns on 8/14/2018.
 */
public class ContractQuerySteps implements IRestStep {
    private final static Logger log = LoggerFactory.getLogger(ContractQuerySteps.class);

    private static final String ENDPOINT = "http://contracts-query-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_ECM = "/v1.0/exari/ecm";
    private static final String RESOURCE_FACILITY = "/v1.0/exari/facilitycontracts";
    private static final String RESOURCE_CONTRACT_JSON = "/v1.0/exari/json";

    private String contractId;
    private JsonElement result;
    //    private JsonObject payload;
    private RequestSpecification request;
    private Response response;


    @Given("^the Domain Service has received a business event from Exari$")
    public void buildValidRequest() throws Throwable {
        this.request = given().baseUri(ENDPOINT).header("Content-Type", "application/json");
    }

    @When("^the Domain Service queries for additional contract details from Exari$")
    public void getValidResponse() throws Throwable {
        response = request.param("contractId", "455293").get(RESOURCE_ECM);
    }

    @Then("^the Domain Service receives the Exari contract model$")
    public void checkValidResponse() throws Throwable {
        JsonObject result = parseJsonResponse(response);
        Assert.assertEquals("Unexpected response", 200, result.get("responseCode").getAsInt());

        String tempMessage = result.get("responseMessage").getAsString();
        JsonObject ecm = parseJsonString(tempMessage);

//        System.out.println(ecm.toString());
        List<String> masterSet = FileHelper.getInstance().getFileLines("/support/ecm.txt");
        Assert.assertTrue(verifyFields(ecm, masterSet, "\\."));
    }

    @When("^the Domain Service queries for invalid contract details from Exari$")
    public void getInvalidResponse() throws Throwable {
        response = request.param("contractId", "455292").get(RESOURCE_ECM);
    }

    @Then("^the Domain Service returns a service error$")
    public void checkInvalidResponse() throws Throwable {
        result = parseJsonResponse(response);
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
        result = parseJsonResponse(this.response);
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
        result = parseJsonResponse(this.response);
        String responseMessage = result.getAsJsonObject().get("responseMessage").getAsString();
        Assert.assertTrue(responseMessage.contains("A contract has not been found for contract"));
    }


    @Then("^the micro service returns a service error$")
    public void theMicroServiceReturnsAServiceError() throws Throwable {
        Assert.assertNotEquals(200, result.getAsJsonObject().get("responseCode").getAsInt());
//        Assert.assertEquals("Failure", result.get("responseStatus").getAsString());
    }

    //US1367884 (Exari Automation Testing using Contract Query API)

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
        //Get the response fields from the data table as a list
        List<String> responseFields = FileHelper.getInstance().getFileLines("/support/" + filename);

        result = parseJsonElementResponse(this.response);
        Assert.assertTrue(result.isJsonObject());

        String responseMessage = result.getAsJsonObject().get("responseMessage").getAsString();
        JsonObject responseJson = parseJsonElementString(responseMessage).getAsJsonObject();

        List<String> masterSet = FileHelper.getInstance().getFileLines("/support/" + filename);

        Assert.assertTrue(verifyFields(responseJson, masterSet, "#####"));
    }

}