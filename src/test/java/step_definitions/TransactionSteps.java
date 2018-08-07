package step_definitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

/**
 * Created by dtimaul on 8/7/18.
 */
public class TransactionSteps {
    @Given("^A business event is received by the event gateway that requires an update to NDB$")
    public void aBusinessEventIsReceivedByTheEventGatewayThatRequiresAnUpdateToNDB() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^the associated contract data is valid for the NDB update$")
    public void theAssociatedContractDataIsValidForTheNDBUpdate() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
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
}
