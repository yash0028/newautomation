package StepDefinitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import gherkin.deps.com.google.gson.JsonObject;
import io.restassured.response.Response;
import io.restassured.response.ResponseBody;
import io.restassured.specification.RequestSpecification;

import static org.junit.Assert.assertEquals;
import static io.restassured.RestAssured.given;
import static io.restassured.RestAssured.when;
import static org.junit.Assert.assertTrue;

/**
 * Created by jwacker on 5/11/2018.
 */
public class ETMASteps {
    private RequestSpecification request;
    private Response response;
    private ResponseBody body;
    private static String baseUri = "http://localhost:8080"; //Need to change to DEV URL once deployed to dev
    private static String marketsUri = "/api/1/markets";
    private static String paperTypeUri = "/api/1/paper_types/search";
    private static String contractValidationUri = "/api/1/contract_validations";
    private String contractType = "";
    JsonObject requestBody = new JsonObject();

//F182490

    //US1100261

    @Given("^the connection details$")
    public void theConnectionDetails() throws Throwable {

        // noop -- connection details declared above

    }

    @When("^the micro service calls the ETMA tables$")
    public void theMicroServiceCallsTheETMATables() throws Throwable {

        response = when().get(baseUri + marketsUri);

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
        //requestBody.addProperty("organizationType", "");

        request = given().baseUri(baseUri).header("Content-Type", "application/json").body(requestBody.toString());
    }

    @When("^finding the Specialty in ETMA$")
    public void findingTheSpecialtyInETMA() throws Throwable {
        response = request.post(paperTypeUri);
    }

    @When("^And the service returns paper types \"([^\"]*)\" as matched in ETMA table$")
    public void andTheServiceReturnsPaperTypesAsMatchedInETMATable(String paperTypes) throws Throwable {
        String[] validPaperTypes = paperTypes.split(",");
        boolean match = true;
        String responseString = response.asString().toLowerCase();

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

        requestBody.addProperty("paperType", contractType);

        request = given().baseUri(baseUri).header("Content-Type", "application/json").body(requestBody.toString());
        response = request.post(contractValidationUri);

        assertTrue(response.asString().toLowerCase().contains(value.toLowerCase()));
    }

    //US1103709

    @Given("^the provider's specialty indicator is \"([^\"]*)\" and contract type is not known$")
    public void theProviderSSpecialtyIndicatorIsAndContractTypeIsNotKnown(String specialtyIndicator) throws Throwable {
        requestBody.addProperty("specialtyIndicator", specialtyIndicator);

        request = given().baseUri(baseUri).header("Content-Type", "application/json").body(requestBody.toString());
    }

    @Then("^service will NOT return paper types \"([^\"]*)\" from the ETMA table$")
    public void serviceWillNOTReturnPaperTypeFromTheETMATable(String paperTypes) throws Throwable {
        String[] invalidPaperTypes = paperTypes.split(",");
        boolean match = false;
        String responseString = response.asString().toLowerCase();

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

        request = given().baseUri(baseUri).header("Content-Type", "application/json").body(requestBody.toString());
    }

    @When("^finding the Org Type in ETMA$")
    public void findingTheOrgTypeInETMA() throws Throwable {
        response = request.post(paperTypeUri);
    }
}
