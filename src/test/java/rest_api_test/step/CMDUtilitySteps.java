package rest_api_test.step;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import io.restassured.response.Response;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.contractmetadata.IContractMetadataInteract;
import rest_api_test.util.IRestStep;
import util.map.IMapSub;

import java.util.Arrays;
import java.util.Map;
import java.util.stream.Collectors;

public class CMDUtilitySteps implements IRestStep, IMapSub, IContractMetadataInteract {

    private final static Logger log = LoggerFactory.getLogger(CMDUtilitySteps.class);

    private Response response;

    @Given("^a user needs to query the table data$")
    public void userNeedsToQueryTheTable() {
        // NO OP
    }

    @When("^the user provides values$")
    public void requestInputData(DataTable dataTable) {
        Map<String, String> payload = subMapStringValues(dataTable.asMap(String.class, String.class));
        this.response = searchProviderCategory(payload);
    }

    @Then("^the query \"(.*)\" provides the matching table records data$")
    public void verifyResponse(String responseMessage) {
        JsonElement result = parseJsonElementResponse(response);
        if (responseMessage.equalsIgnoreCase("verify matching response")) {
            int totalElementsCount = result.getAsJsonArray().size();
            Assert.assertTrue("Expected result is not displayed", totalElementsCount > 0);
        } else
            Assert.assertTrue("Expected result is not displayed", responseMessage.equalsIgnoreCase(result.getAsJsonObject().get("message").getAsString()));
    }

    @When("^the user requests for legal entity data$")
    public void hitLegalLicensedEntityRequest() {
        response = getLegalEntities(null);
    }

    @When("^the user initiates the affiliation micro service$")
    public void hitAffiliationRequest() {
        response = searchAffiliationType(null);
    }

    @Then("^the service returns the entire table records$")
    public void verifyAffiliationResponse() {
        JsonElement result = parseJsonElementResponse(response);
        JsonArray resultArray = result.getAsJsonObject().getAsJsonArray("content");

        if (resultArray.size() > 0) {
            String[] allFields = new String[]{"categories", "qualifierCode", "codeDescription", "labelName", "aliasName", "definitionAbbreviated", "definitionExpanded"};

            for (JsonElement element : resultArray)
                Assert.assertTrue("All fields are not displayed", element.getAsJsonObject().keySet().containsAll(Arrays.stream(allFields).collect(Collectors.toSet())));
        } else
            Assert.assertTrue("no records are displayed", false);
    }

    @Then("^the query returns entire table data$")
    public void verifyLegalLicensedEntityResponse() {
        JsonElement result = parseJsonElementResponse(response);
        JsonArray resultArray = result.getAsJsonObject().getAsJsonArray("content");

        if (resultArray.size() > 0) {
            String[] allFields = new String[]{"asOfDate", "status", "entityAbbrevIdentificationCode", "legalEntityName", "domicileST", "subsidiaryOf", "businessSegment", "hmoIns", "peopleSoft9Identifier", "naicCodeDMHCLic", "countLICEntityST", "sourceAddress"};

            for (JsonElement element : resultArray)
                Assert.assertTrue("All fields are not displayed", element.getAsJsonObject().keySet().containsAll(Arrays.stream(allFields).collect(Collectors.toSet())));
        } else
            Assert.assertTrue("no records are displayed", false);
    }
}