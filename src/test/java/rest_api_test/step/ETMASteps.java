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
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

import static io.restassured.RestAssured.given;
import static io.restassured.RestAssured.when;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * Created by jwacker on 5/11/2018.
 */
public class ETMASteps implements IRestStep {
    private final static Logger log = LoggerFactory.getLogger(ETMASteps.class);

    private static final String ENDPOINT = "http://exari-table-maint-api-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_MARKETS = "/v1.0/markets";
    private static final String RESOURCE_CONTRACT_CLASSES_SEARCH = "/v1.0/contract-classes/search";
    private static final String RESOURCE_CONTRACT_VALIDATION = "/v1.0/contract-validations";
    private static final String RESOURCE_CONTRACT_VALIDATION_ALL = "/v1.0/contract-validations/validate-multiple";
    private static final String RESOURCE_RETRO_REASON_CODE = "/v1.0/retro-reason-codes";

    private RequestSpecification request;
    private Response response;
    private String contractType = "";
    private String specialtyIndicator = "";
    private String orgType = "";
    private JsonObject requestBody = new JsonObject();

//F182490

    //US1100261

    @Given("^the connection details$")
    public void theConnectionDetails() throws Throwable {

        // noop -- connection details declared above

    }

    @When("^the micro service calls the ETMA tables$")
    public void theMicroServiceCallsTheETMATables() throws Throwable {

        response = when().get(ENDPOINT + RESOURCE_MARKETS);

    }

    @Then("^the connection is successful$")
    public void theConnectionIsSuccessful() throws Throwable {

        assertEquals(200, response.getStatusCode());

    }

    //US1093992

    @Given("^the provider's specialty indicator is \"([^\"]*)\" and contract type is \"([^\"]*)\"$")
    public void theProviderSSpecialtyIndicatorIsAndContractTypeIs(String specialtyIndicator, String contractType) throws Throwable {
        this.contractType = contractType;
        this.specialtyIndicator = specialtyIndicator;

        requestBody.addProperty("specialtyIndicator", specialtyIndicator);
        requestBody.addProperty("contractClass", contractType);

        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody.toString());
    }

    @When("^finding the Specialty in ETMA$")
    public void findingTheSpecialtyInETMA() throws Throwable {
        response = request.post(RESOURCE_CONTRACT_CLASSES_SEARCH);
    }

    @When("^(?:And the|the) service returns paper types \"([^\"]*)\" as matched in ETMA table$")
    public void andTheServiceReturnsPaperTypesAsMatchedInETMATable(String paperTypes) throws Throwable {
        String[] validPaperTypes = paperTypes.split(",");

        boolean match = true;
        String responseString = response.asString().toLowerCase();

        for (String type : validPaperTypes) {
            type = type.trim();

            if (!responseString.contains(type.toLowerCase())) {
                match = false;
            }
        }

//        System.out.println(response.asString());
        assertTrue(match);
    }

    @Then("^the service will return a \"([^\"]*)\" value$")
    public void theServiceWillReturnAValue(String value) throws Throwable {
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json")
                .queryParam("contractClass", contractType);
        if(specialtyIndicator.isEmpty()){
            request.queryParam("organizationType", orgType);
        } else {
            request.queryParam("specialtyIndicator", specialtyIndicator);
        }
        response = request.get(RESOURCE_CONTRACT_VALIDATION);
        assertTrue(response.asString().toLowerCase().contains(value.toLowerCase()));
    }

    //US1103709

    @Given("^the provider's specialty indicator is \"([^\"]*)\" and contract type is not known$")
    public void theProviderSSpecialtyIndicatorIsAndContractTypeIsNotKnown(String specialtyIndicator) throws Throwable {
        requestBody.addProperty("specialtyIndicator", specialtyIndicator);

        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody.toString());
    }

    @Then("^service will NOT return paper types \"([^\"]*)\" from the ETMA table$")
    public void serviceWillNOTReturnPaperTypeFromTheETMATable(String paperTypes) throws Throwable {
        String[] invalidPaperTypes = paperTypes.split(",");
        boolean match = false;
        String responseString = response.asString().toLowerCase();

        for (String type : invalidPaperTypes) {
            type = type.trim();

            if (responseString.contains(type.toLowerCase())) {
                match = true;
            }
        }

        assertEquals(false, match);
    }

    //US1103710

    @Given("^the provider's organization type is \"([^\"]*)\" and contract type is not known$")
    public void theProviderSOrganizationTypeIsAndContractTypeIsNotKnown(String organizationType) throws Throwable {
        requestBody.addProperty("organizationType", organizationType);

        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody.toString());
    }

    @When("^finding the Org Type in ETMA$")
    public void findingTheOrgTypeInETMA() throws Throwable {
        response = request.post(RESOURCE_CONTRACT_CLASSES_SEARCH);
    }

    //US1097030

    @Given("^the provider's organization type is \"([^\"]*)\" and contract type is \"([^\"]*)\"$")
    public void theProviderSOrganizationTypeIsAndContractTypeIs(String orgType, String contractType) throws Throwable {
        requestBody.addProperty("organizationType", orgType);
        this.contractType = contractType;
        this.orgType = orgType;

        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody.toString());
    }

    //US1097065

    @Given("^the provider's Specialty Code \"([^\"]*)\" is passed to the service$")
    public void theProviderSSpecialtyCodeIsPassedToTheService(String specialtyIndicator) throws Throwable {
        requestBody.addProperty("specialtyIndicator", specialtyIndicator);

        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody.toString());
    }

    @Given("^the provider's Org Type \"([^\"]*)\" is passed to the service$")
    public void theProviderSOrgTypeIsPassedToTheService(String orgType) throws Throwable {
        requestBody.addProperty("organizationType", orgType);

        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody.toString());
    }

    //US1129434

    @Given("^the providers (Specialty codes|Org Types) \"([^\"]*)\" and paper types \"([^\"]*)\" are passed to the service$")
    public void theProvidersSpecialtyCodesAndPaperTypesArePassedToTheService(String parameterType, String properties, String paperTypes) throws Throwable {
        String[] propertiesArray = properties.split(",");
        String[] paperTypesArray = paperTypes.split(",");
        JsonArray requestBodyArray = new JsonArray();
        JsonObject tmp;
        String propertyName;

        //Change request property value to whatever is mentioned in feature file (for 'Specialty code' or 'Org Types')
        if (parameterType.equalsIgnoreCase("Specialty codes")) {
            propertyName = "specialtyIndicator";
        } else {
            propertyName = "organizationType";
        }

        for (int i = 0; i < propertiesArray.length; i++) {
            tmp = new JsonObject();
            tmp.addProperty(propertyName, propertiesArray[i].trim());
            tmp.addProperty("contractClass", paperTypesArray[i].trim());
            requestBodyArray.add(tmp);
        }

//        System.out.println(requestBodyArray.toString());
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBodyArray.toString());
    }

    //Same general_test.step for specialty codes and org types
    @When("^the (?:Specialty Codes|Org Types) are not found in ETMA$")
    public void theSpecialtyCodesAreNotFoundInETMA() throws Throwable {
        response = request.post(RESOURCE_CONTRACT_VALIDATION_ALL);
    }

    //Same general_test.step for specialty codes and org types
    @Then("^service will return a a \"([^\"]*)\" value for each (?:specialty code|org type) and paper type combination$")
    public void serviceWillReturnAAValueForEachSpecialtyCodeAndPaperTypeCombination(String value) throws Throwable {
        String responseString = response.asString().toLowerCase().trim();
        JsonParser parser = new JsonParser();
        JsonArray resultArray = new JsonArray();
        boolean allFalseResults = true;

        resultArray.addAll(parser.parse(responseString).getAsJsonArray());

        for (JsonElement result : resultArray) {
            JsonObject resObject = result.getAsJsonObject();
            boolean trueResult = resObject.get("valid").getAsBoolean();

            if (trueResult) {
                allFalseResults = false;
            }
        }
        assertTrue(allFalseResults);
    }

    //US1103648

    @When("^ETMA is queried for the retro reason code$")
    public void etmaIsQueriedForTheRetroReasonCode() throws Throwable {
        request = given().baseUri(ENDPOINT);
        response = request.get(RESOURCE_RETRO_REASON_CODE);
    }

    @Then("^all of the retro reason codes are returned$")
    public void allOfTheRetroReasonCodesAreReturned() throws Throwable {
        String responseString = response.asString();
        assertTrue(responseString.contains("retroactiveReasonCode"));
    }


}
