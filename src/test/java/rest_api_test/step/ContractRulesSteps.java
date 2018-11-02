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

import static io.restassured.RestAssured.given;

public class ContractRulesSteps implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(ContractRulesSteps.class);

    private static final String ENDPOINT = "http://contract-rules-api-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_IPA_DETERMINATION = "/v1.0/rules/ipa_determination/validate_market_network_values";
    private static final String RESOURCE_PILOT_MARKET = "/v1.0/rules/pilot_market/validate";
    private static final String RESOURCE_SILENT_INCLUSION = "";


    private RequestSpecification request;
    private Response response;

    private JsonObject requestBody = new JsonObject();


    // US1368002 (silent inclusion)

    @Given("^\"([^\"]*)\" contains \"([^\"]*)\"$")
    public void uhg_siteContains(String site) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^\"([^\"]*)\" = \"([^\"]*)\"$")
    public void marketNumberEquals(String field, String value){
        // Add the field and value to the request JSON
        requestBody.addProperty(field, value);
    }

    @When("^\"([^\"]*)\" does contain the word \"([^\"]*)\"$")
    public void doesContainTheWord(String arg0, String arg1) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^\"([^\"]*)\" silent inclusion criteria has NOT been met for \"([^\"]*)\"$")
    public void silentInclusionCriteriaHasNOTBeenMetFor(String siType, String marketProduct) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    // US1368004 (IPA Determination)

    @Given("^silent inclusion criteria for \"([^\"]*)\" values \"([^\"]*)\" (has|has NOT) been met$")
    public void silentInclusionCriteriaForValuesHasBeenMet(String arg0, String arg1, String condition) throws Throwable {
        // Assume True for now
        // todo: add check to validate this has/has not been met once silent inclusion is completed
    }

    @When("^\"([^\"]*)\" (does|does NOT) include \"([^\"]*)\"$")
    public void doesInclude(String field, String includes, String value) throws Throwable {
        // Add the field and value to the request JSON
        if(includes.equalsIgnoreCase("does")){
            requestBody.addProperty(field, value);
        } else{
            requestBody.addProperty(field, "doesNotIncludeTestValue");
        }

    }

    // Uses same @And step as US1368002 (marketNumberEquals())

    @Then("^\"([^\"]*)\" value \"([^\"]*)\" and \"([^\"]*)\" value of \"([^\"]*)\" recorded in the OCM record$")
    public void valueAndValueOfRecordedInTheOCMRecord(String field1, String value1, String field2, String value2) throws Throwable {
        // Build out the request
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody);

        // Get the response
        response = request.post(RESOURCE_IPA_DETERMINATION);

        // Assert successful response
        Assert.assertEquals("Response did not return status code 200", 200, response.getStatusCode());

        // Get the whole result element, then get the "result" JSON Object which contains the response data we need
        JsonElement resultElement = parseJsonElementResponse(response);
        JsonObject resultObject = resultElement.getAsJsonObject().get("result").getAsJsonObject();

        // Get the actual values from respective fields in response
        String f1Result = resultObject.get(field1).getAsString();
        String f2Result = resultObject.get(field2).getAsString();

        Assert.assertEquals("Field " + field1 + " in response did not match what was expected", value1, f1Result);
        Assert.assertTrue("Field " + field2 + " in response did not contain what was expected", f2Result.contains(value2));
    }

    // US1368004 (IPA Determination) (error test cases)

    @Then("^return a Bad Request error$")
    public void returnABadRequestError() throws Throwable {
        // Build out the request
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody);

        // Get the response
        response = request.post(RESOURCE_IPA_DETERMINATION);

        // Assert successful response
        Assert.assertEquals("Response did not return status code 400", 400, response.getStatusCode());

        // Get the whole result element, then get the "result" JSON Object which contains the response data we need
        JsonElement resultElement = parseJsonElementResponse(response);
        JsonObject resultObject = resultElement.getAsJsonObject();

        String message = resultObject.get("message").getAsString();

        // Assert that the response contains the word 'error'
        Assert.assertTrue("The response does not contain an error", message.contains("error"));
    }
}
