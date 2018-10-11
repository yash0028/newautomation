package rest_api_test.step;

import com.google.gson.JsonElement;
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
 * Created by dtimaul on 8/15/18.
 */
public class MarketTableSteps implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(MarketTableSteps.class);

    private static final String ENDPOINT = "http://ndb-lookup-crosswalk-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_MARKET = "/market/";

    private RequestSpecification request;
    private Response response;
    private String marketNumber;

    @Given("^the market number \"([^\"]*)\" is(?: not)? listed in the Market UHC table$")
    public void setMarketNumber(String arg0) throws Throwable {
        marketNumber = arg0;
    }

    @When("^a query to the table is initiated$")
    public void initiateQuery() throws Throwable {
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json");
        response = request.get(RESOURCE_MARKET + marketNumber);
    }

    @Then("^the query response includes the market record information$")
    public void verifyQueryResponseWithMarketRecord() throws Throwable {
        JsonElement result = parseJsonElementResponse(response);

        // Checks to make sure the json element is a json object
        Assert.assertTrue(result.isJsonObject());

        Assert.assertEquals(marketNumber, result.getAsJsonObject().get("marketUhcDetails").getAsJsonObject().get("marketNumber").getAsString());
    }

    @Then("^the query response does not return the market record information$")
    public void verifyNoMarketRecord() throws Throwable {
        JsonElement result = parseJsonElementResponse(response);
        Assert.assertTrue(result.isJsonObject());

        Assert.assertTrue(result.getAsJsonObject().get("marketUhcDetails").isJsonNull());
    }

    @And("^a record not found message is returned$")
    public void verifyRecordNotFound() throws Throwable {
        JsonElement result = parseJsonElementResponse(response);
        Assert.assertTrue(result.isJsonObject());

        Assert.assertEquals("No data found", result.getAsJsonObject().get("errorDetails").getAsJsonObject().get("message").getAsString());
    }

}
