package StepDefinitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import io.restassured.response.ResponseBody;

import static org.junit.Assert.assertEquals;
import static io.restassured.RestAssured.given;
import static io.restassured.RestAssured.when;

/**
 * Created by jwacker on 5/11/2018.
 */
public class ETMASteps {
    private Response response;
    private ResponseBody body;
    private String url;

    @Given("^the connection details$")
    public void theConnectionDetails() throws Throwable {

        // Testing locally until pushed to Dev env -- need to update this when deployed
        url = "http://localhost:8080/api/1/markets";

    }

    @When("^the micro service calls the ETMA tables$")
    public void theMicroServiceCallsTheETMATables() throws Throwable {

        response = when().get(url);

    }

    @Then("^the connection is successful$")
    public void theConnectionIsSuccessful() throws Throwable {

        assertEquals(200, response.getStatusCode());

    }
}
