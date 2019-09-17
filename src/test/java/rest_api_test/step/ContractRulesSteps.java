package rest_api_test.step;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import io.restassured.response.Response;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.PayloadMap;
import rest_api_test.api.contractrules.contractmetadata.IContractRulesInteract;
import rest_api_test.util.IRestStep;

import java.util.List;

public class ContractRulesSteps implements IRestStep, IContractRulesInteract {
    private static final Logger log = LoggerFactory.getLogger(ContractRulesSteps.class);

    private Response response;


    // US1439048 (silent inclusion)

    @When("^\"([^\"]*)\" (does|does NOT) contain the word \"([^\"]*)\"$")
    public void doesContainTheWord(String field, String doesContain, String value) throws Throwable {
        if(doesContain.equalsIgnoreCase("does")){
            getPayload().put(field, value);
        }else {
            getPayload().put(field, "");
        }

    }

    @Then("^silent inclusion criteria has been met is \"([^\"]*)\"$")
    public void silentInclusionCriteriaHasBeenMetIs(String result) throws Throwable {
        response = getSilentInclusion(getPayload());

        // Get the whole result element, then get the "result" JSON Object which contains the response data we need
        JsonElement responseElement = parseJsonElementResponse(response);
        JsonObject  responseObject = responseElement.getAsJsonObject().get("result").getAsJsonObject();

        // Get the market product groups and boolean to see if silent inclusion is met
        String silentInclusionMet = responseObject.get("silentInclusionMet").getAsString();

        log.info("Response: {}", response.asString());

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
            getPayload().put(field, value);
        } else{
            getPayload().put(field, "doesNotIncludeTestValue");
        }
    }

    // Uses same @And step as US1368002 (marketNumberEquals())

    @Then("^\"([^\"]*)\" value of \"([^\"]*)\" recorded in the OCM record$")
    public void valueAndValueOfRecordedInTheOCMRecord(String field, String value) throws Throwable {
        response = getIpaDetermination(getPayload());

        // Assert successful response
        Assert.assertEquals("Response did not return status code 200", 200, response.getStatusCode());

        // Get the whole result element, then get the "result" JSON Object which contains the response data we need
        JsonElement resultElement = parseJsonElementResponse(response);
        JsonObject resultObject = resultElement.getAsJsonObject().get("result").getAsJsonObject();

        // Get the actual values from respective fields in response
        String result = resultObject.get(field).getAsString();

        Assert.assertTrue("Field " + field + " in response did not contain what was expected", result.contains(value));
    }

    // US1368004 (IPA Determination) (error test cases)

    @Then("^return a Bad Request error$")
    public void returnABadRequestError() throws Throwable {
        response = getIpaDetermination(getPayload());

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

    @Then("^contract (is|is NOT) included in Pilot$")
    public void contractIsIncludedInPilot(String isOrIsNot) throws Throwable {
        Thread.sleep(300);

        // Get the response
        response = getPilotMarket(getPayload());

        // Assert successful response
        Assert.assertEquals("Response did not return status code 200", 200, response.getStatusCode());

        // Get the whole result element, then get the "result" JSON Object which contains the response data we need
        JsonElement resultElement = parseJsonElementResponse(response);
        JsonObject resultObject = resultElement.getAsJsonObject();

        // Get the includedInPilot part of the response, should be either a Y or N
        boolean includedInPilot = resultObject.get("result").getAsJsonObject().get("includedInPilot").getAsBoolean();

        if(isOrIsNot.equalsIgnoreCase("is")){
            // Assert that includedInPilot is true
            Assert.assertTrue("The result was not included in pilot market when it should have been.", includedInPilot);
        }
        else{
            // Assert that includedInPilot is false
            Assert.assertFalse("The result was included in pilot market when it should not have been.", includedInPilot);
        }

    }

    @When("^\"([^\"]*)\" does not equal one of (?:.*)$")
    public void doesNotEqualOneOf(String field) throws Throwable {
        PayloadMap pm = new PayloadMap();

        switch (field) {
            case "uhgMarketNumber":
                pm.put(field, "");
                pm.put("uhgSite", "Central UHN");
                pm.put("uhgContractSubtypeHealthcare", "Medical Group Agreement");
                break;
            case "uhgSite":
                pm.put("uhgMarketNumber", "03413");
                pm.put(field, "");
                pm.put("uhgContractSubtypeHealthcare", "Medical Group Agreement");
                break;
            case "uhgContractSubtypeHealthcare":
                pm.put("uhgMarketNumber", "03413");
                pm.put("uhgSite", "Southeast UHN");
                pm.put(field, "");
                break;
            default:
                pm.put("uhgMarketNumber", "");
                pm.put("uhgSite", "");
                pm.put("uhgContractSubtypeHealthcare", "");
                break;
        }

        getPayload().putAll(pm);
    }

    // US1367999 (PCP Standards definition)

    @Then("^the provider record will be flagged as a \"([^\"]*)\" within the optum contract$")
    public void theProviderRecordWillBeAsAWithinTheOptumContract(String result) throws Throwable {
        response = getPcpSpeciality(getPayload());

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

    // US1368000 (ENW Indicator)

    @Then("^the ENW IND will be populated with \"([^\"]*)\" within the OCM Contract Model$")
    public void theENWINDWillBePopulatedWithWithinTheOCMContractModel(String result) throws Throwable {
        Thread.sleep(700);

        response = getEnwIndicator(getPayload());

        // Assert successful response
        Assert.assertEquals("Response did not return status code 200", 200, response.getStatusCode());

        // Get the whole result element, then get the result as a JSON Object which contains the response data we need
        JsonElement resultElement = parseJsonElementResponse(response);
        JsonObject resultObject = resultElement.getAsJsonObject();

        // Get the networkRole part of the response, should be either PCP or Specialist
        String enwResult = resultObject.get("result").getAsJsonObject().get("isEnw").getAsString();

        // Assert that the ENW result returns what was expected
        Assert.assertEquals("ENW result did not return what was expected", result, enwResult);

    }

    // US1367998 - (Product Penalty Table)

    @When("^\"([^\"]*)\" value (does not include|includes) one or more of \"([^\"]*)\"$")
    public void valueIncludesOneOrMoreOf(String field, String includes, String value) throws Throwable {
        // Create requestArray to hold the value for product
        JsonArray requestArray = new JsonArray();

        // Add the product to the array if it is supposed to be included
        if (includes.equals("includes")) {
            requestArray.add(value);
        } else {
            requestArray.add("");
        }

        // Add the array to the requestBody
        getPayload().put(field, requestArray);
    }

    @Then("^Penalty Notification Table (is|is not) required in the OCM$")
    public void penaltyNotificationTableIsRequiredInTheOCM(String isOrIsNot) throws Throwable {
        Thread.sleep(700);

        response = getPenaltyTable(getPayload());

        // Assert successful response
        Assert.assertEquals("Response did not return status code 200", 200, response.getStatusCode());

        // Get the whole result element, then get the result as a JSON Object which contains the response data we need
        JsonElement resultElement = parseJsonElementResponse(response);
        JsonObject resultObject = resultElement.getAsJsonObject();

        // Get the penaltyTable part of the response, should be either true or false
        boolean penaltyTableRequired = resultObject.get("result").getAsJsonObject().get("penaltyTableRequired").getAsBoolean();

        if (isOrIsNot.equals("is")) {
            Assert.assertTrue("Penalty Table Required was false when it should be true", penaltyTableRequired);
        } else {
            Assert.assertFalse("Penalty Table Required was true when it should be false", penaltyTableRequired);
        }
    }

    // US1782846 - Update OCM Silent Inclusion

    @And("the result contains {string} of:")
    public void theResultContainsOf(String jsonProperty, DataTable expectedProductMarketGroupsDT) {
        List<String> expectedProductMarketGroups = expectedProductMarketGroupsDT.asList();

        JsonArray productMarketGroups = parseJsonElementResponse(response)
                .getAsJsonObject().get("result").getAsJsonObject()
                .get(jsonProperty).getAsJsonArray();

        for(String productMarket: expectedProductMarketGroups) {
            Assert.assertTrue("Result did not contain product market group: " + productMarket,
                    productMarketGroups.toString().contains(productMarket));
        }
    }
}
