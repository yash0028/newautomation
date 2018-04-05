package StepDefinitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import com.google.gson.JsonObject;
import io.restassured.response.Response;
import static io.restassured.RestAssured.given;
import static io.restassured.RestAssured.when;
import static org.junit.Assert.assertEquals;


/**
 * Created by jwacker on 4/5/2018.
 */
public class ProducerSteps {
    private Response response;

    @Given("^a connection to Kafka$")
    public void aConnectionToKafka() throws Throwable {
        response = given().get("http://localhost:8080");
        assertEquals(200, response.getStatusCode());
    }

    @When("^a POST request is sent to \"([^\"]*)\" with json containing (\\d+), \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", and \"([^\"]*)\"$")
    public void aPOSTRequestIsSentToWithJsonContainingIdAnd(String url, int id, String firstname, String lastname, String title, String location, String org) throws Throwable {
        JsonObject jsonBody = new JsonObject();
        jsonBody.addProperty("id", id);
        jsonBody.addProperty("firstname", firstname);
        jsonBody.addProperty("lastname", lastname);
        jsonBody.addProperty("title", title);
        jsonBody.addProperty("location", location);
        jsonBody.addProperty("organization", org);

        response = when().post(url, jsonBody);
    }

    @Then("^response code (\\d+) should be received$")
    public void responseCodeShouldBeReceived(int code) throws Throwable {
        assertEquals(code, response.getStatusCode());
    }




}
