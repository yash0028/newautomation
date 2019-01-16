package rest_api_test.step;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

import static io.restassured.RestAssured.given;

/**
 * Created by dtimaul on 8/7/18.
 */
public class TransactionSteps implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(TransactionSteps.class);

    private final String ENDPOINT = "http://event-gateway-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private final String RESOURCE_MOCK_CONTRACT_INSTALLED = "/v1.0/mock/contract-installed";

    private RequestSpecification request;
    private Response response;
    private JsonObject payload;

    @Given("^A business event is received by the event gateway that requires an update to NDB$")
    public void aBusinessEventIsReceivedByTheEventGatewayThatRequiresAnUpdateToNDB() throws Throwable {
        JsonElement result;
        JsonObject businessEvent = new JsonObject();
        JsonObject ndbModel = new JsonObject();
        payload = new JsonObject();

        // Add payload information to Json Objects
        businessEvent.addProperty("eventName", "ContractInstalled");
        businessEvent.addProperty("eventType", "contract-installed");
        businessEvent.addProperty("userId", "test1");
        businessEvent.addProperty("timestamp", "1533137086203");
        businessEvent.addProperty("contractId", "012345606");
        businessEvent.addProperty("transactionId", "bede15ef-3a3c-4a84-a7bb-3bd45e68e198");

        ndbModel.addProperty("container_Name", "REQUEST-F95");
        ndbModel.addProperty("container_Sequence_Number", "000000017");
        ndbModel.addProperty("contract_Id", "012345606");
        ndbModel.addProperty("effective_Date", "01/01/2021");
        ndbModel.addProperty("taxId_Number", "567656568");
        ndbModel.addProperty("mpin_Number", "6487228");
        ndbModel.addProperty("ctMaster_Number", "002738052");
        ndbModel.addProperty("ctMaster_NwkNumber", "00000040");
        ndbModel.addProperty("accept_NewUser", "O");
        ndbModel.addProperty("accept_NewUserCosmos", " ");
        ndbModel.addProperty("cancel_Date", "12/31/2022");
        ndbModel.addProperty("cancel_ReasonCode", "46");
        ndbModel.addProperty("pcp_Indicator", " ");
        ndbModel.addProperty("trans_Type", "C");
        ndbModel.addProperty("contract_Class", "SPA");
        ndbModel.addProperty("contract_Organisation", "UHN");
        ndbModel.addProperty("contract_State", "ND");
        ndbModel.addProperty("provider_SpecialIndex", "001");
        ndbModel.addProperty("group_SpecialIndex", "001");
        ndbModel.addProperty("cap_Index", "F");
        ndbModel.addProperty("timely_FileLimitDaysNumber", "99");
        ndbModel.addProperty("penality_NotifyNumber", "10");
        ndbModel.addProperty("medicalNecessity_EffectiveDate", "");
        ndbModel.addProperty("medicalNecessity_Indicator", "N");
        ndbModel.addProperty("enw_OptoutIndicator", "X");
        ndbModel.addProperty("market_Number", "");
        ndbModel.addProperty("payment_Method", "");
        ndbModel.addProperty("inpatient_OutpatientRate", "");
        ndbModel.addProperty("group_Table", "");
        ndbModel.addProperty("product_Code", "");
        ndbModel.addProperty("contract_ArrangementCode", "");
        ndbModel.addProperty("ipa_Number", "");
        ndbModel.addProperty("contract_Type", "");
        ndbModel.addProperty("fee_Schedule", "");
        ndbModel.addProperty("reassignMpin", "6488075");
        ndbModel.addProperty("reassignIpa", "001");
        ndbModel.addProperty("reassignAdrSeq", "0001");

        // Add Json Objects to payload
        payload.add("businessEvent", businessEvent);
        payload.add("ndbModel", ndbModel);

        //Send payload
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(payload);
        response = request.post(RESOURCE_MOCK_CONTRACT_INSTALLED);

//        System.out.println(response.getBody().asString());

        result = parseJsonElementResponse(response);
        assert result.isJsonObject();
        log.trace(result.getAsJsonObject().get("transactionId").getAsString());

    }

    @And("^the associated contract data is valid for the NDB update$")
    public void theAssociatedContractDataIsValidForTheNDBUpdate() throws Throwable {

        // Ask Micheal how do I know if the associated contract data is valid for the NDB update?
        throw new PendingException();
    }

    @When("^The enriched business event is sent by the contract-domain service$")
    public void theEnrichedBusinessEventIsSentByTheContractDomainService() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^It is validated and approved by the ndb-validator service$")
    public void itIsValidatedAndApprovedByTheNdbValidatorService() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^the associated contract data is incomplete$")
    public void theAssociatedContractDataIsIncomplete() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^It is validated by the ndb-validator service and an error is reported to the transaction system$")
    public void itIsValidatedByTheNdbValidatorServiceAndAnErrorIsReportedToTheTransactionSystem() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Given("^A business event is received by the event gateway that requires an update to COSMOS$")
    public void aBusinessEventIsReceivedByTheEventGatewayThatRequiresAnUpdateToCOSMOS() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^the associated contract data is valid for the COSMOS update$")
    public void theAssociatedContractDataIsValidForTheCOSMOSUpdate() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^It is validated and approved by the cosmos-validator service$")
    public void itIsValidatedAndApprovedByTheCosmosValidatorService() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^the associated contract data is invalid for the COSMOS update$")
    public void theAssociatedContractDataIsInvalidForTheCOSMOSUpdate() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^It is validated by the cosmos-validator service and an error is reported to the transaction system$")
    public void itIsValidatedByTheCosmosValidatorServiceAndAnErrorIsReportedToTheTransactionSystem() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }
}
