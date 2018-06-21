package StepDefinitions;

import cucumber.api.DataTable;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import gherkin.deps.com.google.gson.JsonObject;
import io.restassured.response.Response;
import io.restassured.response.ResponseBody;
import io.restassured.specification.RequestSpecification;

import java.util.List;

import static org.junit.Assert.assertTrue;
import static io.restassured.RestAssured.given;

/**
 * Created by jwacker on 5/16/2018.
 */
public class PESSteps {
    private RequestSpecification request;
    private Response response;
    private JsonObject commonSearchParams;
    private static String baseUri = "http://demographics-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static String counterPartiesUri = "/v1.0/counterparties/search";

    public PESSteps(){
        this.commonSearchParams = new JsonObject();

        commonSearchParams.addProperty("mpin", "30");
        commonSearchParams.addProperty("tin", "381359063");
        commonSearchParams.addProperty("npi", "1396717450");
    }

//F137899

    //US861016

    @Given("^the Exari Interview is built with the search parameters \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\"$")
    public void theExariInterviewIsBuiltWithTheSearchParameters(String mpin, String tin, String npi, String fn, String ln, String city, String zip, String state) throws Throwable {

        request = given().baseUri(baseUri).header("Content-Type", "application/json").body(commonSearchParams.toString());

    }

    @When("^the user completes the search parameters for Demographic data needs$")
    public void theUserCompletesTheSearchParametersForDemographicDataNeeds() throws Throwable {

        response = request.post(counterPartiesUri);

    }

    @Then("^the API should use the parameters to obtain the Demographic data from the source system \\(PES\\)$")
    public void theAPIShouldUseTheParametersToObtainTheDemographicDataFromTheSourceSystemPES() throws Throwable {

        ResponseBody raResponse = response.getBody();
        boolean result = true;
        String[] matches = new String[] {"mpin", "tin", "address"};

        //System.out.println(raResponse.asString());

        for(String field: matches){
            if(!raResponse.asString().toLowerCase().contains(field)) { result = false; }
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

        request = given().baseUri(baseUri).header("Content-Type", "application/json").body(commonSearchParams.toString());

        assertTrue(commonSearchParams != null);

    }

    @When("^there are multiple results$")
    public void thereAreMultipleResults() throws Throwable {

        response = request.post(counterPartiesUri);
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

        request = given().baseUri(baseUri).header("Content-Type", "application/json");

    }


    @When("^a user incorrectly inputs data$")
    public void aUserIncorrectlyInputsData() throws Throwable {
        JsonObject badJsonBody = new JsonObject();

        badJsonBody.addProperty("baddata1", "badvalue");
        badJsonBody.addProperty("baddata2", "badvalue");
        badJsonBody.addProperty("baddata3", "badvalue");
        badJsonBody.addProperty("baddata4", "badvalue");

        request.body(badJsonBody.toString());

        response = request.post(counterPartiesUri);
    }

    @Then("^the user receives a bad input error message$")
    public void theUserReceivesABadInputErrorMessage() throws Throwable {

        ResponseBody raResponse = response.getBody();
//        System.out.println("RESPONSE: " + raResponse.asString());

        assertTrue(raResponse.asString().toLowerCase().contains("error"));

    }

    @When("^the system goes down$")
    public void theSystemGoesDown() throws Throwable {

        request.baseUri(baseUri+"/asdf");
        response = request.post();

    }

    @Then("^the user receives a system error message$")
    public void theUserReceivesASystemErrorMessage() throws Throwable {

        ResponseBody raResponse = response.getBody();
        assertTrue(raResponse.asString().contains("error"));

    }

    @When("^a catastrophic error occurs$")
    public void aCatastrophicErrorOccurs() throws Throwable {

        request.baseUri(baseUri+"/asdf");
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

    //US1094026
    
    @Given("^UHC will need to provide Exari with PES data$")
    public void uhcWillNeedToProvideExariWithPESData() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^Exari calls PES with MPIN and TIN$")
    public void exariCallsPESWithMPINAndTIN() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^an external data query will return a list of responses with the following populated fields if the result is a physician:$")
    public void anExternalDataQueryWillReturnAListOfResponsesWithTheFollowingPopulatedFieldsIfTheResultIsAPhysician() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^an external data query will return a list of responses with the following populated fields if the result is a facility:$")
    public void anExternalDataQueryWillReturnAListOfResponsesWithTheFollowingPopulatedFieldsIfTheResultIsAFacility() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
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

        request = given().baseUri(baseUri).header("Content-Type", "application/json").body(jsonBody.toString());
    }

    @Then("^PES returns the following information:$")
    public void pesReturnsTheFollowingInformation(DataTable fieldsDT) throws Throwable {
        boolean match         = true;
        List<String> fields   = fieldsDT.asList(String.class);

        response              = request.post(counterPartiesUri);
        String responseString = response.asString().toLowerCase();

//        System.out.println("RESPONSE: " + responseString);

        for(String field: fields){
            field = field.trim();

            if(!responseString.contains(field.toLowerCase())){
                match = false;
//               System.out.println("-----FAILED FIELD: " + field);
            }
        }
        assertTrue(match);
    }
}
