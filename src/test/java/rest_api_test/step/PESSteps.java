package rest_api_test.step;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonElement;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import io.restassured.response.Response;
import io.restassured.response.ResponseBody;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

import java.util.List;

import static io.restassured.RestAssured.given;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * Created by jwacker on 5/16/2018.
 */
public class PESSteps implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(PESSteps.class);

    private static final String ENDPOINT = "http://demographics-api-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_COUNTER_PARTIES_SEARCH = "/v1.0/counterparties/search";
    private static final String RESOURCE_ROSTER_SEARCH = "/v1.0/roster/search";
    private static final String RESOURCE_LOCATIONS_SEARCH = "/v1.0/locations/search";

    private RequestSpecification request;
    private Response response;
    private JsonObject commonSearchParams;
    private JsonElement responseJson;
    private JsonArray responseArray;

    public PESSteps() {
        this.commonSearchParams = new JsonObject();

        commonSearchParams.addProperty("mpin", "12345");
        commonSearchParams.addProperty("tin", "760027557");
        //Commenting out NPI because it's a WIP for the new combined PES API
        //commonSearchParams.addProperty("npi", "1396717450");
    }

//F137899

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

        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(commonSearchParams.toString());

        assertTrue(commonSearchParams != null);

    }

    @When("^there are multiple results$")
    public void thereAreMultipleResults() throws Throwable {

        response = request.post(RESOURCE_COUNTER_PARTIES_SEARCH);
        ResponseBody raResponse = response.getBody();

        assertTrue(response != null);
    }

    @Then("^I see a list of those results\\.$")
    public void iSeeAListOfThoseResults() throws Throwable {

        ResponseBody raResponse = response.getBody();
        assertTrue(raResponse.asString() != null);
    }

    @Then("^I can select one to read more details\\.$")
    public void andICanSelectOneToReadMoreDetails() throws Throwable {
        // noop
    }

    //US1093992

    @Given("^a user needs to call PES$")
    public void aUserNeedsToCallPES() throws Throwable {

        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json");

    }


    @When("^a user incorrectly inputs data$")
    public void aUserIncorrectlyInputsData() throws Throwable {
        JsonObject badJsonBody = new JsonObject();

        badJsonBody.addProperty("mpin", "abcd1234");
        badJsonBody.addProperty("baddata1", "badvalue");
        badJsonBody.addProperty("baddata2", "badvalue");
        badJsonBody.addProperty("baddata3", "badvalue");
        badJsonBody.addProperty("baddata4", "badvalue");

        request.body(badJsonBody.toString());

        response = request.post(RESOURCE_COUNTER_PARTIES_SEARCH);
    }

    @Then("^the user receives a bad input error message$")
    public void theUserReceivesABadInputErrorMessage() throws Throwable {

        ResponseBody raResponse = response.getBody();
//        System.out.println("RESPONSE: " + raResponse.asString());

        assertTrue(raResponse.asString().toLowerCase().contains("[]"));

    }

    @When("^the system goes down$")
    public void theSystemGoesDown() throws Throwable {

        request.baseUri(ENDPOINT + "/asdf");
        response = request.post();

    }

    @Then("^the user receives a system error message$")
    public void theUserReceivesASystemErrorMessage() throws Throwable {

        ResponseBody raResponse = response.getBody();
        assertTrue(raResponse.asString().contains("error"));

    }

    @When("^a catastrophic error occurs$")
    public void aCatastrophicErrorOccurs() throws Throwable {

        request.baseUri(ENDPOINT + "/asdf");
        response = request.post();

    }

    @Then("^a service ticket will need to be created\\.$")
    public void aServiceTicketWillNeedToBeCreated() throws Throwable {

        ResponseBody raResponse = response.getBody();
        assertTrue(raResponse.asString().contains("error"));

    }

    @Then("^an error code will be logged\\.$")
    public void anErrorCodeWillBeLogged() throws Throwable {

        ResponseBody raResponse = response.getBody();
        assertTrue(raResponse.asString().contains("error"));

    }

    //US861016

    @Given("^I am a User with access to add a Counterparty to an Interview$")
    public void iAmAUserWithAccessToAddACounterpartyToAnInterview() throws Throwable {
        //noop - assuming access
    }

    @When("^I search for a Counterparty using MPIN of \"([^\"]*)\"$")
    public void iSearchForACounterpartyUsingMPINOf(String mpin) throws Throwable {
        JsonObject jsonBody = new JsonObject();

        jsonBody.addProperty("mpin", mpin);

        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(jsonBody.toString());
        response = request.post(RESOURCE_COUNTER_PARTIES_SEARCH);
    }

    @Then("^PES returns the following information:$")
    public void pesReturnsTheFollowingInformation(DataTable fieldsDT) throws Throwable {
        boolean match = true;
        List<String> fields = fieldsDT.asList(String.class);

        String responseString = response.asString().toLowerCase();

//        System.out.println("RESPONSE: " + responseString);

        for (String field : fields) {
            field = field.trim();

            if (!responseString.contains(field.toLowerCase())) {
                match = false;
                log.info("Field: {} was not found in the response.", field);
            }
        }
        assertEquals(200, response.statusCode());
        assertTrue("The response did not contain all of the necessary fields.", match);
    }

    //US1253705

    @Given("^a user wants to populate appendix 1 with addresses$")
    public void aUserWantsToPopulateAppendixWithAddresses() throws Throwable {
        // noop - assuming true
    }

    @When("^a \"([^\"]*)\" of \"([^\"]*)\" is passed to (roster|appendix 1)$")
    public void aOfIsPassed(String param, String value, String searchType) throws Throwable {
        // Create the request JSON
        JsonObject requestParams = new JsonObject();
        requestParams.addProperty(param, value);

        // Create the request and give it the JSON params
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestParams.toString());

        // Get the response from the roster endpoint (roster and appendix 1 share the same endpoint)
        if (searchType.equalsIgnoreCase("appendix 1")) {
            response = request.post(RESOURCE_LOCATIONS_SEARCH);
        } else {
            response = request.post(RESOURCE_ROSTER_SEARCH);
        }

    }

    //US1311485

    @Given("^a user wants to do a search for (?:Roster|Counterparty)$")
    public void aUserWantsToDoASearchForRoster() throws Throwable {
        // assuming true
    }

    //US1364505

    @And("^the search results give back more than (\\d+) (providers|locations)$")
    public void theSearchResultsGiveBackMoreThanProviders(int min, String searchType) throws Throwable {
        Assert.assertTrue("Response did not return back 200 status code", response.statusCode() == 200);

        this.responseJson = parseJsonElementResponse(response);
        JsonArray resultArray = new JsonArray();

        if(searchType.equalsIgnoreCase("providers")){
            resultArray = responseJson.getAsJsonObject().get("providers").getAsJsonArray();
        }
        else{
            resultArray = responseJson.getAsJsonObject().get("locations").getAsJsonArray();
        }

        int rSize = resultArray.size();

        Assert.assertTrue("Response did not contain more than " + min + " " + searchType +", but contained " + rSize,rSize > min);
    }

    @Then("^the user can see up to (\\d+) (providers|locations)$")
    public void theUserCanSeeUpToProviders(int max, String searchType) throws Throwable {
        JsonArray resultArray = responseJson.getAsJsonObject().get(searchType).getAsJsonArray();;

        int pSize = resultArray.size();

        Assert.assertTrue("Response contained more than " + max + " " + searchType + ", totaling " + pSize,pSize < max);
    }

    //US1358993

    @When("^a call is made for additional locations with MPIN \"([^\"]*)\" and TIN \"([^\"]*)\"$")
    public void aCallIsMadeForAdditionalLocationsWithMPINAndTIN(String mpin, String tin) throws Throwable {
        JsonObject requestParams = new JsonObject();
        requestParams.addProperty("mpin", mpin);
        requestParams.addProperty("tin", tin);

        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestParams.toString());

        response = request.post(RESOURCE_LOCATIONS_SEARCH);
    }

    @Then("^PES returns the following fields for provider:$")
    public void pesReturnsTheFollowingFieldsForProvider(DataTable fieldsDt) throws Throwable {
        List<String> fields = fieldsDt.asList(String.class);

        Assert.assertEquals(200, response.getStatusCode());

        // The response contains a JsonArray called 'locations' with all of the information we need, so let's get that
        this.responseArray = parseJsonElementResponse(response).getAsJsonObject().get("locations").getAsJsonArray();

        boolean allMatch = true;

        // Cycle through each element in the array, and make sure it contains the correct provider fields
        for(JsonElement elem: responseArray){
            for(String field: fields){
                if(!elem.getAsJsonObject().has(field)){
                    allMatch = false;
                }
            }
        }

        Assert.assertTrue("Not all fields required for provider match in the response for additional locations", allMatch);
    }

    @And("^PES returns the additional PLSV and their associated billing address or mailing address$")
    public void pesReturnsTheAdditionalPLSVAndTheirAssociatedBillingAddressOrMailingAddress() throws Throwable {
        boolean hasBothAddresses = true;

        // Make sure each element in the response has both types of addresses
        for(JsonElement elem: responseArray){
            if(!elem.getAsJsonObject().has("serviceAddress") && !elem.getAsJsonObject().has("billingAddress")){
                hasBothAddresses = false;
            }
        }

        Assert.assertTrue("At least one of the returned additional locations does not have both PLSV and billing/mailing addresses", hasBothAddresses);
    }

    @And("^PES returns the following fields for address:$")
    public void pesReturnsTheFollowingFieldsForAddress(DataTable fieldsDt) throws Throwable {
        List<String> fields = fieldsDt.asList(String.class);

        Assert.assertEquals(200, response.getStatusCode());

        boolean allMatch = true;

        // Cycle through each element in the response
        for(JsonElement elem: responseArray){
            // Get the objects for both of the additional location elements
            JsonObject plsv = elem.getAsJsonObject().get("serviceAddress").getAsJsonObject();
            JsonObject billing = elem.getAsJsonObject().get("billingAddress").getAsJsonObject();

            // Make sure each location element contains the correct fields
            for(String field: fields){
                if(!plsv.getAsJsonObject().has(field)){
                    allMatch = false;
                }
                if(!billing.getAsJsonObject().has(field)){
                    allMatch = false;
                }
            }
        }

        Assert.assertTrue("Not all fields required for address match in the response for additional locations", allMatch);
    }

    // US1416329 (Changes to Counterparty Search

    @Given("^a user wants to find a Counter Party$")
    public void aUserWantsToFindACounterParty() throws Throwable {
        // noop
    }

    @When("^they search using a combo input parameter \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\"$")
    public void theySearchUsingAComboInputParameter(String field1, String field2, String value1, String value2) throws Throwable {
        // Build out the request body
        JsonObject requestParams = new JsonObject();

        requestParams.addProperty(field1, value1);
        requestParams.addProperty(field2, value2);

        // Build the request
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestParams.toString());

    }

    @Then("^they get back all of the possible providers and each providers associated \"([^\"]*)\" number$")
    public void theyGetBackAllOfThePossibleProvidersAndEachProvidersAssociatedNumber(String field) throws Throwable {
        // Get the response
        response = request.post(RESOURCE_COUNTER_PARTIES_SEARCH);

        // Assert successful response
        Assert.assertEquals("Service did not return a successful response", 200, response.getStatusCode());

        // Get the response as a JsonArray
        JsonElement responseElem = parseJsonElementResponse(response);
        JsonArray responseArray = responseElem.getAsJsonObject().get("counterParties").getAsJsonArray();

        boolean allMatch = true;

        // Make sure each entry in the response has the required field
        for(JsonElement elm: responseArray){
            JsonObject curObj = elm.getAsJsonObject();

            if(!curObj.has(field)){
                allMatch = false;
            }
        }

        // Assert the above check was successful
        Assert.assertTrue("One of the returned counter party results did not contain field: " + field, allMatch);
    }

    // US1410149

    @When("^I search for provider roster with \"([^\"]*)\" of value \"([^\"]*)\"$")
    public void iSearchForProviderRosterWithOfValue(String property, String value) throws Throwable {
        // Build out the request body
        JsonObject requestParams = new JsonObject();

        requestParams.addProperty(property, value);

        // Build the request
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestParams.toString());
    }

    @And("^I search using query parameter \"([^\"]*)\" of value \"([^\"]*)\"$")
    public void iSearchUsingQueryParameterOfValue(String param, String value) throws Throwable {
        // Add the pagination query param to the request
        request.queryParam(param, value);
    }

    @Then("^I see (\\d+) results returned on each page$")
    public void iSeeResultsReturnedOnEachPage(int numResults) throws Throwable {
        // Get the response
        response = request.post(RESOURCE_ROSTER_SEARCH);

        // Get the content element of the response as a JsonArray
        JsonArray resArray = parseJsonElementResponse(response).getAsJsonObject().get("content").getAsJsonArray();

        // Log the page number the test is on for debug purposes
        String curPage = parseJsonElementResponse(response).getAsJsonObject().get("number").getAsString();
        log.info("Current page: {}", curPage);

        // Assert that the number of results in the array are as expected
        Assert.assertEquals("The response did not contain the correct number of results. ", numResults, resArray.size());
    }

    // US1565152 - Adjust existing API to include attributes added by PES Team

    @When("^I search for a (Counterparty|Roster) using \"([^\"]*)\" of \"([^\"]*)\"$")
    public void iSearchForACounterpartyUsingOf(String resource, String property, String value) throws Throwable {
        JsonObject requestParams = new JsonObject();

        requestParams.addProperty(property, value);

        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestParams.toString());

        if (resource.equals("Counterparty")){
            response = request.post(RESOURCE_COUNTER_PARTIES_SEARCH);
        }
        else if (resource.equals("Roster")){
            response = request.post(RESOURCE_ROSTER_SEARCH);
        }
    }
}
