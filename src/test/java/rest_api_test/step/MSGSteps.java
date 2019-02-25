package rest_api_test.step;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.PendingException;
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

import java.util.Map;
import java.util.Set;

import static io.restassured.RestAssured.given;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * Created by jwacker on 7/18/2018.
 */
public class MSGSteps implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(MSGSteps.class);

    private static final String ENDPOINT = "http://market-strategy-grid-api-clm-test.ocp-ctc-core-nonprod.optum.com";
    private static final String RESOURCE_PRODUCTS = "/v1.0/products";

    private RequestSpecification request;
    private Response response;

//F180705

    //US1050707

    @Given("^I have the ability to read the MS Access DB$")
    public void iHaveTheAbilityToReadTheMSAccessDB() throws Throwable {
        // noop assuming access
    }

    @When("^I make a request to the microservice to read a record using the following fields:$")
    public void iMakeARequestToTheMicroserviceToReadARecordUsingTheFollowingFields(DataTable requestParamsDT) throws Throwable {
        //Get the DataTable as a Map of the fields and values for the request
        Map<String,String> requestParams = requestParamsDT.asMap(String.class, String.class);

        //Build out the request and add the request body
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/x-www-form-urlencoded").formParams(requestParams);
    }

    @Then("^I receive all products that fit this criteria$")
    public void iReceiveAllProductsThatFitThisCriteria() throws Throwable {
        response = request.get(RESOURCE_PRODUCTS);

        JsonElement result = parseJsonElementResponse(response);

        log.info("MSG Response: {}", response.asString());

        assertEquals(200, response.getStatusCode());
        assert result.isJsonObject();
        assertTrue(!result.getAsJsonObject().get("content").toString().equals("[]"));
    }

    @Then("^I receive a response with empty content$")
    public void iReceiveAResponseWithEmptyContent() throws Throwable {
        response = request.get(RESOURCE_PRODUCTS);

        JsonElement result = parseJsonElementResponse(response);

        log.info("MSG Response: {}", response.asString());

        assertEquals(200, response.getStatusCode());
        assert result.isJsonObject();
        assertEquals("[]", result.getAsJsonObject().get("content").toString());
    }
    
    // US1559821 - Fix Duplicate Fields Optum-Exari

    @Then("^I receive a response from the MSG service with no duplicate fields$")
    public void iReceiveAResponseFromTheMSGServiceWithNoDuplicateFields() throws Throwable {
        response = request.get(RESOURCE_PRODUCTS);

        Assert.assertEquals("Did not receive a successful response from the service", 200, response.getStatusCode());

        JsonElement result = parseJsonElementResponse(response);

        // The data contained in the content element is what we're working with
        JsonArray contentArray = result.getAsJsonObject().get("content").getAsJsonArray();
        JsonObject content = contentArray.get(0).getAsJsonObject();

        // Get a set of the keys. Since sets don't contain duplicate values, we can use
        // the size of this to compare with the total size of the content element
        // to check for duplicate values
        Set<String> nonDuplicateKeys = content.keySet();

        int totalKeys = content.size();
        int totalUniqueKeys = nonDuplicateKeys.size();

        Assert.assertEquals("Duplicate values found in response from MSG service", totalKeys, totalUniqueKeys);
    }

    @And("^the fields from the MSG response start with a capital letter$")
    public void theFieldsFromTheMSGResponseStartWithACapitalLetter() throws Throwable {
        JsonElement result = parseJsonElementResponse(response);

        JsonArray contentArray = result.getAsJsonObject().get("content").getAsJsonArray();
        JsonObject content = contentArray.get(0).getAsJsonObject();

        Set<String> keys = content.keySet();

        for(String key: keys){
            Assert.assertTrue("Property " + key + " returned from MSG service starts with lowercase letter", Character.isUpperCase(key.charAt(0)));
        }
    }
}
