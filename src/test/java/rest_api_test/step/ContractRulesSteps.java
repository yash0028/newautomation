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
    private static final String RESOURCE_SILENT_INCLUSION = "/v1.0/rules/heritage_silent_inclusion/market_product_met";
    private static final String RESOURCE_PCP_SPECIALTY = "/v1.0/rules/pcp_specialty/validate_pcp";

    private RequestSpecification request;
    private Response response;

    private JsonObject requestBody = new JsonObject();


    // US1439048 (silent inclusion)

    @Given("^\"([^\"]*)\" contains \"([^\"]*)\"$")
    public void uhg_siteContains(String field, String value) throws Throwable {
        requestBody.addProperty(field, value);
    }

    @And("^\"([^\"]*)\" = \"([^\"]*)\"$")
    public void marketNumberEquals(String field, String value){
        // Add the field and value to the request JSON
        requestBody.addProperty(field, value);
    }

    @When("^\"([^\"]*)\" (does|does NOT) contain the word \"([^\"]*)\"$")
    public void doesContainTheWord(String field, String doesContain, String value) throws Throwable {
        if(doesContain.equalsIgnoreCase("does")){
            requestBody.addProperty(field, value);
        }else {
            requestBody.addProperty(field, "");
        }

    }

    @Then("^silent inclusion criteria has been met is \"([^\"]*)\"$")
    public void silentInclusionCriteriaHasBeenMetIs(String result) throws Throwable {
        // Build out the request
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody);

        // Get the response
        response = request.post(RESOURCE_SILENT_INCLUSION);

        // Get the whole result element, then get the "result" JSON Object which contains the response data we need
        JsonElement responseElement = parseJsonElementResponse(response);
        JsonObject  responseObject = responseElement.getAsJsonObject().get("result").getAsJsonObject();

        // Get the market product groups and boolean to see if silent inclusion is met
        String silentInclusionMet = responseObject.get("silentInclusionMet").getAsString();

        // If result is true, silent inclusion met should be true, otherwise it should be false
        if (result.equalsIgnoreCase("true")){
            Assert.assertEquals("Silent inclusion is false when it should be true", result, silentInclusionMet);
        } else {
            Assert.assertEquals("Silent inclusion is true when it should be false", result, silentInclusionMet);
        }
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

    // US1367739 (Pilot Markets)

    @Given("^\"([^\"]*)\" equals \"([^\"]*)\"$")
    public void equals(String field, String value) throws Throwable {
        requestBody.addProperty(field, value);
    }

    @When("^\"([^\"]*)\" equals one of \"([^\"]*)\"$")
    public void equalsOneOf(String field, String value) throws Throwable {
        requestBody.addProperty(field, value);
    }

    @Then("^contract (is|is NOT) included in Pilot$")
    public void contractIsIncludedInPilot(String isOrIsNot) throws Throwable {
        // Build out the request
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody);

        Thread.sleep(300);

        // Get the response
        response = request.post(RESOURCE_PILOT_MARKET);

        // Assert successful response
        Assert.assertEquals("Response did not return status code 200", 200, response.getStatusCode());

        // Get the whole result element, then get the "result" JSON Object which contains the response data we need
        JsonElement resultElement = parseJsonElementResponse(response);
        JsonObject resultObject = resultElement.getAsJsonObject();

        // Get the includedInPilot part of the response, should be either a Y or N
        String includedInPilot = resultObject.get("result").getAsJsonObject().get("includedInPilot").getAsString();

        if(isOrIsNot.equalsIgnoreCase("is")){
            // Assert that includedInPilot is a Y
            Assert.assertEquals("The result was not included in pilot market when it should have been.", "Y", includedInPilot);
        }
        else{
            // Assert that includedInPilot is a N
            Assert.assertEquals("The result was included in pilot market when it should not have been.", "N", includedInPilot);
        }

    }

    @When("^\"([^\"]*)\" does not equal one of (?:.*)$")
    public void doesNotEqualOneOf(String field) throws Throwable {

        switch (field) {
            case "uhgMarketNumber":
                requestBody.addProperty(field, "");
                requestBody.addProperty("uhgSite", "Central UHN");
                requestBody.addProperty("uhgContractSubtypeHealthcare", "Medical Group Agreement");
                break;
            case "uhgSite":
                requestBody.addProperty("uhgMarketNumber", "03413");
                requestBody.addProperty(field, "");
                requestBody.addProperty("uhgContractSubtypeHealthcare", "Medical Group Agreement");
                break;
            case "uhgContractSubtypeHealthcare":
                requestBody.addProperty("uhgMarketNumber", "03413");
                requestBody.addProperty("uhgSite", "Southeast UHN");
                requestBody.addProperty(field, "");
                break;
            default:
                requestBody.addProperty("uhgMarketNumber", "");
                requestBody.addProperty("uhgSite", "");
                requestBody.addProperty("uhgContractSubtypeHealthcare", "");
                break;
        }

    }

    // US1367999 (PCP Standards definition)

    @Given("^the provider record \"([^\"]*)\" equals \"([^\"]*)\"$")
    public void theProviderRecordEquals(String field, String value) throws Throwable {
        requestBody.addProperty(field, value);

    }

    @And("^the NDB \"([^\"]*)\" equals \"([^\"]*)\"$")
    public void theNDBEquals(String field, String value) throws Throwable {
        requestBody.addProperty(field, value);
    }

    @When("^the primary \"([^\"]*)\" value equals one of (?:invalid )?\"([^\"]*)\"$")
    public void thePrimaryValueEqualsOneOf(String field, String value) throws Throwable {
        requestBody.addProperty(field, value);
    }

    @Then("^the provider record will be flagged as a \"([^\"]*)\" within the optum contract$")
    public void theProviderRecordWillBeAsAWithinTheOptumContract(String result) throws Throwable {
        // Build out the request
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody);

        // Get the response
        response = request.post(RESOURCE_PCP_SPECIALTY);

        // Assert successful response
        Assert.assertEquals("Response did not return status code 200", 200, response.getStatusCode());

        // Get the whole result element, then get the result as a JSON Object which contains the response data we need
        JsonElement resultElement = parseJsonElementResponse(response);
        JsonObject resultObject = resultElement.getAsJsonObject();

        // Get the networkRole part of the response, should be either PCP or Specialist
        String pcpResult = resultObject.get("result").getAsJsonObject().get("isPcp").getAsString();

        if(result.equalsIgnoreCase("PCP")){
            Assert.assertEquals("Network Role did not return what was expected", "Y", pcpResult);
        }
        else{
            Assert.assertEquals("Network Role did not return what was expected", "N", pcpResult);
        }

    }

}
