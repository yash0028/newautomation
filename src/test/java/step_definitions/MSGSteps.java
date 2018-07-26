package step_definitions;

import utils.RestHelper;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static io.restassured.RestAssured.given;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * Created by jwacker on 7/18/2018.
 */
public class MSGSteps {
    private static String baseUri      = "http://market-strategy-grid-api-clm-dev.ocp-ctc-core-nonprod.optum.com";
    private static String goOutRatesEndpoint = "/v1.0/products";
    private RequestSpecification request;
    private Response response;
    private JsonObject requestBody = new JsonObject();

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

//        System.out.println("request params: " + requestParams.toString());

        //Build out the request and add the request body
        request = given().baseUri(baseUri).header("Content-Type", "application/x-www-form-urlencoded").formParams(requestParams);
    }

    @Then("^I receive all products that fit this criteria$")
    public void iReceiveAllProductsThatFitThisCriteria() throws Throwable {
        response = request.get(goOutRatesEndpoint);
//        String responseString = response.asString();

        JsonObject responseJson = RestHelper.getInstance().parseJsonResponse(response);

 //       System.out.println("RESPONSE: " + responseString);

        assertEquals(200, response.getStatusCode());
        assertTrue(!responseJson.get("content").toString().equals("[]"));
    }
}
