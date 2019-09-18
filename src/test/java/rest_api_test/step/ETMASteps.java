package rest_api_test.step;

import com.google.common.collect.Streams;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.ParamMap;
import rest_api_test.api.etma.IEtmaInteract;
import rest_api_test.util.IRestStep;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static org.junit.Assert.*;

/**
 * Created by jwacker on 5/11/2018.
 */
public class ETMASteps implements IRestStep, IEtmaInteract {
    private final static Logger log = LoggerFactory.getLogger(ETMASteps.class);

    private Response response;
    private String contractType = "";
    private String specialtyIndicator = "";
    private String orgType = "";

    //This is a special variable since the normal payload pattern does not allow arrays as the root class
    // TODO refactor List<ParamMap> into payload pattern
    private List<ParamMap> content;

//F182490

    //US1100261

    @Given("^the connection details$")
    public void theConnectionDetails() throws Throwable {

        // noop -- connection details declared above

    }

    @When("^the micro service calls the ETMA tables$")
    public void theMicroServiceCallsTheETMATables() throws Throwable {

        response = getAllMarkets();

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

        getPayload().put("specialtyIndicator", specialtyIndicator);
        getPayload().put("contractClass", contractType);
    }

    @When("^finding the Specialty in ETMA$")
    public void findingTheSpecialtyInETMA() throws Throwable {
        response = getSpecialties(getPayload());
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
        getParams().put("contractClass", contractType);
        if (specialtyIndicator == null || specialtyIndicator.isEmpty()) {
            getParams().put("organizationType", orgType);
        } else {
            getParams().put("specialtyIndicator", specialtyIndicator);
        }
        response = validateContract(getParams());
        assertTrue(response.asString().toLowerCase().contains(value.toLowerCase()));
    }

    //US1103709

    @Given("^the provider's specialty indicator is \"([^\"]*)\" and contract type is not known$")
    public void theProviderSSpecialtyIndicatorIsAndContractTypeIsNotKnown(String specialtyIndicator) throws Throwable {
        getPayload().put("specialtyIndicator", specialtyIndicator);
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

        assertFalse(match);
    }

    //US1103710

    @Given("^the provider's organization type is \"([^\"]*)\" and contract type is not known$")
    public void theProviderSOrganizationTypeIsAndContractTypeIsNotKnown(String organizationType) throws Throwable {
        getPayload().put("organizationType", organizationType);
    }

    @When("^finding the Org Type in ETMA$")
    public void findingTheOrgTypeInETMA() throws Throwable {
        response = getValidContractClasses(getPayload());
    }

    //US1097030

    @Given("^the provider's organization type is \"([^\"]*)\" and contract type is \"([^\"]*)\"$")
    public void theProviderSOrganizationTypeIsAndContractTypeIs(String orgType, String contractType) throws Throwable {
        getPayload().put("organizationType", orgType);
        this.contractType = contractType;
        this.orgType = orgType;
    }

    //US1097065

    @Given("^the provider's Specialty Code \"([^\"]*)\" is passed to the service$")
    public void theProviderSSpecialtyCodeIsPassedToTheService(String specialtyIndicator) throws Throwable {
        getPayload().put("specialtyIndicator", specialtyIndicator);

    }

    @Given("^the provider's Org Type \"([^\"]*)\" is passed to the service$")
    public void theProviderSOrgTypeIsPassedToTheService(String orgType) throws Throwable {
        getPayload().put("organizationType", orgType);
    }

    //US1129434

    @Given("^the providers (Specialty codes|Org Types) \"([^\"]*)\" and paper types \"([^\"]*)\" are passed to the service$")
    public void theProvidersSpecialtyCodesAndPaperTypesArePassedToTheService(String parameterType, String properties, String paperTypes) throws Throwable {
        final String propertyName = parameterType.equalsIgnoreCase("Specialty codes") ? "specialtyIndicator" : "organizationType";
        Stream<String> propertyStream = Stream.of(properties.split(","));
        Stream<String> paperTypeStream = Stream.of(paperTypes.split(","));

        content = Streams.zip(propertyStream, paperTypeStream, (propValue, paperType) -> {
            ParamMap tempMap = new ParamMap();
            tempMap.put(propertyName, propValue);
            tempMap.put("contractClass", paperType);
            return tempMap;
        }).collect(Collectors.toList());
    }

    //Same general_test.step for specialty codes and org types
    @When("^the (?:Specialty Codes|Org Types) are not found in ETMA$")
    public void theSpecialtyCodesAreNotFoundInETMA() throws Throwable {
        response = validateAllContract(content);
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
        response = getRetroReasonCode();
    }

    @Then("^all of the retro reason codes are returned$")
    public void allOfTheRetroReasonCodesAreReturned() throws Throwable {
        String responseString = response.asString();
        assertTrue(responseString.contains("retroactiveReasonCode"));
    }


}
