package rest_api_test.step;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import general_test.util.UtilityGeneralSteps;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

import static io.restassured.RestAssured.given;
import static io.restassured.RestAssured.when;
import static org.junit.Assert.*;

/**
 * Created by aberns on 6/29/2018.
 */
public class NDBSteps implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(NDBSteps.class);

    private static final String ENDPOINT_NDB_UPDATER = "http://ndb-updater-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_CLM_CONTRACT_ROSTER_PRODUCER = "/clm/ContractRosterProducer";

    private static final String ENDPOINT_TRANSACTION_STATUS = "http://transaction-status-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_TRANSACTION = "/v1/transaction/"; //need to add the {trans_id} to the end

    private static final long TIMEOUTMS = 60 * 1000;

    private RequestSpecification request;
    private Response response;
    private JsonObject payload;


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
        request = given().baseUri(ENDPOINT_NDB_UPDATER).header("Content-Type", "application/json").body(payload);
        response = request.post(RESOURCE_CLM_CONTRACT_ROSTER_PRODUCER);
    }

    @Then("^a valid response is received by NDB$")
    public void aValidResponseIsReceivedByNDB() throws Throwable {
        //Check for 200
        assertEquals(200, this.response.getStatusCode());

        //Get transaction id from response
        String tID = this.response.asString().replace("\"","");
        UtilityGeneralSteps.scenario.write("Transaction ID: " + tID);

        JsonParser parser = new JsonParser();
        JsonElement result;
        long startTime = System.currentTimeMillis();

        //Loop until request finishes
        do {
            //send Get request using transaction id
            //Get response from Transaction DB
            response = when().get(ENDPOINT_TRANSACTION_STATUS + RESOURCE_TRANSACTION + tID);
            System.out.println("---" + tID);
            System.out.println(response.getContentType());
            System.out.println(response.getBody().asString());
            System.out.println("---");
            result = parseJsonElementResponse(response);

            if(System.currentTimeMillis() > startTime + TIMEOUTMS){
                fail("Reached timeout for Transaction ID");
                return;
            }
        } while (result.toString().contains("404") || result.toString().contains("PENDING"));
        UtilityGeneralSteps.scenario.write(result.toString());

//        assertTrue(result.toString().contains("THERE IS AN EXISTING CONTRACT WITHIN THIS DATE RANGE")
//                || result.get("result").getAsString().equalsIgnoreCase("successful"));
        Assert.assertTrue( result.isJsonObject());
        String statusCode = result.getAsJsonObject().get("messages").getAsJsonArray().get(0).getAsJsonObject().get("code").getAsString();
        assertTrue(statusCode.contains("100") || statusCode.contains("200"));
    }
    
}
