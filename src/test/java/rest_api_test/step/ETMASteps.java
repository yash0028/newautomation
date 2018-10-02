package rest_api_test.step;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

import static io.restassured.RestAssured.given;
import static io.restassured.RestAssured.when;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * Created by jwacker on 5/11/2018.
 */
public class ETMASteps {
    private static final String BASE_URI = "http://exari-table-maint-api-clm-stage.ocp-ctc-core-nonprod.optum.com";
    private static final String MARKETS_ENDPOINT = "/v1.0/markets";
    private static final String CONTRACT_CLASSES_ENDPOINT = "/v1.0/contract_classes/search";
    private static final String CONTRACT_VALIDATION_ENDPOINT = "/v1.0/contract_validations";
    private static final String ALL_CONTRACT_VALIDATION_ENDPOINT = "/v1.0/contract_validations/all";
    private static final String RETRO_ACTIVE_REASON_CODE_ENDPOINT = "/v1.0/retro_reason_codes";
    private RequestSpecification request;
    private Response response;
    private String contractType     = "";
    private JsonObject requestBody  = new JsonObject();

//F182490

    //US1100261

    @Given("^the connection details$")
    public void theConnectionDetails() throws Throwable {

        // noop -- connection details declared above

    }

    @When("^the micro service calls the ETMA tables$")
    public void theMicroServiceCallsTheETMATables() throws Throwable {

        response = when().get(BASE_URI + MARKETS_ENDPOINT);

    }

    @Then("^the connection is successful$")
    public void theConnectionIsSuccessful() throws Throwable {

        assertEquals(200, response.getStatusCode());

    }

    //US1093992

    @Given("^the provider's specialty indicator is \"([^\"]*)\" and contract type is \"([^\"]*)\"$")
    public void theProviderSSpecialtyIndicatorIsAndContractTypeIs(String specialtyIndicator, String contractType) throws Throwable {
        this.contractType = contractType;

        requestBody.addProperty("specialtyIndicator", specialtyIndicator);

        request = given().baseUri(BASE_URI).header("Content-Type", "application/json").body(requestBody.toString());
    }

    @When("^finding the Specialty in ETMA$")
    public void findingTheSpecialtyInETMA() throws Throwable {
        response = request.post(CONTRACT_CLASSES_ENDPOINT);
    }

    @When("^(?:And the|the) service returns paper types \"([^\"]*)\" as matched in ETMA table$")
    public void andTheServiceReturnsPaperTypesAsMatchedInETMATable(String paperTypes) throws Throwable {
        String[] validPaperTypes = paperTypes.split(",");

        boolean match            = true;
        String responseString    = response.asString().toLowerCase();

        for(String type: validPaperTypes){
            type = type.trim();

            if(!responseString.contains(type.toLowerCase())){
                match = false;
            }
        }

//        System.out.println(response.asString());
        assertTrue(match);
    }

    @Then("^the service will return a \"([^\"]*)\" value$")
    public void theServiceWillReturnAValue(String value) throws Throwable {

        requestBody.addProperty("contractClass", contractType);

        request = given().baseUri(BASE_URI).header("Content-Type", "application/json").body(requestBody.toString());
        response = request.post(CONTRACT_VALIDATION_ENDPOINT);

        assertTrue(response.asString().toLowerCase().contains(value.toLowerCase()));
    }

    //US1103709

    @Given("^the provider's specialty indicator is \"([^\"]*)\" and contract type is not known$")
    public void theProviderSSpecialtyIndicatorIsAndContractTypeIsNotKnown(String specialtyIndicator) throws Throwable {
        requestBody.addProperty("specialtyIndicator", specialtyIndicator);

        request = given().baseUri(BASE_URI).header("Content-Type", "application/json").body(requestBody.toString());
    }

    @Then("^service will NOT return paper types \"([^\"]*)\" from the ETMA table$")
    public void serviceWillNOTReturnPaperTypeFromTheETMATable(String paperTypes) throws Throwable {
        String[] invalidPaperTypes = paperTypes.split(",");
        boolean match              = false;
        String responseString      = response.asString().toLowerCase();

        for(String type: invalidPaperTypes){
            type = type.trim();

            if(responseString.contains(type.toLowerCase())){
                match = true;
            }
        }

        assertEquals(false, match);
    }

    //US1103710

    @Given("^the provider's organization type is \"([^\"]*)\" and contract type is not known$")
    public void theProviderSOrganizationTypeIsAndContractTypeIsNotKnown(String organizationType) throws Throwable {
        requestBody.addProperty("organizationType", organizationType);

        request = given().baseUri(BASE_URI).header("Content-Type", "application/json").body(requestBody.toString());
    }

    @When("^finding the Org Type in ETMA$")
    public void findingTheOrgTypeInETMA() throws Throwable {
        response = request.post(CONTRACT_CLASSES_ENDPOINT);
    }

    //US1097030

    @Given("^the provider's organization type is \"([^\"]*)\" and contract type is \"([^\"]*)\"$")
    public void theProviderSOrganizationTypeIsAndContractTypeIs(String orgType, String contractType) throws Throwable {
        requestBody.addProperty("organizationType", orgType);
        this.contractType = contractType;

        request = given().baseUri(BASE_URI).header("Content-Type", "application/json").body(requestBody.toString());
    }

    //US1097065

    @Given("^the provider's Specialty Code \"([^\"]*)\" is passed to the service$")
    public void theProviderSSpecialtyCodeIsPassedToTheService(String specialtyIndicator) throws Throwable {
        requestBody.addProperty("specialtyIndicator", specialtyIndicator);

        request = given().baseUri(BASE_URI).header("Content-Type", "application/json").body(requestBody.toString());
    }

    @Given("^the provider's Org Type \"([^\"]*)\" is passed to the service$")
    public void theProviderSOrgTypeIsPassedToTheService(String orgType) throws Throwable {
        requestBody.addProperty("organizationType", orgType);

        request = given().baseUri(BASE_URI).header("Content-Type", "application/json").body(requestBody.toString());
    }

    //US1129434

    @Given("^the providers (Specialty codes|Org Types) \"([^\"]*)\" and paper types \"([^\"]*)\" are passed to the service$")
    public void theProvidersSpecialtyCodesAndPaperTypesArePassedToTheService(String parameterType, String properties, String paperTypes) throws Throwable {
        String[] propertiesArray   = properties.split(",");
        String[] paperTypesArray   = paperTypes.split(",");
        JsonArray requestBodyArray = new JsonArray();
        JsonObject tmp;
        String propertyName;

        //Change request property value to whatever is mentioned in feature file (for 'Specialty code' or 'Org Types')
        if(parameterType.equalsIgnoreCase("Specialty codes")){
            propertyName = "specialtyIndicator";
        } else {
            propertyName = "organizationType";
        }

        for(int i = 0; i < propertiesArray.length; i++){
            tmp = new JsonObject();
            tmp.addProperty(propertyName, propertiesArray[i].trim());
            tmp.addProperty("contractClass", paperTypesArray[i].trim());
            requestBodyArray.add(tmp);
        }

//        System.out.println(requestBodyArray.toString());
        request = given().baseUri(BASE_URI).header("Content-Type", "application/json").body(requestBodyArray.toString());
    }

    //Same general_test.step for specialty codes and org types
    @When("^the (?:Specialty Codes|Org Types) are not found in ETMA$")
    public void theSpecialtyCodesAreNotFoundInETMA() throws Throwable {
        response = request.post(ALL_CONTRACT_VALIDATION_ENDPOINT);
    }

    //Same general_test.step for specialty codes and org types
    @Then("^service will return a a \"([^\"]*)\" value for each (?:specialty code|org type) and paper type combination$")
    public void serviceWillReturnAAValueForEachSpecialtyCodeAndPaperTypeCombination(String value) throws Throwable {
        String responseString    = response.asString().toLowerCase().trim();
        JsonParser parser = new JsonParser();
        JsonArray resultArray = new JsonArray();
        boolean allFalseResults = true;

        resultArray.addAll(parser.parse(responseString).getAsJsonArray());

        for(JsonElement result: resultArray){
            JsonObject resObject = result.getAsJsonObject();
            boolean trueResult = resObject.get("valid").getAsBoolean();

            if(trueResult){
                allFalseResults = false;
            }
        }
        assertTrue(allFalseResults);
    }

    //US1103648

    @When("^ETMA is queried for the retro reason code$")
    public void etmaIsQueriedForTheRetroReasonCode() throws Throwable {
        request = given().baseUri(BASE_URI);
        response = request.get(RETRO_ACTIVE_REASON_CODE_ENDPOINT);
    }

    @Then("^all of the retro reason codes are returned$")
    public void allOfTheRetroReasonCodesAreReturned() throws Throwable {
        String responseString = response.asString();
        assertTrue(responseString.contains("retroactiveReasonCode"));
    }

    //US1097077
    
    @Given("^UHC will need to provide Exari with ETMA table data$")
    public void uhcWillNeedToProvideExariWithETMATableData() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^the Exari calls ETMA$")
    public void theExariCallsETMA() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^an external data query will return the requested data\\.$")
    public void anExternalDataQueryWillReturnTheRequestedData() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    //US1097073
    
    @Given("^a user is attempting to validate org type or specialty code$")
    public void aUserIsAttemptingToValidateOrgTypeOrSpecialtyCode() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^the ETMA table is not reachable$")
    public void theETMATableIsNotReachable() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^the service should return an status code\\. \"([^\"]*)\"\\.$")
    public void theServiceShouldReturnAnStatusCode(String arg0) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^the error message is return to the user\\.$")
    public void theErrorMessageIsReturnToTheUser() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    //US1180600
    
    @Given("^a need for documentation on connection to our services$")
    public void aNeedForDocumentationOnConnectionToOurServices() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^visiting the swagger page for our service$")
    public void visitingTheSwaggerPageForOurService() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^you can view the documentation$")
    public void youCanViewTheDocumentation() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^you can execute the services$")
    public void youCanExecuteTheServices() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^you can validate the responses for given input parameters$")
    public void youCanValidateTheResponsesForGivenInputParameters() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    //US1270195

    @When("^CLM Etma service is updated with the new DB$")
    public void clmEtmaServiceIsUpdatedWithTheNewDB() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^all acceptance tests are re-run$")
    public void allAcceptanceTestsAreReRun() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }
}
