package step_definitions;

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

    @When("^the Exari interview calls for the facility fee schedules with Facility \"([^\"]*)\"$")
    public void theExariInterviewCallsForTheFacilityFeeSchedulesWithFacility(String feeScheduleNumber) throws Throwable {
        //Build JSON Request Body with the fee schedule number provided from the Scenario Outline
        requestBody.addProperty("feeScheduleNumber", feeScheduleNumber);

        //Build out the request and add the JSON Request Body
        request = given().baseUri(baseUri).header("Content-Type", "application/json").body(requestBody.toString());

        //Capture the response from a POST request to the endpoint URL
        response = request.post(facilityEndpoint);
    }

    @Then("^the microservice will return the requested fee schedules in a zip file$")
    public void theMicroserviceWillReturnTheRequestedFeeSchedulesInAZipFile() throws Throwable {

        //Get the response as a JSON object
        JsonObject responseJson = RestHelper.getInstance().parseJsonResponse(response);

//        System.out.println(responseJson.toString());

        //Decode the feeScheduleFile bytes contained in the JSON into a Byte[]
        byte[] decoded = Base64.getDecoder().decode(responseJson.get("feeScheduleFile").getAsString());

        //Write the byte array to a zip file
        File file = writeByteArrayToFile("testZipFile.zip", decoded);

        //Assert that the call was successful and that the zip contains files
        assertEquals(200, response.getStatusCode());
        assertTrue(zipContainsFiles(file));

        //Delete the file when done
        file.delete();
    }

    private File writeByteArrayToFile(String fileName, byte[] content) throws IOException{
        //Create the file with the given filename
        File file = new File(fileName);
        BufferedOutputStream writer = new BufferedOutputStream(new FileOutputStream(file));

        //Write the byte[] to the file
        writer.write(content);
        writer.flush();
        writer.close();

        return file;
    }

    private boolean zipContainsFiles(File file){
        ZipFile zipFile = null;
        int size = 0;

        try {
            //Create instance of ZipFile with the given file
            zipFile = new ZipFile(file);

            //Get the size of the zip file
            size = zipFile.size();
            zipFile.close();
        }
        catch(IOException e) {
            System.out.println("Error regarding zip file: " + e.getMessage());
        }

        //Return true if the zip file contains at least one file
        return size > 0;
    }

}
