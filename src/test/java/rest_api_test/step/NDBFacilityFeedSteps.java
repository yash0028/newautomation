package rest_api_test.step;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import cucumber.api.java.en.And;
import general_test.util.UtilityGeneralSteps;
import io.cucumber.datatable.DataTable;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;
import java.util.List;
import java.util.Map;

import static io.restassured.RestAssured.given;

/**
 * Created by vkyrasa on 2018/02/21.
 */

public class NDBFacilityFeedSteps implements IRestStep {
    //TODO: fix logger
    private static final Logger log = LoggerFactory.getLogger(NDBFacilityFeedSteps.class);

    //TODO: fill this in when the endpoints are established
    private static final String ENDPOINT = "http://localhost:8080/v1.0/ndb_facility_feed_api";
    private static final String RESOURCE_VALIDATE = "/validate_and_update";

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
    }

    @Given("NDB calls the CLM API with data")
    public void ndbCallsTheCLMAPIWithData() {
        //nop
    }

    @When("input data of the following fields is sent to CLM:")
    public void inputDataOfTheFollowingFieldsIsSentToCLM(Map<String, String> fields) {
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

        log.info(response.asString());

        Assert.assertEquals(msg, result.getAsJsonObject().get("returnMessage").getAsString());
        Assert.assertEquals(cde, result.getAsJsonObject().get("returnCode").getAsString());
    }

    @Then("CLM saves the data of the following fields in the CLM table {string}:")
    public void clmSavesTheDataOfTheFollowingFieldsInTheCLMTable(String table, DataTable expectedFields) {
        //TODO: figure out how to test this
        //      it may end up needing to be manual
        //      since we have to manually probe the DB to ensure records were created

        /*

        //TODO: get real endpoint and send request
        response = request.post(ENDPOINT);
        JsonElement _result = parseJsonElementResponse(this.response);
        JsonObject result = _result.getAsJsonObject();

        // check table name
        Assert.assertEquals(result.get("tableName"), table);

        //check field data
        List<String> fields = expectedFields.asList();

        boolean match = true;
        for (String field : fields) {
            field = field.trim();
            if(!result.get(field)) {
                match = false;
                log.info("Field: {} was not found in the response.", field);
            }
        }
        //TODO: might need to verify the specific data
        */
    }

    @And("the fields DO NOT match with a single record in the CLM table {string}")
    public void theFieldsDONOTMatchWithASingleRecordInTheCLMTable(String tableName) {
        request = given().baseUri(ENDPOINT)
                .header("Content-Type", "application/json")
                .body(payload);
        //TODO: verify tablename in response (?)
    }

    @When("input data of the field {string} not found in the CLM table {string}")
    public void inputDataOfTheFieldNotFoundInTheCLMTable(String fieldName, String tableName) {
        //TODO: check input data not found (?)
    }
}
