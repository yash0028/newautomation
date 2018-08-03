package step_definitions;

import com.google.gson.JsonObject;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import java.util.List;
import java.util.Map;

import static io.restassured.RestAssured.given;
import static org.junit.Assert.assertTrue;

/**
 * Created by jwacker on 8/3/2018.
 */
public class MEGSteps {

    private static String baseUri = "http://market-exception-api-clm-dev.ocp-ctc-core-nonprod.optum.com";
    private static String endpoint = "";
    private JsonObject requestBody = new JsonObject();
    private RequestSpecification request;
    private Response response;

//F196394

    //US1209989
    @Given("^I have the ability to read the MS SQL$")
    public void iHaveTheAbilityToReadTheMSSQL() throws Throwable {
        //noop - assuming access
    }

    @When("^I make a request to the microservice to read a record with fields:$")
    public void iMakeARequestToTheMicroserviceToReadARecordWithFields(DataTable requestParamsDT) throws Throwable {
        //Get the DataTable as a Map of the fields and values for the request
        Map<String,String> requestParams = requestParamsDT.asMap(String.class, String.class);

        //Add each key:value pair
        for(String key: requestParams.keySet()){
            requestBody.addProperty(key, requestParams.getOrDefault(key, ""));
        }

        //Build out the request and add the request body
        request = given().baseUri(baseUri).header("Content-Type", "application/json").body(requestParams);
    }

    @Then("^I receive data that I would get from reading SQL db directly including the fields:$")
    public void iReceiveDataThatIWouldGetFromReadingSQLDbDirectlyIncludingTheFields(DataTable responseFieldsDT) throws Throwable {
        //Get the response
        response = request.post(endpoint);
        //Get the response fields from the data table as a list
        List<String> responseFields = responseFieldsDT.asList();
        boolean allMatch = true;

        //Loop through each field, and if the response does not contain each field, set allMatch to false
        for(String field: responseFields){
            field = field.toLowerCase();

            if(!response.asString().toLowerCase().contains(field)){
                allMatch = false;
            }
        }
        //Pass the test if allMatch remains true, showing that the response does contain all required fields
        assertTrue(allMatch);
    }
}
