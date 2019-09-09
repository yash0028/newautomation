package rest_api_test.step;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;
import util.map.IMapSub;
import java.util.Map;

import static io.restassured.RestAssured.given;

/**
 * Created by vkyrasa on 2018/02/21.
 */

public class NDBFacilityFeedSteps implements IRestStep, IMapSub {
    private static final Logger log = LoggerFactory.getLogger(NDBFacilityFeedSteps.class);

    //TODO: fill this in when the endpoints are established
    private static final String ENDPOINT = "http://ndb-facility-feed-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_VALIDATE = "/v1.0/final-acknowledgements";

    private static final long TIMEOUTMS = 60 * 1000;

    private RequestSpecification request;
    private Response response;
    private JsonObject payload;

    // F268219
    // US1579133

    @Given("^NDB is ready to send the 2nd Acknowledgment of the facility contract$")
    public void NDBReadyToSend() throws Throwable {
        // assumed ready
    }


    @When("NDB calls the CLM API")
    public void ndbCallsTheCLMAPI() throws Throwable {
        payload = new JsonObject();

        payload.addProperty("transactionId", "0");
        payload.addProperty("contractId", "0");
        payload.addProperty("contractLineId", "0");
        payload.addProperty("mpin","0");
        payload.addProperty("tin","0");
        payload.addProperty("exrDocId","0");
        payload.addProperty("prodOfrId","0");

        request = given().baseUri(ENDPOINT)
                .header("Content-Type", "application/json")
                .body(payload);
        response = request.post(RESOURCE_VALIDATE);
    }

    @Then("CLM receives the data, validates the data and sends back the return status message.")
    public void clmReceivesTheDataValidatesTheDataAndSendsBackTheReturnStatusMessage() throws Throwable {
        Assert.assertNotNull(response);

        JsonElement result = parseJsonElementResponse(response);
        Assert.assertTrue(result.isJsonObject());
        JsonObject res = result.getAsJsonObject();
        Assert.assertTrue("Response improperly formatted.", res.has("returnMessage"));
        Assert.assertTrue("Response improperly formatted.", res.has("returnCode"));
    }

    @Given("NDB calls the CLM API with data")
    public void ndbCallsTheCLMAPIWithData() {
        //nop
    }

    @When("input data of the following fields is sent to CLM:")
    public void inputDataOfTheFollowingFieldsIsSentToCLM(Map<String, String> fields) {
        fields = subMapStringValues(fields);

        payload = new JsonObject();

        for(String key : fields.keySet()){
            payload.addProperty(key, fields.get(key));
        }
    }

    @And("the fields match with a single record in the CLM table {string}")
    public void theFieldsMatchWithASingleRecordInTheCLMTable(String tableName) {
        request = given().baseUri(ENDPOINT)
                .header("Content-Type", "application/json")
                .body(payload);
    }

    @Then("CLM returns {string} message and return code {string} as response to NDB request")
    public void clmReturnsMessageAndReturnCodeAsResponseToNDBRequest(String msg, String cde) {
        request = given().baseUri(ENDPOINT)
                .header("Content-Type", "application/json")
                .body(payload);
        response = request.post(RESOURCE_VALIDATE);
        JsonElement result = parseJsonElementResponse(response);
        Assert.assertTrue(result.isJsonObject());
        JsonObject res = result.getAsJsonObject();

        // check for return messages with null checks
        if(res.has("returnMessage")) {
            Assert.assertEquals(msg, res.get("returnMessage").getAsString());
        } else {
            Assert.fail("\"returnMessage\" field not found in response.");
        }

        if(res.has("returnCode")) {
            Assert.assertEquals(cde, res.get("returnCode").getAsString());
        } else {
            Assert.fail("\"returnCode\" field not found in response.");
        }
    }

    @Then("CLM saves the data of the following fields in the CLM table {string}:")
    public void clmSavesTheDataOfTheFollowingFieldsInTheCLMTable(String table, DataTable expectedFields) {
        //nop
        //      this is a manual test
        //      since we have to manually probe the DB to ensure records were created
    }

    @And("the fields DO NOT match with a single record in the CLM table {string}")
    public void theFieldsDONOTMatchWithASingleRecordInTheCLMTable(String tableName) {
        // nop, request is handled in the THEN field
    }
}
