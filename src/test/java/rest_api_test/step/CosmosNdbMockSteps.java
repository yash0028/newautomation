package rest_api_test.step;

import com.google.gson.JsonElement;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.mock.IMockServiceInteract;
import rest_api_test.util.IRestStep;
import util.file.IFileReader;

public class CosmosNdbMockSteps implements IRestStep, IFileReader, IMockServiceInteract {
    private final static Logger log = LoggerFactory.getLogger(ContractMetadataApiSteps.class);

    private Response response;

    //US1332127

    @When("^querying the mock Cosmos service with a request from file \"([^\"]*)\"$")
    public void queryingTheMockCosmosServiceWithARequestFromFile(String filename) throws Throwable {
        String payload = getFileContents("/support/mock/" + filename);
        response = updateMockCosmos(payload);
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
        response = updateMockNdb(payload);
    }
}
