package rest_api_test.step;

import com.google.gson.JsonObject;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

import static io.restassured.RestAssured.given;
/**
 * Created by dtimaul on 12/20/18.
 */
public class ContractConfigApiSteps {

    @Given("^a valid contract installation transaction has been received from Exari$")
    public void aValidContractInstallationTransactionHasBeenReceivedFromExari() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }


    @When("^the contract configuration api is envoked$")
    public void theContractConfigurationApiIsEnvoked() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^the contract configuration api includes provider product status data$")
    public void theContractConfigurationApiIncludesProviderProductStatusData() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }
}
