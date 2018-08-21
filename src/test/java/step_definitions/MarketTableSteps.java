package step_definitions;

import com.google.gson.JsonObject;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import utils.RestHelper;

import static io.restassured.RestAssured.given;

/**
 * Created by dtimaul on 8/15/18.
 */
public class MarketTableSteps {
    private final String marketsTableEndpoint = "http://ndb-lookup-crosswalk-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private final String marketResource = "/market/";
    private RequestSpecification request;
    private Response response;

    @Given("^the market number is listed in the Market UHC table$")
    public void theMarketNumberIsListedInTheMarketUHCTable() throws Throwable {
        // Assume market number is listed in table.
    }

    @When("^a query to the table is initiated$")
    public void aQueryToTheTableIsInitiated() throws Throwable {
        request = given().baseUri(marketsTableEndpoint).header("Content-Type", "application/json");
        response = request.get(marketResource + "1402");
        Assert.assertEquals(response.getStatusCode(), 200);

        JsonObject result = RestHelper.getInstance().parseJsonResponse(response);
        System.out.println(result);

    }

    @Then("^the query response includes the market record information$")
    public void theQueryResponseIncludesTheMarketRecordInformation() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Given("^the market number is not listed in the Market UHC table$")
    public void theMarketNumberIsNotListedInTheMarketUHCTable() throws Throwable {
        // Assume market number is not listed in table.
    }

    @And("^a record not found message is returned$")
    public void aRecordNotFoundMessageIsReturned() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^the query response does not return the market record information$")
    public void theQueryResponseDoesNotReturnTheMarketRecordInformation() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }
}
