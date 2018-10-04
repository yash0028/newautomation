package rest_api_test.step;

import com.google.gson.JsonObject;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

import java.util.List;
import java.util.Map;

import static io.restassured.RestAssured.given;
import static org.junit.Assert.assertTrue;

/**
 * Created by jwacker on 8/3/2018.
 */
public class MEGSteps implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(MEGSteps.class);

    private static final String ENDPOINT = "http://market-exception-api-clm-test.ocp-ctc-core-nonprod.optum.com";
    private static final String RESOURCE_MARKET_EXCEPTION_SEARCH = "/v1.0/market_exceptions/search";

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
            //RESOURCE_MARKET_EXCEPTION_SEARCH += "/" + key + "/" + requestParams.getOrDefault(key, "") + "/";
        }

        //Build out the request and add the request body
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody);

    }

    @Then("^I receive data that I would get from reading SQL db directly including the fields:$")
    public void iReceiveDataThatIWouldGetFromReadingSQLDbDirectlyIncludingTheFields(DataTable responseFieldsDT) throws Throwable {
        //Get the response
        response = request.post(RESOURCE_MARKET_EXCEPTION_SEARCH);

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

    //US1210025

    @When("^the MEG microservice is called$")
    public void theMEGMicroserviceIsCalled() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^a valid MEG response is returned$")
    public void aValidMEGResponseIsReturned() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Given("^the Exari system will access the MEG$")
    public void theExariSystemWillAccessTheMEG() throws Throwable {
        // Spike story, no testing needed
        throw new PendingException();
    }

    @Then("^a developer will have to research how to connect to the MEG backend\\.$")
    public void aDeveloperWillHaveToResearchHowToConnectToTheMEGBackend() throws Throwable {
        // Spike story, no testing needed
        throw new PendingException();
    }
}
