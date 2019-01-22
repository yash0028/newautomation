package rest_api_test.step;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

public class CMDUtilitySteps implements IRestStep {

    private final static Logger log = LoggerFactory.getLogger(CMDUtilitySteps.class);

    private final static String ENDPOINT = "http://contract-metadata-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private final static String RESOURCE_PROVIDER_CATEGORY = "/v1.0/exari/provider_category";
    private RequestSpecification request;
    private Response response;
    private JsonObject requestBody = new JsonObject();

    @Given("^a user needs to query the table data$")
    public void userNeedsToQueryTheTable() {
        request = RestAssured.given().baseUri(ENDPOINT);
    }

    @When("^the user provides \"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\" values$")
    public void requestInputData(String providerType, String specialityCode, String specialtyDescription, String physCategory, String physCategory2, String alliedCategory, String alliedCategory2, String specialtyGrouping) {
        requestBody.addProperty("providerType", providerType);
        requestBody.addProperty("specialityCode", specialityCode);
        requestBody.addProperty("specialtyDescription", specialtyDescription);
        requestBody.addProperty("physCategory", physCategory);
        requestBody.addProperty("physCategory2", physCategory2);
        requestBody.addProperty("alliedCategory", alliedCategory);
        requestBody.addProperty("alliedCategory2", alliedCategory2);
        requestBody.addProperty("specialtyGrouping", specialtyGrouping);
        request.header("Content-Type", "application/json").body(requestBody);
        response = request.post(RESOURCE_PROVIDER_CATEGORY);
    }

    @Then("^the query \"(.*)\" provides the matching table records data$")
    public void verifyReponse(String responseMessage) {
        JsonElement result = parseJsonElementResponse(response);
        if (responseMessage.equalsIgnoreCase("verify matching response")) {
            int totalElementsCount = Integer.parseInt(result.getAsJsonObject().get("totalElements").getAsString());
            Assert.assertTrue("Expected result is displayed", totalElementsCount > 0);
        } else
            Assert.assertTrue("Expected result is displayed", responseMessage.equalsIgnoreCase(result.getAsJsonObject().get("message").getAsString()));
    }
}
