package StepDefinitions;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
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
    private static String baseUri                  = "http://localhost:8080"; //Need to change to DEV URL once deployed to dev
    private static String marketsUri               = "/api/1/markets";
    private static String paperTypeUri             = "/api/1/paper_types/search";
    private static String contractValidationUri    = "/api/1/contract_validations";
    private static String allContractValidationUri = "/api/1/contract_validations/all";
    private String contractType                    = "";
    private JsonObject requestBody                 = new JsonObject();

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

        request = given().baseUri(baseUri).header("Content-Type", "application/json").body(requestBody.toString());
    }

    @When("^finding the Specialty in ETMA$")
    public void findingTheSpecialtyInETMA() throws Throwable {
        response = request.post(paperTypeUri);
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

        request = given().baseUri(baseUri).header("Content-Type", "application/json").body(requestBody.toString());
    }

    @When("^finding the Org Type in ETMA$")
    public void findingTheOrgTypeInETMA() throws Throwable {
        response = request.post(paperTypeUri);
    }

    //US1097030

    @Given("^the provider's organization type is \"([^\"]*)\" and contract type is \"([^\"]*)\"$")
    public void theProviderSOrganizationTypeIsAndContractTypeIs(String orgType, String contractType) throws Throwable {
        requestBody.addProperty("organizationType", orgType);
        this.contractType = contractType;

        request = given().baseUri(baseUri).header("Content-Type", "application/json").body(requestBody.toString());
    }

    //US1097065

    @Given("^the provider's Specialty Code \"([^\"]*)\" is passed to the service$")
    public void theProviderSSpecialtyCodeIsPassedToTheService(String specialtyIndicator) throws Throwable {
        requestBody.addProperty("specialtyIndicator", specialtyIndicator);

        request = given().baseUri(baseUri).header("Content-Type", "application/json").body(requestBody.toString());
    }

    @Given("^the provider's Org Type \"([^\"]*)\" is passed to the service$")
    public void theProviderSOrgTypeIsPassedToTheService(String orgType) throws Throwable {
        requestBody.addProperty("organizationType", orgType);

        request = given().baseUri(baseUri).header("Content-Type", "application/json").body(requestBody.toString());
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
            tmp.addProperty("paperType", paperTypesArray[i].trim());
            requestBodyArray.add(tmp);
        }

//        System.out.println(requestBodyArray.toString());
        request = given().baseUri(baseUri).header("Content-Type", "application/json").body(requestBodyArray.toString());
    }

    //Same step for specialty codes and org types
    @When("^the (?:Specialty Codes|Org Types) are not found in ETMA$")
    public void theSpecialtyCodesAreNotFoundInETMA() throws Throwable {
        response = request.post(allContractValidationUri);
    }

    //Same step for specialty codes and org types
    @Then("^service will return a a \"([^\"]*)\" value for each (?:specialty code|org type) and paper type combination$")
    public void serviceWillReturnAAValueForEachSpecialtyCodeAndPaperTypeCombination(String value) throws Throwable {
        String responseString    = response.asString().toLowerCase();
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

}
