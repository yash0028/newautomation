package step_definitions;

import cucumber.api.PendingException;
import utils.FileHelper;
import utils.RestHelper;
import com.google.gson.JsonObject;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

import java.io.*;
import java.util.Base64;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertEquals;
import static io.restassured.RestAssured.given;

/**
 * Created by jwacker on 7/19/2018.
 */
public class MSPSSteps {
    private static String baseUri = "http://fee-schedule-api-clm-dev.ocp-ctc-core-nonprod.optum.com";
    private static String facilityEndpoint = "/v1.0/facility_fee_schedules/search";
    private static String professionalEndpoint = "/v1.0/professional_fee_schedules/search";
    private JsonObject requestBody = new JsonObject();
    private RequestSpecification request;
    private Response response;

//F175776

    //US1165644

    @When("^the Exari interview calls for the facility fee schedules with (Facility|Physician) \"([^\"]*)\"$")
    public void theExariInterviewCallsForTheFacilityFeeSchedulesWithFacility(String callType, String feeScheduleNumber) throws Throwable {
        //Build JSON Request Body with the fee schedule number provided from the Scenario Outline
        requestBody.addProperty("feeScheduleNumber", feeScheduleNumber);

        //Build out the request and add the JSON Request Body
        request = given().baseUri(baseUri).header("Content-Type", "application/json").body(requestBody.toString());

        //Capture the response from a POST request to the endpoint URL (different endpoints for Facility and Physician)
        if(callType.equalsIgnoreCase("Facility")){
            response = request.post(facilityEndpoint);
        }else{
            response = request.post(professionalEndpoint);
        }

    }

    @Then("^the microservice will return the requested fee schedules in a (zip|pdf) file$")
    public void theMicroserviceWillReturnTheRequestedFeeSchedulesInAZipFile(String extension) throws Throwable {

        //Get the response as a JSON object
        JsonObject responseJson = RestHelper.getInstance().parseJsonResponse(response);

//        System.out.println(responseJson.toString());

        //Decode the feeScheduleFile bytes contained in the JSON into a Byte[]
        byte[] decoded = Base64.getDecoder().decode(responseJson.get("feeScheduleFile").getAsString());

        //Write the byte array to a zip file
        File file = FileHelper.getInstance().writeByteArrayToFile("testFile." + extension, decoded);

        //Assert that the call was successful
        assertEquals(200, response.getStatusCode());

        //Assert that the zip contains files or that the pdf is exists and can be read
        if(extension.equalsIgnoreCase("zip")){
            assertTrue(FileHelper.getInstance().zipContainsFiles(file));
        }
        else{
            assertTrue(file.isFile() && file.canRead());
        }

        //Delete the file when done
        file.delete();
    }

    @Then("^the microservice will return a \"([^\"]*)\" error message$")
    public void theMicroserviceWillReturnAError(String responseMessage) throws Throwable {
        //Make sure the response contains the responseMessage
        assertTrue(response.asString().contains(responseMessage));
    }
}
