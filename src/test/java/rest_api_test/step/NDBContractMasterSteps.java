package rest_api_test.step;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

import static io.restassured.RestAssured.given;

/**
 * Created by aberns on 8/31/2018.
 */
public class NDBContractMasterSteps implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(NDBContractMasterSteps.class);

    private static final String ENDPOINT = "http://ndb-contracts-master-api-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_UNET = "/contractmaster/lookup/{market}";
    private static final String[] UNET_MARKETS = {"45597"};

    private RequestSpecification request;
    private Response response;
    private JsonObject payload;

    private void sendUnet() {
        log.info("payload: {}", payload);
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json")
                .body(payload).pathParam("market", UNET_MARKETS[0]);

        response = request.post(RESOURCE_UNET);
        log.info("Response: {}", response.asString());

        Assert.assertEquals(200, response.getStatusCode());
    }

    @Given("^The NDB contract master look up API was executed with market number, fee schedule, and more than one product code$")
    public void multipleContracts() throws Throwable {
        this.payload = new JsonObject();
        this.payload.add("productDetails", new JsonArray());
    }

    @Given("^The NDB contract master look up API was executed with market number, fee schedule, and a single product code$")
    public void singleContract() throws Throwable {
        this.payload = new JsonObject();
        this.payload.add("productDetails", new JsonArray());
    }

    @And("^the fee schedule \"([^\"]*)\" & the product code group \"([^\"]*)\" & the product code \"([^\"]*)\"$")
    public void createLookupObject(String feeSchedule, String productCodeGroup, String productCode) {
        JsonObject jsonObject = new JsonObject();

        jsonObject.addProperty("system", "unet");
        jsonObject.addProperty("feeSchedule", feeSchedule);
        jsonObject.addProperty("productGroupCode", productCodeGroup);
        jsonObject.addProperty("productCode", productCode);

        this.payload.get("productDetails").getAsJsonArray().add(jsonObject);
    }

    @When("^The API response was successful$")
    public void responseSuccessful() throws Throwable {
        sendUnet();
        JsonElement result = parseJsonElementResponse(response);
        Assert.assertTrue(result.isJsonObject());
        Assert.assertTrue(result.getAsJsonObject().get("status").getAsBoolean());
    }


    @And("^Add the contract master response to the Kafka Event [Tt]opic$")
    public void ignored() throws Throwable {

    }

    /*
    US1278478 - Publish NDB API contract master null response
     */

    @Then("^The API returned no results$")
    public void returnedNoResults() throws Throwable {
        JsonElement result = parseJsonElementResponse(this.response);

        assert result.isJsonObject();
        Assert.assertTrue(result.getAsJsonObject().get("data").isJsonArray());
        for (JsonElement jsonElement : result.getAsJsonObject().get("data").getAsJsonArray()) {
            Assert.assertTrue(jsonElement.isJsonObject());
            int returnCode = Integer.parseInt(jsonElement.getAsJsonObject().get("returnCode").getAsString());
            Assert.assertTrue(returnCode < 1000);
        }

    }

    @And("^the API returned a return code of \"([^\"]*)\"$")
    public void checkSingleReturnCode(String returnCode) throws Throwable {
        JsonElement result = parseJsonElementResponse(this.response);
        boolean foundOne = false;

        assert result.isJsonObject();
        Assert.assertTrue(result.getAsJsonObject().get("data").isJsonArray());
        for (JsonElement jsonElement : result.getAsJsonObject().get("data").getAsJsonArray()) {
            Assert.assertTrue(jsonElement.isJsonObject());
            foundOne |= jsonElement.getAsJsonObject().get("returnCode").getAsString().equals(returnCode);
        }

        Assert.assertTrue("Unable to find any object with expected return code of " + returnCode, foundOne);
    }

    @And("^the API returned a return code of \"([^\"]*)\" and \"([^\"]*)\"$")
    public void CheckMultipleReturnCode(String returnCodeA, String returnCodeB) throws Throwable {
        JsonElement result = parseJsonElementResponse(this.response);
        boolean foundA = false;
        boolean foundB = false;

        assert result.isJsonObject();
        Assert.assertTrue(result.getAsJsonObject().get("data").isJsonArray());
        for (JsonElement jsonElement : result.getAsJsonObject().get("data").getAsJsonArray()) {
            Assert.assertTrue(jsonElement.isJsonObject());
            foundA |= jsonElement.getAsJsonObject().get("returnCode").getAsString().equals(returnCodeA);
            foundB |= jsonElement.getAsJsonObject().get("returnCode").getAsString().equals(returnCodeB);
        }

        Assert.assertTrue("Unable to find any object with expected return code of " + returnCodeA, foundA);
        Assert.assertTrue("Unable to find any object with expected return code of " + returnCodeB, foundB);
    }

    /*
    US1278479 - Publish NDB API contract master more than one response
     */

    @Then("^The API returned one or more contract masters$")
    public void MultipleContractMaster() throws Throwable {
        JsonElement result = parseJsonElementResponse(this.response);

        assert result.isJsonObject();
        Assert.assertTrue(result.getAsJsonObject().get("data").isJsonArray());
        for (JsonElement jsonElement : result.getAsJsonObject().get("data").getAsJsonArray()) {
            Assert.assertTrue("Element is not a JSON Object", jsonElement.isJsonObject());
            int returnCode = Integer.parseInt(jsonElement.getAsJsonObject().get("returnCode").getAsString());
            Assert.assertTrue("No contract masters returned", returnCode >= 1000);
        }
    }
    
    /*
    US1204285 - [Continued]Implement NDB Contract Master Lookup API
     */

    @Given("^the Exari / CLM>NDB contract master Lookup API payload data is correct$")
    public void theExariCLMNDBContractMasterLookupAPIPayloadDataIsCorrect() throws Throwable {
        singleContract();
        createLookupObject("96192", "PPO", "P3");
    }

    @When("^NDB receives the Search parameter data$")
    public void ndbReceivesTheSearchParameterData() throws Throwable {
        responseSuccessful();
    }

    @Then("^NDB will search and return back the valid contract master data for the search parameters requested\\.$")
    public void ndbWillSearchAndReturnBackTheValidContractMasterDataForTheSearchParametersRequested() throws Throwable {
        MultipleContractMaster();
    }
}
