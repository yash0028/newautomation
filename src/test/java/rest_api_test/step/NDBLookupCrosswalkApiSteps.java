package rest_api_test.step;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
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
import util.file.IFileReader;

import static io.restassured.RestAssured.given;

/**
 * Created by aberns on 9/10/2018.
 */
public class NDBLookupCrosswalkApiSteps implements IRestStep, IFileReader {
    private static final Logger log = LoggerFactory.getLogger(NDBLookupCrosswalkApiSteps.class);

    private static final String ENDPOINT = "http://contract-metadata-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_PRODUCT_CODES = "/productcodes";
    private static final String RESOURCE_TAXONOMY_QUERY = "/v1.0/provider_taxonomies";
    private static final String SUPPORT_PRODUCT_CODE_PAYLOAD_FILE = "/support/US1285441/identify_product_codes.json";

    private RequestSpecification request;
    private Response response;
    private JsonObject payload;

    /*
    US1259178: Taxonomy Grid table microservice
     */

    @Given("^a user needs to query the table$")
    public void aUserNeedsToQueryTheTable() throws Throwable {
        //Assume user has done this.
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
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(payload);
        response = request.post(RESOURCE_TAXONOMY_QUERY);
        Assert.assertEquals(200, response.getStatusCode());

        JsonElement result = parseJsonElementResponse(response);

        Assert.assertTrue(result.isJsonObject());

        int arrayCount = result.getAsJsonObject().get("responseMessage").getAsJsonArray().size();

        System.out.println(result);

        Assert.assertTrue(arrayCount > 0);
    }

    @Then("^the query response returns an error$")
    public void theQueryResponseReturnsAnError() throws Throwable {
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(payload);
        response = request.post(RESOURCE_TAXONOMY_QUERY);
        Assert.assertEquals(200, response.getStatusCode());

        JsonElement result = parseJsonElementResponse(response);
        Assert.assertTrue(result.isJsonObject());

        int responseCode = result.getAsJsonObject().get("responseCode").getAsInt();

        Assert.assertNotEquals(200, responseCode);

    }

    @Then("^the query response includes all records that matched$")
    public void theQueryResponseIncludesAllRecordsThatMatched() throws Throwable {
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(payload);
        response = request.post(RESOURCE_TAXONOMY_QUERY);
        Assert.assertEquals(200, response.getStatusCode());

        JsonElement result = parseJsonElementResponse(response);
        Assert.assertTrue(result.isJsonObject());

        int arrayCount = result.getAsJsonObject().get("responseMessage").getAsJsonArray().size();

        System.out.println(result);

        Assert.assertTrue(arrayCount > 1);
    }

    /*
    US1285441: Identify New Product Codes
     */


    @When("^the product codes are called from the crosswalk tables$")
    public void getProductCodes() throws Throwable {
        JsonElement jsonElement = getJsonElementFromFile(SUPPORT_PRODUCT_CODE_PAYLOAD_FILE);
        this.request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(jsonElement);
        this.response = request.post(RESOURCE_PRODUCT_CODES);

        Assert.assertEquals(200, response.getStatusCode());
    }

    @Then("^the correct product codes are returned\\.$")
    public void checkValidCodes() throws Throwable {
        JsonElement result = parseJsonElementResponse(this.response);
        Assert.assertTrue(result.isJsonObject());

        Assert.assertEquals(200, result.getAsJsonObject().get("responseCode").getAsInt());
        Assert.assertEquals("Success", result.getAsJsonObject().get("responseStatus").getAsString());
    }

    @When("^an invalid contract details are called from the crosswalk tables$")
    public void getInvalidCodes() throws  Throwable {
        JsonElement jsonElement = getJsonElementFromFile(SUPPORT_PRODUCT_CODE_PAYLOAD_FILE);
        jsonElement = jsonElement.getAsJsonObject().remove("storageNode");
        this.request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(jsonElement);
        this.response = request.post(RESOURCE_PRODUCT_CODES);

        Assert.assertEquals(200, response.getStatusCode());
    }

    @Then("^the service returns an error$")
    public void checkInvalidCodes() throws Throwable {
        JsonElement result = parseJsonElementResponse(this.response);
        Assert.assertTrue(result.isJsonObject());

        Assert.assertNotEquals(200, result.getAsJsonObject().get("responseCode").getAsInt());
        Assert.assertNotEquals("Success", result.getAsJsonObject().get("responseStatus").getAsString());
    }


}
