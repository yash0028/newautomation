package rest_api_test.step;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import general_test.util.UtilityGeneralSteps;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import rest_api_test.util.IRestStep;

import static io.restassured.RestAssured.given;
import static io.restassured.RestAssured.when;
import static org.junit.Assert.*;

/**
 * Created by aberns on 6/29/2018.
 */
public class NDBSteps implements IRestStep {
    private static final long TIMEOUTMS = 60 * 1000;
    private static final String NDB_LAYER7_BASE_URI = "http://ndb-updater-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String NDB_CONTRACT_UPDATE = "/clm/ContractRosterProducer";

    private static final String transactionBaseUri = "http://transaction-status-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String statusUri = "/v1/transaction/"; //need to add the {trans_id} to the end

    private RequestSpecification request;
    private Response response;
    private JsonObject payload;

    //F185083
    //US

    @Given("^the NDB connector microservice has received a roster update event$")
    public void recieveRosterUpdate() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^all of the NDB edits are successful$")
    public void ndbEditSuccess() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^the NDB microservices are ready to update NDB$")
    public void ndmReadyToUpdate() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^all of the NDB edits are not successful$")
    public void ndbEditFailure() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^the NDB microservices creates an error message$")
    public void ndbCreateError() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Given("^The event MS processed NDB edits successfully$")
    public void theEventMSProcessedNDBEditsSuccessfully() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^NDB completes the update / action successfully$")
    public void ndbCompletesTheUpdateActionSuccessfully() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^NDB initiates an event outcome message to the transaction state service$")
    public void ndbInitiatesAnEventOutcomeMessageToTheTransactionStateService() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^a transaction state service call indicating successful processing was made$")
    public void aTransactionStateServiceCallIndicatingSuccessfulProcessingWasMade() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    //US1233995

    @Given("^Exari needs to connect to NDB through layer 7$")
    public void exariNeedsToConnectToNDBThroughLayer() throws Throwable {
        //DO nothing here
    }

    @When("^Exari calls NDB through layer 7$")
    public void exariCallsNDBThroughLayer() throws Throwable {
        this.payload = new JsonObject();

        //Create payload
        this.payload.addProperty("containerName", "REQUEST-F95");
        this.payload.addProperty("containerSequenceNumber", "000000005");
        this.payload.addProperty("contractNumber", "012345682");
        this.payload.addProperty("effectiveDate", "01/01/2018");
        this.payload.addProperty("taxIdNumber", "976543236");
        this.payload.addProperty("mpinNumber", "6484928");
        this.payload.addProperty("contractMasterNumber", "002738031");
        this.payload.addProperty("contractMasterNetworkNumber", "000999999");
        this.payload.addProperty("acceptancePatientIndicatorUnet", "O");
        this.payload.addProperty("acceptancePatientIndicatorCosmos", " ");
        this.payload.addProperty("cancelDate", "12/31/9999");
        this.payload.addProperty("cancelReasonCode", " ");
        this.payload.addProperty("transactionType", "A");
        this.payload.addProperty("contractClass", "COM");
        this.payload.addProperty("contractOrganisation", "UHN");
        this.payload.addProperty("contractState", "OH");
        this.payload.addProperty("providerSpecialIndicator", "011");
        this.payload.addProperty("groupSpecialIndicator", "011");
        this.payload.addProperty("capIndicator", "F");
        this.payload.addProperty("timelyFileLimitDays", "33");
        this.payload.addProperty("financialPenalityTbl", "1");
        this.payload.addProperty("mednecEffectiveDate", " ");
        this.payload.addProperty("mednecIndicator", " ");
        this.payload.addProperty("enwOptOutIndicator", "X");
        this.payload.addProperty("reassignMpin", 6488075);
        this.payload.addProperty("reassignIpa", 1);
        this.payload.addProperty("reassignAdrSeq", 1);
        this.payload.addProperty("pcpIndicator", "");

        //Send payload
        request = given().baseUri(NDB_LAYER7_BASE_URI).header("Content-Type", "application/json").body(payload);
        response = request.post(NDB_CONTRACT_UPDATE);
    }

    @Then("^a valid response is received by NDB$")
    public void aValidResponseIsReceivedByNDB() throws Throwable {
        //Check for 200
        assertEquals(this.response.getStatusCode(), 200);

        //Get transaction id from response
        String tID = this.response.asString().replace("\"","");
        UtilityGeneralSteps.scenario.write("Transaction ID: " + tID);

        JsonParser parser = new JsonParser();
        JsonObject responseJson;
        long startTime = System.currentTimeMillis();

        //Loop until request finishes
        do {
            //send Get request using transaction id
            //Get response from Transaction DB
            response = when().get(transactionBaseUri + statusUri + tID);
            System.out.println("---" + tID);
            System.out.println(response.getContentType());
            System.out.println(response.getBody().asString());
            System.out.println("---");
            responseJson = parseJsonResponse(response);

            if(System.currentTimeMillis() > startTime + TIMEOUTMS){
                fail("Reached timeout for Transaction ID");
                return;
            }
        } while (responseJson.toString().contains("404") || responseJson.toString().contains("PENDING"));
        UtilityGeneralSteps.scenario.write(responseJson.toString());

//        assertTrue(result.toString().contains("THERE IS AN EXISTING CONTRACT WITHIN THIS DATE RANGE")
//                || result.get("result").getAsString().equalsIgnoreCase("successful"));
        String statusCode = responseJson.get("messages").getAsJsonArray().get(0).getAsJsonObject().get("code").getAsString();
        assertTrue(statusCode.contains("100") || statusCode.contains("200"));
    }
    
}
