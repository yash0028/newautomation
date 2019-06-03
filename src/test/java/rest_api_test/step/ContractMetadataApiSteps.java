package rest_api_test.step;

import com.google.gson.JsonArray;
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

import java.util.ArrayList;

import static io.restassured.RestAssured.given;

/**
 * Created by dtimaul on 9/11/18.
 */
public class ContractMetadataApiSteps implements IRestStep, IFileReader {
    private final static Logger log = LoggerFactory.getLogger(ContractMetadataApiSteps.class);

    private final static String ENDPOINT = "https://contract-metadata-api-clm-test-ui.ocp-ctc-dmz-nonprod.optum.com";
    private final static String RESOURCE_PRODUCT_CODE = "/v1.0/product_group_codes";
    private RequestSpecification request;
    private Response response;
    private ArrayList<String> productDescriptions;

    //US1185585 Contract Product Description Crosswalk
    @Given("^a product description to product code crosswalk exists$")
    public void aProductDescriptionToProductCodeCrosswalkExists() throws Throwable {
        // Assume description to product code crosswalk exists
    }

    @And("^using product description from the corresponding \"([^\"]*)\"$")
    public void setSingleProductDescription(String productDesID) throws Throwable {
        productDescriptions = new ArrayList<>();
        productDescriptions.add(productDesID);
    }

    @And("^using product descriptions from the corresponding \"([^\"]*)\" and \"([^\"]*)\"$")
    public void setMultipleProductDescriptions(String productDesID1, String productDesID2) throws Throwable {
        productDescriptions = new ArrayList<>();
        productDescriptions.add(productDesID1);
        productDescriptions.add(productDesID2);
    }

    // Make REST call to get product code list
    @When("^exchanging information about the products included or excluded from an Exari contract$")
    public void getProductCodeIdentifier() throws Throwable {
        this.request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").relaxedHTTPSValidation();
    }

    //verify product Code list Was returned For a single ProductDescription
    @Then("^the crosswalk provides the product code identifier of \"([^\"]*)\"$")
    public void verifySingleProductCodeList(String expectedProductCodes) throws Throwable {
        // Make GET request and store response
        response = request.param("productDescriptions", productDescriptions).get(RESOURCE_PRODUCT_CODE);
        Assert.assertEquals(200, response.getStatusCode());

        JsonArray result = parseJsonElementResponse(response).getAsJsonObject().get("content").getAsJsonArray();
        Assert.assertTrue(result.isJsonArray());

        // Check that the result is a valid json object and returns list of product codes
        String actualProductCodes = checkAndParseProductCodeResult(result, 0);
        log.info("Actual product codes for single product description: {}", actualProductCodes);

        // check that the expected product code list is equal to the result/actual one.
        Assert.assertEquals(expectedProductCodes, actualProductCodes);
    }

    //verify multiple product Code lists Was returned For multiple ProductDescriptions
    @Then("^the crosswalk provides the product code identifiers of \"([^\"]*)\" and \"([^\"]*)\"$")
    public void verifyMultipleProductCodeList(String expectedProductCodes1, String expectedProductCodes2) throws Throwable {
        // Make GET request and store response
        response = request.param("productDescriptions", productDescriptions).get(RESOURCE_PRODUCT_CODE);
        Assert.assertEquals(200, response.getStatusCode());

        JsonArray result = parseJsonElementResponse(response).getAsJsonObject().get("content").getAsJsonArray();
        Assert.assertTrue(result.isJsonArray());

        // Check that the result is a valid json object and returns list of product codes
        String actualProductCodes1 = checkAndParseProductCodeResult(result, 0);
        log.info("Actual product codes for multiple product description: {}", actualProductCodes1);

        String actualProductCodes2 = checkAndParseProductCodeResult(result, 1);
        log.info("Actual product codes for multiple product description: {}", actualProductCodes2);

        // check that the expected product code list is equal to the result/actual one.
        Assert.assertEquals(expectedProductCodes1, actualProductCodes1);
        Assert.assertEquals(expectedProductCodes2, actualProductCodes2);
    }

    // Verify single product description does not exist
    @Given("^a product description that does not exist$")
    public void aProductDescriptionThatDoesNotExist() throws Throwable {
        productDescriptions = new ArrayList<>();

        String invalidProductDescription = "this is not a valid product description";
        productDescriptions.add(invalidProductDescription);
    }

    // Verify multiple product description does not exist
    @Given("^multiple product descriptions that do not exist$")
    public void multipleProductDescriptionsThatDoNotExist() throws Throwable {
        productDescriptions = new ArrayList<>();

        String invalidProductDescription1 = "this is not a invalid product description";
        String invalidProductDescription2 = "this is another a invalid product description";
        productDescriptions.add(invalidProductDescription1);
        productDescriptions.add(invalidProductDescription2);
    }


    @Then("^the crosswalk provides an empty list$")
    public void theCrosswalkProvidesAnEmptyList() throws Throwable {
        // Make GET request and store response
        response = request.param("productDescriptions", productDescriptions).get(RESOURCE_PRODUCT_CODE);
        Assert.assertEquals(200, response.getStatusCode());

        JsonElement result = parseJsonElementResponse(response).getAsJsonObject().get("totalElements");
        Assert.assertEquals(0, result.getAsInt());
        log.info("total elements when no product codes exists: {}", result.getAsInt());
    }

    // Verify one valid and one invalid product description
    @Given("^a product description from the corresponding \"([^\"]*)\" and an invalid product description$")
    public void aProductDescriptionFromTheCorrespondingAndAnInvalidProductDescription(String productDesID1) throws Throwable {
        productDescriptions = new ArrayList<>();
        productDescriptions.add(productDesID1);
    }

    @Then("^the crosswalk only provides the product code identifier of \"([^\"]*)\" for the valid product description$")
    public void theCrosswalkOnlyProvidesTheProductCodeIdentifierOfForTheValidProductDescription(String expectedProductCodes) throws Throwable {
        // Make GET request and store response
        response = request.param("productDescriptions", productDescriptions).get(RESOURCE_PRODUCT_CODE);
        Assert.assertEquals(200, response.getStatusCode());

        JsonArray result = parseJsonElementResponse(response).getAsJsonObject().get("content").getAsJsonArray();
        Assert.assertTrue(result.isJsonArray());

        JsonElement numProdDesc = parseJsonElementResponse(response).getAsJsonObject().get("totalElements");
        Assert.assertEquals(1, numProdDesc.getAsInt());

        // Check that the result is a valid json object and returns list of product codes
        String actualProductCodes = checkAndParseProductCodeResult(result, 0);
        log.info("Product codes for one valid and one invalid product description: {}", actualProductCodes);

        // check that the expected product code list is equal to the result/actual one.
        Assert.assertEquals(expectedProductCodes, actualProductCodes);
    }

    // US1820475 - [Continued] Market Product integration EDQ work (Exari) (QE) - Update CMD Tables
    @Given("a need get product-group information for pilot products")
    public void aNeedGetProductGroupInformationForPilotProducts() {
        // noop
    }

    @When("sending a request to validate the product group {string}")
    public void sendingARequestToValidateTheProductGroup(String productGroup) throws Throwable {
        setSingleProductDescription(productGroup);

        this.request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").relaxedHTTPSValidation();
    }

    @Then("we receive a response back with details of that product")
    public void weReceiveAResponseBackWithDetailsOfThatProduct() throws Throwable {
        response = request.param("productDescriptions", productDescriptions).get(RESOURCE_PRODUCT_CODE);

        Assert.assertEquals("Service did not return 200 response", 200, response.getStatusCode());

        log.info("Response: {}", response.asString());

        JsonArray contentArray = parseJsonElementResponse(response).getAsJsonObject()
                .get("content").getAsJsonArray();

        for(JsonElement elm: contentArray) {
            Assert.assertTrue("Element in the response was not a JsonObject", elm.isJsonObject());

            Assert.assertTrue("Element in the response did not contain the id field", elm.getAsJsonObject().has("id"));
        }
    }

    /**
     * Check that the result is a valid json array.
     *
     * @param result the json element that we want to check
     * @return returns a list of product codes
     */
    private String checkAndParseProductCodeResult(JsonElement result, int index) throws Throwable {
        // get index of result array
        JsonElement resultIndex = result.getAsJsonArray().get(index);

        // check if productCodeList element exists
        Assert.assertTrue(resultIndex.getAsJsonObject().has("productCodeList"));

        // get the values of the product codes
        JsonElement resultProductCode = resultIndex.getAsJsonObject().get("productCodeList");

        return resultProductCode.getAsString();
    }


}
