package StepDefinitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import gherkin.deps.com.google.gson.JsonObject;
import io.restassured.response.Response;
import io.restassured.response.ResponseBody;
import io.restassured.specification.RequestSpecification;
import static org.junit.Assert.assertTrue;
import static io.restassured.RestAssured.given;

/**
 * Created by jwacker on 5/16/2018.
 */
public class PESSteps {
    private RequestSpecification request;
    private Response response;
    private JsonObject commonSearchParams;

//F137899

    //US861016

    @Given("^the Exari Interview is built with the search parameters \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\"$")
    public void theExariInterviewIsBuiltWithTheSearchParameters(String mpin, String tin, String npi, String fn, String ln, String city, String zip, String state) throws Throwable {

        JsonObject jsonBody = new JsonObject();

        jsonBody.addProperty(mpin, "");
        jsonBody.addProperty(tin, "");
        jsonBody.addProperty(npi, "");
        jsonBody.addProperty(fn, "");
        jsonBody.addProperty(ln, "");
        jsonBody.addProperty(city, "");
        jsonBody.addProperty(zip, "");
        jsonBody.addProperty(state, "");

        commonSearchParams = jsonBody;

        request = given().baseUri("").header("Content-Type", "application/json").body(jsonBody.toString());

    }

    @When("^the user completes the search parameters for Demographic data needs$")
    public void theUserCompletesTheSearchParametersForDemographicDataNeeds() throws Throwable {

        response = request.post();

    }

    @Then("^the API should use the parameters to obtain the Demographic data from the source system \\(PES\\)$")
    public void theAPIShouldUseTheParametersToObtainTheDemographicDataFromTheSourceSystemPES() throws Throwable {

        ResponseBody raResponse = response.getBody();
        boolean result = true;
        String[] matches = new String[] {"mpin", "tin", "npi"};

        for(String field: matches){
            if(!raResponse.asString().contains(field)) { result = false; }
        }

        assertTrue(result);

    }

    //US1089376

    @Given("^many API's Exist$")
    public void manyAPISExist() throws Throwable {
        // noop -- doesn't need to be tested as it's a Spike story
    }

    @Then("^the developer needs to understand the different APIs in order to use the correct one\\.$")
    public void theDeveloperNeedsToUnderstandTheDifferentAPIsInOrderToUseTheCorrectOne() throws Throwable {
        // noop -- doesn't need to be tested as it's a Spike story
    }

    //US1095963

    @Given("^a user has searched for provider$")
    public void aUserHasSearchedForProvider() throws Throwable {

        request = given().baseUri("").header("Content-Type", "application/json").body(commonSearchParams.toString());

        //This will be true if the scenario theExariInterviewIsBuiltWithTheSearchParameters has ran, showing a user has searched for provider
        assertTrue(commonSearchParams != null);

    }

    @When("^there are multiple results$")
    public void thereAreMultipleResults() throws Throwable {

        response = request.post();
        throw new PendingException();
    }

    @Then("^I see a list of those results\\.$")
    public void iSeeAListOfThoseResults() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^And I can select one to read more details\\.$")
    public void andICanSelectOneToReadMoreDetails() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    //
}
