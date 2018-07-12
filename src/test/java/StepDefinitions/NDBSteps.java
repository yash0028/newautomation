package StepDefinitions;

import cucumber.api.DataTable;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import gherkin.deps.com.google.gson.JsonObject;
import io.restassured.response.Response;
import io.restassured.response.ResponseBody;
import io.restassured.specification.RequestSpecification;

import java.util.List;

import static org.junit.Assert.assertTrue;
import static io.restassured.RestAssured.given;

/**
 * Created by aberns on 6/29/2018.
 */
public class NDBSteps {

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
}
