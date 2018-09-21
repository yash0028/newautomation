package step_definitions;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import gherkin.ast.DataTable;
import gherkin.ast.TableCell;
import gherkin.ast.TableRow;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import utils.RestHelper;

import static io.restassured.RestAssured.given;

/**
 * Created by aberns on 8/31/2018.
 */
public class NDBContractMasterSteps {

    private static final String ENDPOINT = "http://ndb-contracts-master-api-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_UNET = "/contractmaster/lookup/unet/";
    private static final String[] UNET_CONTRACT_IDS = {"45597"};

    private RequestSpecification request;
    private Response response;
    private JsonObject payload;

    private void sendUnet() {
        System.out.println(payload);
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(payload);
        response = request.post(RESOURCE_UNET + UNET_CONTRACT_IDS[0]);
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
    public void createLookupObject(String feeSchedule, String productCodeGroup, String productCode){
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("feeSchedule", feeSchedule);
        jsonObject.addProperty("productGroupCode", productCodeGroup);
        jsonObject.addProperty("productCode", productCode);

        this.payload.get("productDetails").getAsJsonArray().add(jsonObject);
    }

    @When("^The API response was successful$")
    public void responseSuccessful() throws Throwable {
        sendUnet();
        JsonObject result = RestHelper.getInstance().parseJsonResponse(response);
        Assert.assertTrue(result.get("status").getAsBoolean());
    }


    @And("^Add the contract master response to the Kafka Event [Tt]opic$")
    public void ignored() throws Throwable {

    }

    /*
    US1278478 - Publish NDB API contract master null response
     */

    @Then("^The API returned no results$")
    public void returnedNoResults() throws Throwable {
        JsonObject result = RestHelper.getInstance().parseJsonResponse(this.response);

        Assert.assertTrue(result.get("data").isJsonArray());
        for(JsonElement jsonElement : result.get("data").getAsJsonArray()){
            Assert.assertTrue(jsonElement.isJsonObject());
            Integer returnCode = Integer.parseInt(jsonElement.getAsJsonObject().get("returnCode").getAsString());
            Assert.assertTrue(returnCode < 1000);
        }

    }

    @And("^the API returned a return code of \"([^\"]*)\"$")
    public void checkSingleReturnCode(String returnCode) throws Throwable {
        JsonObject result = RestHelper.getInstance().parseJsonResponse(this.response);
        boolean foundOne = false;

        Assert.assertTrue(result.get("data").isJsonArray());
        for(JsonElement jsonElement : result.get("data").getAsJsonArray()){
            Assert.assertTrue(jsonElement.isJsonObject());
            foundOne |= jsonElement.getAsJsonObject().get("returnCode").getAsString().equals(returnCode);
        }

        Assert.assertTrue("Unable to find any object with expected return code of " + returnCode ,foundOne);
    }

    @And("^the API returned a return code of \"([^\"]*)\" and \"([^\"]*)\"$")
    public void CheckMultipleReturnCode(String returnCodeA, String returnCodeB) throws Throwable {
        JsonObject result = RestHelper.getInstance().parseJsonResponse(this.response);
        boolean foundA = false;
        boolean foundB = false;

        Assert.assertTrue(result.get("data").isJsonArray());
        for(JsonElement jsonElement : result.get("data").getAsJsonArray()){
            Assert.assertTrue(jsonElement.isJsonObject());
            foundA |= jsonElement.getAsJsonObject().get("returnCode").getAsString().equals(returnCodeA);
            foundB |= jsonElement.getAsJsonObject().get("returnCode").getAsString().equals(returnCodeB);
        }

        Assert.assertTrue("Unable to find any object with expected return code of " + returnCodeA ,foundA);
        Assert.assertTrue("Unable to find any object with expected return code of " + returnCodeB ,foundB);
    }

    /*
    US1278479 - Publish NDB API contract master more than one response
     */

    @Then("^The API returned one or more contract masters$")
    public void MultipleContractMaster() throws Throwable {
        JsonObject result = RestHelper.getInstance().parseJsonResponse(this.response);
        System.out.println(result);

        Assert.assertTrue(result.get("data").isJsonArray());
        for(JsonElement jsonElement : result.get("data").getAsJsonArray()){
            Assert.assertTrue(jsonElement.isJsonObject());
            Integer returnCode = Integer.parseInt(jsonElement.getAsJsonObject().get("returnCode").getAsString());
            Assert.assertTrue(returnCode >= 1000);
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
