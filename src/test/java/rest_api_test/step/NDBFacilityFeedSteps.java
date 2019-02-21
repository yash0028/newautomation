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
    //private static final Logger log = LoggerFactory.getLogger(NDBFacilityFeedSteps.class);

    //TODO: fill this in when the endpoints are established
    private static final String ENDPOINT = "TEMP";
    private static final String FAC_FEED_TEST_TABLE = "";

    private static final long TIMEOUTMS = 60 * 1000;

    private RequestSpecification request;
    private Response response;
    private JsonObject payload;

    // F268219
    // US1579133

    @Given("^NDB is ready to send the 2nd Acknowledgment of the facility contract$")
    public void NDBFacilityFeedSteps() throws Throwable {
        // nop
        throw new PendingException();
    }


    @When("NDB calls the CLM API")
    public void ndbCallsTheCLMAPI() throws Throwable {
        throw new PendingException();
    }

    @Then("CLM receives the data, validates the data and sends back the return status message.")
    public void clmReceivesTheDataValidatesTheDataAndSendsBackTheReturnStatusMessage() throws Throwable {
        throw new PendingException();
    }

    @Given("NDB calls the CLM API with data")
    public void ndbCallsTheCLMAPIWithData() {
        //nop
    }

    @When("input data of the following fields is sent to CLM:")
    public void inputDataOfTheFollowingFieldsIsSentToCLM(DataTable inputData) {
        //TODO: test this change
//        List<String> fields = inputData.asList();
        Map<String> fields = inputData.asMap();


        payload = new JsonObject();

        for(String key : fields.keySet()){
            payload.addProperty(key, fields.get(key));
        }

        System.out.println(payload.toString());
    }

    @And("the fields match with a single record in the CLM table {string}")
    public void theFieldsMatchWithASingleRecordInTheCLMTable(String arg0) {
        request = given().baseUri(ENDPOINT + FAC_FEED_TEST_TABLE)
                .header("Content-Type", "application/json")
                .body(payload.toString());

        System.out.println(request);
    }

    @Then("CLM returns {string} message and return code {string} as response to NDB request")
    public void clmReturnsMessageAndReturnCodeAsResponseToNDBRequest(String responseStatusCode, String returnCode) {
//        response = request.post(ENDPOINT);
//        Assert.assertEquals(responseStatusCode, response.getStatusCode());
        JsonElement result = parseJsonElementResponse(this.response);

        Assert.assertEquals(returnCode, result.getAsJsonObject().get("responseStatus").getAsString());
    }

    @Then("CLM saves the data of the following fields in the CLM table {string}:")
    public void clmSavesTheDataOfTheFollowingFieldsInTheCLMTable(String table, DataTable expectedFields) {
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
                log.info("Field: {} was not found in the response.", field)
            }
        }
        //TODO: might need to verify the specific data
    }
}
