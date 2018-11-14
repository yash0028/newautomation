package rest_api_test.step;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;
import util.file.IFileReader;

import java.util.ArrayList;

import static io.restassured.RestAssured.given;

public class CosmosNdbMockSteps implements IRestStep, IFileReader {
    private final static Logger log = LoggerFactory.getLogger(ContractMetadataApiSteps.class);

    private final static String ENDPOINT = "http://cosmos-ndb-mock-service-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private final static String RESOURCE_COSMOS = "/v1.0/cosmos";
    private final static String RESOURCE_NDB_UPDATE = "/v1.0/ndb/update";

    private RequestSpecification request;
    private JsonObject requestBody = new JsonObject();
    private Response response;

    //US1332127

    @When("^querying the mock Cosmos service with a request from file \"([^\"]*)\"$")
    public void queryingTheMockCosmosServiceWithARequestFromFile(String filename) throws Throwable {
        String payload = getFileContents("/support/mock/" + filename);

        request = given().baseUri(ENDPOINT).header("Content-Type", "application/soap+xml").body(payload);

        response = request.post(RESOURCE_COSMOS);
    }

    @Then("^the mock service returns a \"([^\"]*)\" status code$")
    public void theMockServiceReturnsAStatusCode(String statusCode) throws Throwable {
        Assert.assertEquals(200, response.getStatusCode());
    }

    @And("^the mock service returns a response identical to file \"([^\"]*)\"$")
    public void theMockServiceReturnsAResponseIdenticalToFile(String filename) throws Throwable {
        String expectedResponse = getFileContents("/support/mock/" + filename).replaceAll("\n","");
        String actualResponse = response.asString();

        Assert.assertTrue("Expected response does not match actual response", expectedResponse.equals(actualResponse));
    }

    @When("^querying the mock NDB service with a request from file \"([^\"]*)\"$")
    public void queryingTheMockNDBServiceWithARequestFromFile(String filename) throws Throwable {
        JsonElement payload = getJsonElementFromFile("/support/mock/" + filename);

        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(payload);

        response = request.post(RESOURCE_NDB_UPDATE);
    }
}
