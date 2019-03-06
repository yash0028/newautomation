package rest_api_test.step;

import com.google.gson.JsonArray;
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
import util.file.IFileWriter;

import java.io.File;
import java.util.List;

import static io.restassured.RestAssured.given;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * Created by jwacker on 7/19/2018.
 */
public class MSPSSteps implements IRestStep, IFileWriter {
    private static final Logger log = LoggerFactory.getLogger(MSPSSteps.class);

    private static final String ENDPOINT = "http://fee-schedule-api-clm-test.ocp-ctc-core-nonprod.optum.com";
    private static final String ENDPOINT_DEV = "http://fee-schedule-api-clm-dev.ocp-ctc-core-nonprod.optum.com";
    private static final String RESOURCE_FACILITY_FEE_SCHEDULES_SEARCH = "/v1.0/facility_fee_schedules/search";
    private static final String RESOURCE_PROFESSIONAL_FEE_SCHEDULES_SEARCH = "/v1.0/professional_fee_schedules/search";
    private static final String RESOURCE_GET_FEE_SCHEDULES = "/v1.0/fee_schedules";


    private JsonObject requestBody = new JsonObject();
    private RequestSpecification request;
    private Response response;

//F175776 and F159017

    //US1165644

    @When("^the Exari interview calls for the facility fee schedules with (Facility|Physician) \"([^\"]*)\"$")
    public void theExariInterviewCallsForTheFacilityFeeSchedulesWithFacility(String callType, String feeScheduleNumber) throws Throwable {
        //Build JSON Request Body with the fee schedule number provided from the Scenario Outline
        requestBody.addProperty("feeScheduleNumber", feeScheduleNumber);

        //Build out the request and add the JSON Request Body
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody.toString());

        //Capture the response from a POST request to the endpoint URL (different endpoints for Facility and Physician)
        if(callType.equalsIgnoreCase("Facility")){
            response = request.post(RESOURCE_FACILITY_FEE_SCHEDULES_SEARCH);
        }else{
            response = request.post(RESOURCE_PROFESSIONAL_FEE_SCHEDULES_SEARCH);
        }

    }

    @Then("^the microservice will return the requested fee schedules in a (zip|pdf) file$")
    public void theMicroserviceWillReturnTheRequestedFeeSchedulesInAZipFile(String extension) throws Throwable {

        //Get the response as a byte array
        byte[] fileBytes = response.asByteArray();

        //Write the byte array to a zip or pdf file based on the extension
        File file = writeByteArrayToFile("testFile." + extension, fileBytes);

        //Assert that the call was successful
        assertEquals(200, response.getStatusCode());

        //Assert that the zip contains files or that the pdf is exists and can be read
        if(extension.equalsIgnoreCase("zip")){
            assertTrue(zipContainsFiles(file));
        }
        else{
            assertTrue(file.isFile() && file.canRead());
        }

        //Delete the file when done
        file.delete();
    }

    @Then("^the microservice will return a \"([^\"]*)\" error message$")
    public void theMicroserviceWillReturnAError(String responseCode) throws Throwable {
        //Make sure the response contains the responseMessage
        assertTrue(responseCode.equals(response.getStatusCode() + ""));
    }


    // US1562118 - Implement API to allow for Integration - Obtain Fee Schedule Information from MSPS

    @Given("^a need for integration with MSPS$")
    public void aNeedForIntegrationWithMSPS() throws Throwable {
        // noop
    }

    @When("^reaching out the fee-schedule-api with \"([^\"]*)\" of \"([^\"]*)\"$")
    public void reachingOutTheFeeScheduleApiWithOf(String field, String value) throws Throwable {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(value);

        requestBody.add(field, jsonArray);
        requestBody.addProperty("loggedInUserName","clmqe1");
        //Build out the request and add the JSON Request Body
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody.toString());

        response = request.post(RESOURCE_GET_FEE_SCHEDULES);
    }

    @Then("^the fee-schedule-api returns the following fields:$")
    public void theFeeScheduleApiReturnsTheFollowingFields(DataTable responseFieldsDT) throws Throwable {
        List<String> responseFields = responseFieldsDT.asList();

        boolean allMatch = true;

        //Loop through each field, and if the response does not contain each field, set allMatch to false
        for(String field: responseFields){
            if(!response.asString().contains(field)){
                allMatch = false;
            }
            log.info("{} {}" , field , response.asString());
        }
        //Pass the test if allMatch remains true, showing that the response does contain all required fields
        assertTrue("Not all fields were returned in the response", allMatch);
    }
}
