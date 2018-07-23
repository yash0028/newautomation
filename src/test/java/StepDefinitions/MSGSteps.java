package StepDefinitions;

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
    private static String baseUri      = "http://market-strategy-grid-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static String goOutRatesEndpoint = "/v1.0/go_out_rates/product_search";
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

        //Iterate through the list and add to the JSON request body the field and it's sample value
        /*
        for(String key: requestParams.keySet()){
            requestBody.addProperty(key, requestParams.get(key));
        }
        */

        //System.out.println("REQUEST BODY: " + requestBody.toString());
        //System.out.println("request params: " + requestParams.toString());

        //Build out the request and add the request body
        request = given().baseUri(baseUri).header("Content-Type", "application/x-www-form-urlencoded").formParams(requestParams);
    }

    @Then("^I receive all products that fit this criteria$")
    public void iReceiveAllProductsThatFitThisCriteria() throws Throwable {
        response = request.get(goOutRatesEndpoint);
        String responseString = response.asString();

        System.out.println("RESPONSE: " + responseString);

        //TODO: based on the response, change this assert so that it can validate a valid response received from MSG Service (should be JSON containing rows from the MSG Grid)
        assertEquals(200, response.getStatusCode());
        //assertTrue(response.asString().contains("Products"));
    }
}
