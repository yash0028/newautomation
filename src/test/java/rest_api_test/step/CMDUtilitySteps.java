package rest_api_test.step;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;
import util.map.IMapSub;

import java.util.stream.Collectors;
import java.util.stream.Stream;

public class CMDUtilitySteps implements IRestStep, IMapSub {

    private final static Logger log = LoggerFactory.getLogger(CMDUtilitySteps.class);

    private final static String ENDPOINT = "http://contract-metadata-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private final static String RESOURCE_PROVIDER_CATEGORY = "/v1.0/exari/provider_category";
    private final static String RESOURCE_AFFILIATION_ENTITY = "/v1.0/exari/affiliation-type";
    private RequestSpecification request;
    private Response response;
    private JsonObject requestBody = new JsonObject();

    @Given("^a user needs to query the table data$")
    public void userNeedsToQueryTheTable() {
        request = RestAssured.given().baseUri(ENDPOINT);
    }

    @When("^the user provides values$")
    public void requestInputData(DataTable dataTable) {
        request.header("Content-Type", "application/json").body(subMapStringValues(dataTable.asMap(String.class, String.class)));
        response = request.post(RESOURCE_PROVIDER_CATEGORY);
    }

    @Then("^the query \"(.*)\" provides the matching table records data$")
    public void verifyReponse(String responseMessage) {
        JsonElement result = parseJsonElementResponse(response);
        if (responseMessage.equalsIgnoreCase("verify matching response")) {
            int totalElementsCount = result.getAsJsonArray().size();
            Assert.assertTrue("Expected result is not displayed", totalElementsCount > 0);
        } else
            Assert.assertTrue("Expected result is not displayed", responseMessage.equalsIgnoreCase(result.getAsJsonObject().get("message").getAsString()));
    }

    @When("^the user initiates the affiliation micro service$")
    public void hitAffiliationRequest() {
        response = request.header("Content-Type", "application/json").get(RESOURCE_AFFILIATION_ENTITY);
    }

    @Then("^the service returns the entire table records$")
    public void verifyAffiliationResponse() {
        JsonElement result = parseJsonElementResponse(response);
        if (result.getAsJsonArray().size() > 0) {
            Stream<String> allFields = Stream.of("categories", "qualifierCode", "codeDescription", "labelName", "aliasName", "definitionAbbreviated", "definitionExpanded");
            JsonArray resultArray = result.getAsJsonArray();
            for (JsonElement element : resultArray)
                Assert.assertTrue("All fields are not displayed", element.getAsJsonObject().keySet().containsAll(allFields.collect(Collectors.toSet())));
        } else
            Assert.assertTrue("no records are displayed", false);
    }
}
