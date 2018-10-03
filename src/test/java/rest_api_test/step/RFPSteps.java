package rest_api_test.step;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static io.restassured.RestAssured.given;
import static org.junit.Assert.assertTrue;

/**
 * Created by jwacker on 6/13/2018.
 */
public class RFPSteps {
    private static final String BASE_URI = "http://request-for-part-api-clm-dev.ocp-ctc-core-nonprod.optum.com";
    private static final String END_POINT = "/v1.0/participation_requests";
    private static String samplePlaceOfService = "AL";
    private static String sampleOrgType = "021";
    private static String sampleSpecialty = "050";
    private RequestSpecification request;
    private Response response;
    private Map<String, String> requestParams = new HashMap<String, String>();
    private Map<String, String> fieldMap = new HashMap<String, String>();
    private Map<String, String> sampleValueMap = new HashMap<String, String>();

    public RFPSteps(){
        //Map all the fields to the name they're reflected as in the service
        fieldMap.put("Place of Service","place_of_service");
        fieldMap.put("Specialty Type","specialty_code");
        fieldMap.put("Organization Type","organization_code");
        fieldMap.put("Credentialing Required","credentialingRequired");
        fieldMap.put("Super Script","superscript1");
        fieldMap.put("Credentialing Entity","credentialingEntity");
        fieldMap.put("Accepting Applications (E&I)","acceptingEmployerAndIndividual");
        fieldMap.put("Accepting Applications (C&S)","acceptingCommunityAndState");
        fieldMap.put("Accepting Applications (M&V)","acceptingMilitaryAndVeterans");

        //populate the request fields with sample values
        sampleValueMap.put("Place of Service", samplePlaceOfService);
        sampleValueMap.put("Specialty Type", sampleSpecialty);
        sampleValueMap.put("Organization Type", sampleOrgType);

    }
//F164312

    //US1082300

    @Given("^a request with the following fields:$")
    public void aRequestWithTheFollowingFields(DataTable fieldsDT) throws Throwable {
        List<String> fields = fieldsDT.asList(String.class);

        for(String field: fields){
            requestParams.put(fieldMap.getOrDefault(field, ""), sampleValueMap.getOrDefault(field, ""));
        }

    }

    @When("^the request is made to the RFP service$")
    public void theRequestIsMadeToTheRFPService() throws Throwable {

        request = given().baseUri(BASE_URI).header("Content-Type", "application/x-www-form-urlencoded").formParams(requestParams);

    }

    @Then("^the following fields should be returned:$")
    public void theFollowingFieldsShouldBeReturned(DataTable fieldsDT) throws Throwable {
        boolean match         = true;
        List<String> fields   = fieldsDT.asList(String.class);

        response              = request.get(END_POINT);
        String responseString = response.asString().toLowerCase();

//        System.out.println("RESPONSE: " + responseString);

        for(String field: fields){
            field = field.trim();

            if(!responseString.contains(fieldMap.getOrDefault(field, "").toLowerCase())){
                match = false;
//                System.out.println("-----FAILED FIELD: " + field);
            }
        }
        assertTrue(match);
    }

    //US1035921

    @Given("^the provider's (Specialty|Org Type) \"([^\"]*)\" is passed to the RFP service$")
    public void theProviderSSpecialtyIsPassedToTheRFPService(String parameterType, String value) throws Throwable {
        String propertyName = "";

        //Change request property value to whatever is mentioned in feature file (for 'Specialty' or 'Org Type')
        if(parameterType.equalsIgnoreCase("Specialty")){
            propertyName = "specialty";
        } else {
            propertyName = "orgType";
        }

        requestParams.put(propertyName, value);
        requestParams.put(fieldMap.get("Place of Service"), sampleValueMap.get("Place of Service"));

        request = given().baseUri(BASE_URI).header("Content-Type", "application/x-www-form-urlencoded").formParams(requestParams);
    }

    @When("^finding the (?:Specialty|Org Type) in RFP$")
    public void findingTheSpecialtyInRFP() throws Throwable {

        response = request.get(END_POINT);
//        System.out.println("RESPONSE: " + response.asString());

    }

    @Then("^the RFP service will return a blank list$")
    public void theRFPServiceWillReturnABlankList() throws Throwable {

        assertTrue(response.asString().equals("[]"));
    }

    @Given("^a user needs to call RFP grid$")
    public void aUserNeedsToCallRFPGrid() throws Throwable {
        // noop
    }

    //US1082297
    
    @Given("^Exari will need to call our API$")
    public void exariWillNeedToCallOurAPI() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^a web client will need to be created\\.$")
    public void aWebClientWillNeedToBeCreated() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Given("^UHC will need to provide Exari with RFP data including:$")
    public void uhcWillNeedToProvideExariWithRFPDataIncluding(DataTable table) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^the Exari calls RFP with Provider Specialty$")
    public void theExariCallsRFPWithProviderSpecialty() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^an external data query will return a list of fields:$")
    public void anExternalDataQueryWillReturnAListOfFields(DataTable table) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Given("^the provider's Specialty \"([^\"]*)\" is passed to the RFP service #specialty code that doesn't exist$")
    public void theProviderSSpecialtyIsPassedToTheRFPServiceSpecialtyCodeThatDoesnTExist(String arg0) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Given("^the provider's Org Type \"([^\"]*)\" is passed to the RFP service #org type that doesn't exist$")
    public void theProviderSOrgTypeIsPassedToTheRFPServiceOrgTypeThatDoesnTExist(String arg0) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Given("^a need to improve the RFP microservice$")
    public void aNeedToImproveTheRFPMicroservice() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^the service must have (\\d+) percent or greater test coverage with sonar$")
    public void theServiceMustHavePercentOrGreaterTestCoverageWithSonar(int arg0) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^extensive logging statements for info and debug$")
    public void extensiveLoggingStatementsForInfoAndDebug() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^more thorough documentation expanded on the default swagger config$")
    public void moreThoroughDocumentationExpandedOnTheDefaultSwaggerConfig() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^an improved upload\\.html$")
    public void anImprovedUploadHtml() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^a user incorrectly inputs RFP data$")
    public void aUserIncorrectlyInputsRFPData() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^the user receives a RFP bad input error message$")
    public void theUserReceivesARFPBadInputErrorMessage() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^the RFP system goes down$")
    public void theRFPSystemGoesDown() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^the user receives a RFP system error message$")
    public void theUserReceivesARFPSystemErrorMessage() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^a RFP catastrophic error occurs$")
    public void aRFPCatastrophicErrorOccurs() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^a RFP service ticket will need to be created\\.$")
    public void aRFPServiceTicketWillNeedToBeCreated() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }
}
