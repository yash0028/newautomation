package rest_api_test.step;

import com.google.gson.JsonObject;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

import static io.restassured.RestAssured.given;

public class ActivitiApiSteps implements IRestStep {

    private static final Logger log = LoggerFactory.getLogger(ActivitiApiSteps.class);

    private static final String ENDPOINT = "http://activiti-api-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_CREATE_RECORD = "/v1.0/processes";

    private RequestSpecification request;
    private Response response;
    private JsonObject requestBody = new JsonObject();

    // US1456884

    @When("^hitting the activiti-api with \"([^\"]*)\" of \"([^\"]*)\"$")
    public void hittingTheActivityApiWithOf(String field, String value) throws Throwable {
        requestBody.addProperty(field, value);
    }

    @And("^activiti field \"([^\"]*)\" of \"([^\"]*)\"$")
    public void of(String field, String value) throws Throwable {
        requestBody.addProperty(field, value);
    }

    @Then("^a (\\d+) response code is received from the activiti-api$")
    public void aResponseCodeIsReceived(int responseCode) throws Throwable {
        // Build out the request
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody);

        // Get the response
        response = request.post(RESOURCE_CREATE_RECORD);

        // Assert that the expected response code is received
        Assert.assertEquals("The response did not return the expected status code", responseCode, response.getStatusCode());
    }
}
