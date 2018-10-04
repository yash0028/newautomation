package rest_api_test.step;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import gherkin.deps.com.google.gson.JsonObject;
import io.cucumber.datatable.DataTable;
import io.restassured.response.Response;
import io.restassured.response.ResponseBody;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

import java.util.List;

import static io.restassured.RestAssured.given;
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
//               System.out.println("-----FAILED FIELD: " + field);
            }
        }
        assertTrue(match);
    }

    //US1094026

    @Given("^UHC will need to provide Exari with PES data$")
    public void uhcWillNeedToProvideExariWithPESData() throws Throwable {
        // Pending because manually tested
        throw new PendingException();
    }

    @When("^Exari calls PES with MPIN and TIN$")
    public void exariCallsPESWithMPINAndTIN() throws Throwable {
        // Pending because manually tested
        throw new PendingException();
    }

    @Then("^an external data query will return a list of responses with the following populated fields if the result is a physician:$")
    public void anExternalDataQueryWillReturnAListOfResponsesWithTheFollowingPopulatedFieldsIfTheResultIsAPhysician(DataTable table) throws Throwable {
        // Pending because manually tested
        throw new PendingException();
    }

    @And("^an external data query will return a list of responses with the following populated fields if the result is a facility:$")
    public void anExternalDataQueryWillReturnAListOfResponsesWithTheFollowingPopulatedFieldsIfTheResultIsAFacility(DataTable table) throws Throwable {
        // Pending because manually tested
        throw new PendingException();
    }

    //US1178363

    @When("^a user calls the service and service is unable to fulfill the request$")
    public void aUserCallsTheServiceAndServiceIsUnableToFulfillTheRequest() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^it must respond back with appropriate error code$")
    public void itMustRespondBackWithAppropriateErrorCode() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^client must show the error details with sufficient information to guide them in order to take an action to resolve the error situation$")
    public void clientMustShowTheErrorDetailsWithSufficientInformationToGuideThemInOrderToTakeAnActionToResolveTheErrorSituation() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    //US

    @Given("that a user wants to get provider details from PES service")
    public void that_a_user_wants_to_get_provider_details_from_PES_service() {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("a request is sent with MPN andTIN to CLM microservice")
    public void a_request_is_sent_with_MPN_andTIN_to_CLM_microservice() {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("provider details will be returned to user")
    public void provider_details_will_be_returned_to_user() {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    //US

    @Given("that PES has many API's")
    public void that_PES_has_many_API_s() {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("we call those APIs, we need to understand what can be returned")
    public void we_call_those_APIs_we_need_to_understand_what_can_be_returned() {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("the development team should understand the PES APIs.")
    public void the_development_team_should_understand_the_PES_APIs() {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }


    //US1210131

    @Given("^That PES needs to provide Exari with Bulk Provider Extract$")
    public void thatPESNeedsToProvideExariWithBulkProviderExtract() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^a developer will research how to provide Exari with the bulk provider extract\\.$")
    public void aDeveloperWillResearchHowToProvideExariWithTheBulkProviderExtract() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    //US1194560

    @When("^querying the Appendix (\\d+) Lookup external data query$")
    public void queryingTheAppendixLookupExternalDataQuery(int arg0) throws Throwable {
        // Keeping as pending, as this test is manually done
        throw new PendingException();
    }

    @Then("^a valid response is returned to Exari$")
    public void aValidResponseIsReturnedToExari() throws Throwable {
        // Keeping as pending, as this test is manually done
        throw new PendingException();
    }

    //US1100727

    @Given("^I as a user have populated the Exari Provider Roster with MPIN, TAX ID, Provider Full Name \\(First, Last\\), and NPI$")
    public void iAsAUserHavePopulatedTheExariProviderRosterWithMPINTAXIDProviderFullNameFirstLastAndNPI() throws Throwable {
        // Keeping as pending, as this test is manually done
        throw new PendingException();
    }

    @When("^Exari reaches out to CLM Roster Service with parameters of:$")
    public void exariReachesOutToCLMRosterServiceWithParametersOf() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
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

    @Given("^a user wants to do a search for Roster$")
    public void aUserWantsToDoASearchForRoster() throws Throwable {
        // noop - assuming true
    }
}
