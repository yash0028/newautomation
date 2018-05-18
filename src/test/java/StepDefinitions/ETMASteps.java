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
    private String baseUri = "http://localhost:8080/api/1/markets"; //Need to change to DEV URL once deployed to dev

//F182490

    //US1100261

    @Given("^the connection details$")
    public void theConnectionDetails() throws Throwable {

        // noop -- connection details declared above

    }

    @When("^the micro service calls the ETMA tables$")
    public void theMicroServiceCallsTheETMATables() throws Throwable {

        response = when().get(baseUri);

    }

    @Then("^the connection is successful$")
    public void theConnectionIsSuccessful() throws Throwable {

        assertEquals(200, response.getStatusCode());

    }

}
