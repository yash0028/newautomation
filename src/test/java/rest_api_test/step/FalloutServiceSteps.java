package rest_api_test.step;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static io.restassured.RestAssured.given;

/**
 * Created by aberns on 6/29/2018.
 */
public class FalloutServiceSteps implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(FalloutServiceSteps.class);

    private static final String ENDPOINT = "http://fallout-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com";

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
    private Map<String, String> payload;

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

    //TEST CASE :: query flag to load override

    @When("^I send the transaction id \"([^\"]*)\" to work object complete endpoint$")
    public void queryCompleteWorkObjects(String tid) throws Throwable {
        request = given().baseUri(ENDPOINT);
        response = request.get(RESOURCE_WORKOBJECTS_COMPLETE_TID + tid);
        Assert.assertEquals(response.getStatusCode(), 200);
    }


    @Then("^the work object is completed$")
    public void checkCompleteWorkObject() throws Throwable {
        JsonElement jsonElement = parseJsonElementResponse(response);
        log.info(jsonElement.toString());
        Assert.assertTrue(jsonElement.isJsonPrimitive());
        Assert.assertTrue(jsonElement.getAsBoolean());
    }

    //TEST CASE :: update work object item contract master

    @When("^I send the following payload to update contract master work object$")
    public void updateWorkObject(DataTable dataTable) throws Throwable {
        payload = dataTable.asMap(String.class, String.class);

        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(payload);
        response = request.put(RESOURCE_WORKOBJECTS_ITEMS_CONTRACT_MASTER);
        Assert.assertEquals(200, response.getStatusCode());
    }

    @Then("^the contract master is updated$")
    public void verifyContractMasterUpdate() throws Throwable {
        JsonElement jsonElement = parseJsonElementResponse(response);
        log.info(jsonElement.toString());

        queryWorkObjectItem(payload.get("id"));
        JsonElement jsonCheck = parseJsonElementResponse(response);
        Assert.assertTrue(jsonCheck.isJsonObject());
        Assert.assertTrue(jsonCheck.getAsJsonObject().get("contractMasters").isJsonArray());
        List<JsonObject> checkList = new ArrayList<>();

        for (JsonElement element : jsonCheck.getAsJsonObject().get("contractMasters").getAsJsonArray()) {
            Assert.assertTrue(element.isJsonObject());
            checkList.add(element.getAsJsonObject());
        }

        //Make sure that the contract that was updated was actually set to the new status
        boolean updated = checkList.stream()
                .filter(jsonObject -> {
                    String payloadSelect = payload.get("selectedContractMaster");
                    String jsonId = jsonObject.get("id").getAsString();
                    String jsonCm = jsonObject.get("selectedContractMaster").getAsString();
                    return payloadSelect.equalsIgnoreCase(jsonId) || payloadSelect.equalsIgnoreCase(jsonCm);
                })
                .anyMatch(jsonObject -> {
                    String payloadUsage = payload.get("usage");
                    String jsonStatus = jsonObject.get("status").getAsString();
                    return payloadUsage.equalsIgnoreCase(jsonStatus);
                });

        Assert.assertTrue(updated);
    }

    //TEST CASE :: query product group list by transaction id

    @When("^I send the transaction id \"([^\"]*)\" to products group endpoint$")
    public void queryProductGroupList(String tid) throws Throwable {
        request = given().baseUri(ENDPOINT);
        response = request.get(RESOURCE_WORKOBJECTS_ITEMS_PRODUCTS_TID + tid);
        Assert.assertEquals(response.getStatusCode(), 200);
    }

    @Then("^the response includes valid product groups$")
    public void verifyProductGroup() throws Throwable {
        JsonElement jsonElement = parseJsonElementResponse(response);
        log.info(jsonElement.toString());
        Assert.assertTrue(jsonElement.isJsonArray());
    }

    //TEST CASE :: update work object item ready

    @When("^I send the following payload to update work object ready state$")
    public void updateWorkObjectReady(DataTable dataTable) throws Throwable {
        Map<String, String> payload = dataTable.asMap(String.class, String.class);

        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(payload);
        response = request.put(RESOURCE_WORKOBJECTS_ITEMS_READY);
        Assert.assertEquals(200, response.getStatusCode());
    }

    @Then("^the work object is ready$")
    public void theWorkObjectIsReady() throws Throwable {
        JsonElement jsonElement = parseJsonElementResponse(response);
        log.info(jsonElement.toString());
        Assert.assertTrue(jsonElement.isJsonNull());
    }

    //TEST CASE :: query work object item

    @When("^I send the id \"([^\"]*)\" to the work object items endpoint$")
    public void queryWorkObjectItem(String id) throws Throwable {
        request = given().baseUri(ENDPOINT);
        response = request.get(RESOURCE_WORKOBJECTS_ITEMS_ID + id);
        Assert.assertEquals(response.getStatusCode(), 200);
    }

    @Then("^the response includes valid contract data$")
    public void theResponseIncludesValidContractData() throws Throwable {
        JsonElement jsonElement = parseJsonElementResponse(response);
        log.info(jsonElement.toString());
        Assert.assertTrue(jsonElement.isJsonObject());

        JsonObject jsonObject = jsonElement.getAsJsonObject();
        Assert.assertTrue(jsonObject.has("id"));
        Assert.assertTrue(jsonObject.has("status"));
        Assert.assertTrue(jsonObject.has("type"));
        Assert.assertTrue(jsonObject.has("feeSchedule"));
    }

    //TEST CASE :: rerun work object

    @When("^I send the transaction id \"([^\"]*)\" to load contract endpoint$")
    public void rerunContract(String tid) throws Throwable {
        request = given().baseUri(ENDPOINT);
        response = request.post(RESOURCE_WORKOBJECTS_LOAD_CONTRACT_TID + tid);
        Assert.assertEquals(response.getStatusCode(), 200);
    }

    @Then("^the contract is rerun$")
    public void verifyContractRerun() throws Throwable {
        JsonElement jsonElement = parseJsonElementResponse(response);
        log.info(jsonElement.toString());
    }

    //TEST CASE :: query work object count

    @When("^I send a request to the work object count endpoint$")
    public void queryWorkObjectCount() throws Throwable {
        request = given().baseUri(ENDPOINT);
        response = request.get(RESOURCE_WORKOBJECTS_OPEN_COUNT);
        Assert.assertEquals(response.getStatusCode(), 200);
    }

    @Then("^the response includes the current count$")
    public void theResponseIncludesTheCurrentCount() throws Throwable {
        JsonElement jsonElement = parseJsonElementResponse(response);
        log.info(jsonElement.toString());
        Assert.assertTrue(jsonElement.isJsonObject());
        Assert.assertTrue(jsonElement.getAsJsonObject().get("result").isJsonPrimitive());
        Assert.assertTrue(jsonElement.getAsJsonObject().get("count").isJsonPrimitive());
    }

    //TEST CASE :: query work object ready

    @When("^I send the transaction id \"([^\"]*)\" to the ready work object endpoint$")
    public void iSendTheTransactionIdToTheReadyWorkObjectEndpoint(String tid) throws Throwable {
        request = given().baseUri(ENDPOINT);
        response = request.get(RESOURCE_WORKOBJECTS_READ_TID + tid);
        Assert.assertEquals(200, response.getStatusCode());
    }

    @Then("^the response includes the ready status of the work object$")
    public void theResponseIncludesTheReadyStatusOfTheWorkObject() throws Throwable {
        JsonElement jsonElement = parseJsonElementResponse(response);
        log.info(jsonElement.toString());
        Assert.assertFalse(jsonElement.isJsonObject());
    }
}
