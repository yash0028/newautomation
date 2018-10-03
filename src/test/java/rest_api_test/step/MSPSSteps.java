package rest_api_test.step;

import com.google.gson.JsonObject;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;
import util.FileHelper;

import java.io.File;

import static io.restassured.RestAssured.given;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * Created by jwacker on 7/19/2018.
 */
public class MSPSSteps implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(MSPSSteps.class);

    private static final String ENDPOINT = "http://fee-schedule-api-clm-dev.ocp-ctc-core-nonprod.optum.com";
    private static final String RESOURCE_FACILITY_FEE_SCHEDULES_SEARCH = "/v1.0/facility_fee_schedules/search";
    private static final String RESOURCE_PROFESSIONAL_FEE_SCHEDULES_SEARCH = "/v1.0/professional_fee_schedules/search";

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
        File file = FileHelper.getInstance().writeByteArrayToFile("testFile." + extension, fileBytes);

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
    public void theMicroserviceWillReturnAError(String responseCode) throws Throwable {
        //Make sure the response contains the responseMessage
        assertTrue(responseCode.equals(response.getStatusCode() + ""));
    }

    //US1009534

    @Given("^a contractor will need to be able to retrieve the MSPS fee schedule$")
    public void aContractorWillNeedToBeAbleToRetrieveTheMSPSFeeSchedule() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^at this step in the interview process in Exari to retrieve a fee schedule$")
    public void atThisStepInTheInterviewProcessToRetrieveAFeeSchedule() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^a fee schedule\\(s\\) are returned based on input criteria\\.$")
    public void aFeeScheduleSAreReturnedBasedOnInputCriteria() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

//F175776

    //US1261012 and US1165661

    @When("^connecting to the MSPS service from Exari with a fee schedule number for a facility$")
    public void connectingToTheMSPSServiceFromExariWithAFeeScheduleNumberForAFacility() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^I receive the needed data in a zip file from the MSPS service\\.$")
    public void iReceiveTheNeededDataInAZipFileFromTheMSPSService() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    //US1234808

    @Given("^a fee schedule is searched$")
    public void aFeeScheduleIsSearched() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^the resource is streamed to Exari$")
    public void theResourceIsStreamedToExari() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^the end result is an encoded string on the Exari side$")
    public void theEndResultIsAnEncodedStringOnTheExariSide() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    //US1295290 - (Pending until PI03.05)

    @Given("^a user is requesting a (?:professional|facility) fee schedule$")
    public void aUserIsRequestingAProfessionalFeeSchedule() throws Throwable {
        // Pending because this relates to external data query
        throw new PendingException();
    }

    @When("^they pass a version number$")
    public void theyPassAVersionNumber() throws Throwable {
        // Pending because this relates to external data query
        throw new PendingException();
    }

    @Then("^that specific version fee schedule is returned$")
    public void thatSpecificVersionFeeScheduleIsReturned() throws Throwable {
        // Pending because this relates to external data query
        throw new PendingException();
    }
}
