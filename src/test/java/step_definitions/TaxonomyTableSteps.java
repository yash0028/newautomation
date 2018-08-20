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
 * Created by dtimaul on 8/20/18.
 */
public class TaxonomyTableSteps {
    private JsonObject payload;
    private final String taxonomyTableBaseURI = "";
    private final String taxonomyQueryEndpoint = "/taxonomy/query";
    private RequestSpecification request;
    private Response response;

    @Given("^a user needs to query the table$")
    public void aUserNeedsToQueryTheTable() throws Throwable {
        //Assume user has done this.
    }

    @When("^the query response result includes more than one record$")
    public void theQueryResponseResultIncludesMoreThanOneRecord() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^the response includes all records that matched$")
    public void theResponseIncludesAllRecordsThatMatched() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^the user provides the value \"([^\"]*)\" for \"([^\"]*)\" and \"([^\"]*)\" for \"([^\"]*)\"$")
    public void theUserProvidesTheValueReqValueForReqFieldAndNdbRecValueFor(String reqValue, String reqField,
                                                                            String ndbRecValue, String ndbRecField) throws Throwable {
        this.payload = new JsonObject();
        payload.addProperty(reqField, reqValue);
        payload.addProperty(ndbRecField, ndbRecValue);
    }

    @And("^the user provides the optional value \"([^\"]*)\" for \"([^\"]*)\"$")
    public void theUserProvidesTheOptionalValueOptionalValueForOptionalField(String optionalValue,
                                                                             String optionalField) throws Throwable {
        payload.addProperty(optionalField, optionalValue);
    }

    @Then("^the query response provides the most recent record version attributes data$")
    public void theQueryResponseProvidesTheMostRecentRecordVersionAttributesData() throws Throwable {
        request = given().baseUri(taxonomyTableBaseURI).header("Content-Type", "application/json").body(payload);
        response = request.post(taxonomyQueryEndpoint);
        Assert.assertEquals(response.getStatusCode(), 200);

        JsonObject result = RestHelper.getInstance().parseJsonResponse(response);

        int arrayCount = result.get("responseMessage").getAsJsonArray().size();

        Assert.assertTrue(arrayCount > 0);
    }
}
