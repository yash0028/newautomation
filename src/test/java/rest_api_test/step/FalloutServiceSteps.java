package rest_api_test.step;

import com.google.gson.JsonElement;
import cucumber.api.PendingException;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;
import util.TimeKeeper;

import java.time.temporal.ChronoField;
import java.util.HashMap;
import java.util.Map;

import static io.restassured.RestAssured.given;

/**
 * Created by aberns on 6/29/2018.
 */
public class FalloutServiceSteps implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(FalloutServiceSteps.class);

    private static final String ENDPOINT = "http://fallout-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com";

    private static final String RESOURCE_WORKOBJECTS = "/v1.0/workobjects";
    private static final String RESOURCE_WORKOBJECTS_COMPLETE_TID = "/v1.0/workobjects/complete/";//{transaction id}
    private static final String RESOURCE_WORKOBJECTS_ITEMS_CONTRACT_MASTER = "/v1.0/workobjects/items/contract-master";
    private static final String RESOURCE_WORKOBJECTS_ITEMS_PRODUCTS_TID = "/v1.0/workobjects/items/products/";//{transaction id}
    private static final String RESOURCE_WORKOBJECTS_ITEMS_READY = "/v1.0/workobjects/items/ready";
    private static final String RESOURCE_WORKOBJECTS_ITEMS_ID = "/v1.0/workobjects/items/";//{id}
    private static final String RESOURCE_WORKOBJECTS_LOAD_CONTRACT_TID = "/v1.0/workobjects/load-contract/";//{transaction id}
    private static final String RESOURCE_WORKOBJECTS_OPEN_COUNT = "/v1.0/workobjects/open-count";
    private static final String RESOURCE_WORKOBJECTS_READ_TID = "/v1.0/workobjects/ready/";//{transaction id}
    private static final String RESOURCE_WORKOBJECTS_STATUS = "/v1.0/workobjects/";//{status}

    private RequestSpecification request;
    private Response response;

    //US1374416 - CMD - Create fallout-service REST endpoints for Contract Management Dashboard

    //TEST CASE :: query work objects

    @When("^I send the work object status \"([^\"]*)\" to the work object endpoint$")
    public void sendStatus(String status) throws Throwable {
        request = given().baseUri(ENDPOINT);
        response = request.get(RESOURCE_WORKOBJECTS_STATUS + status);
        Assert.assertEquals(response.getStatusCode(), 200);
    }

    @Then("^the response includes a number of transaction ids with the status of \"([^\"]*)\"$")
    public void listFromStatus(String status) throws Throwable {
        JsonElement result = parseJsonElementResponse(response);
        Assert.assertTrue(result.isJsonObject());

        int count = result.getAsJsonObject().get("numberOfElements").getAsInt();
        JsonElement content = result.getAsJsonObject().get("content");
        if (content != null && content.isJsonArray()) {
            Assert.assertEquals("content array is diffrent than reported size", count, content.getAsJsonArray().size());
        } else {
            Assert.assertEquals("count should be zero since content array is missing", 0, count);
        }
    }

    //TEST CASE :: create work object

    @When("^I send the following payload to create a work object$")
    public void createWorkObject(DataTable payload) throws Throwable {
        Map<String, String> requestParams = new HashMap<>(payload.asMap(String.class, String.class));

        log.info(requestParams.toString());

        //Replace date if now
        if(requestParams.getOrDefault("date","").equalsIgnoreCase("now")){
            String subDate = "" + System.currentTimeMillis();
            requestParams.replace("date", subDate);
        }

        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestParams);
        response = request.post(RESOURCE_WORKOBJECTS);
    }

    @Then("^the work object is created$")
    public void verifyCreateWorkObject() throws Throwable {
        Assert.assertEquals(200, response.getStatusCode(), 1);
        JsonElement jsonElement = parseJsonElementResponse(response);
        log.error("TODO::{}", jsonElement);
    }
}
