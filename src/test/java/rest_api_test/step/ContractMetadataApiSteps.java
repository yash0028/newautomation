package rest_api_test.step;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import io.restassured.response.Response;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.PayloadMap;
import rest_api_test.api.contractmetadata.IContractMetadataInteract;
import rest_api_test.util.IRestStep;
import util.file.IFileReader;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dtimaul on 9/11/18.
 */
public class ContractMetadataApiSteps implements IRestStep, IFileReader, IContractMetadataInteract {
    private final static Logger log = LoggerFactory.getLogger(ContractMetadataApiSteps.class);

    private Response response;
    private List<String> productDescriptions;
    private PayloadMap<?> payload;

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
        // NO OP
    }

    //verify product Code list Was returned For a single ProductDescription
    @Then("^the crosswalk provides the product code identifier of \"([^\"]*)\"$")
    public void verifySingleProductCodeList(String expectedProductCodes) throws Throwable {
        response = productGroupCodeLookupWithProductDescription(productDescriptions);
        Assert.assertEquals(200, response.getStatusCode());

        JsonArray result = parseJsonElementResponse(response).getAsJsonObject().get("content").getAsJsonArray();
        Assert.assertTrue(result.isJsonArray());

        // Check that the result is a valid json object and returns list of product codes
        assertResultContainsProductCode(result, expectedProductCodes);
    }

    //verify multiple product Code lists Was returned For multiple ProductDescriptions
    @Then("^the crosswalk provides the product code identifiers of \"([^\"]*)\" and \"([^\"]*)\"$")
    public void verifyMultipleProductCodeList(String expectedProductCodes1, String expectedProductCodes2) throws Throwable {
        response = productGroupCodeLookupWithProductDescription(productDescriptions);
        Assert.assertEquals(200, response.getStatusCode());

        JsonArray result = parseJsonElementResponse(response).getAsJsonObject().get("content").getAsJsonArray();
        Assert.assertTrue(result.isJsonArray());

        assertResultContainsProductCode(result, expectedProductCodes1);
        assertResultContainsProductCode(result, expectedProductCodes2);
    }

    // Verify single product description does not exist
    @Given("^a product description that does not exist$")
    public void aProductDescriptionThatDoesNotExist() throws Throwable {
        productDescriptions = new ArrayList<>();
        productDescriptions.add("this is not a valid product description");
    }

    // Verify multiple product description does not exist
    @Given("^multiple product descriptions that do not exist$")
    public void multipleProductDescriptionsThatDoNotExist() throws Throwable {
        productDescriptions = new ArrayList<>();
        productDescriptions.add("this is not a invalid product description");
        productDescriptions.add("this is another a invalid product description");
    }

    @Then("^the crosswalk provides an empty list$")
    public void theCrosswalkProvidesAnEmptyList() throws Throwable {
        response = productGroupCodeLookupWithProductDescription(productDescriptions);

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
        response = productGroupCodeLookupWithProductDescription(productDescriptions);
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
        //NO OP
    }

    @When("sending a request to validate the product group {string}")
    public void sendingARequestToValidateTheProductGroup(String productGroup) throws Throwable {
        setSingleProductDescription(productGroup);
    }

    @Then("we receive a response back with details of that product")
    public void weReceiveAResponseBackWithDetailsOfThatProduct() throws Throwable {
        response = productGroupCodeLookupWithProductDescription(productDescriptions);

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
    private String checkAndParseProductCodeResult(JsonElement result, int index) {
        // get index of result array
        JsonElement resultIndex = result.getAsJsonArray().get(index);

        // check if productCodeList element exists
        Assert.assertTrue(resultIndex.getAsJsonObject().has("productCodeList"));

        // get the values of the product codes
        JsonElement resultProductCode = resultIndex.getAsJsonObject().get("productCodeList");

        return resultProductCode.getAsString();
    }

    /**
     * Check that the expected product code is contained in one of the
     * result array's objects.
     *
     * @param result the json array that we want to check
     * @param expectedProductCode the product code we're checking for
     * @return returns true if the expectedProductCode is contained in the result array, false if not.
     */
    private boolean assertResultContainsProductCode(JsonArray result, String expectedProductCode) {

        for(JsonElement elm: result) {
            String actualProductCode = elm.getAsJsonObject().get("productCodeList").getAsString();
            assert actualProductCode.contains(expectedProductCode);
        }

        return true;
    }

    // US1852455 - Exclude inactive Contract Product Description table records in API response (Optum)

    @Given("Exari provides valid Contract Product Descriptions:")
    public void exariProvidesValidContractProductDescriptions(DataTable dt) {
        productDescriptions = dt.asList();
    }

    @When("sending a request to validate the product groups")
    public void sendingARequestToValidateTheProductGroups() {
        response = productGroupCodeLookupWithProductDescription(productDescriptions);
    }

    @Then("only matched records with a {string} of {string} are returned")
    public void onlyMatchedRecordsWithAOfAreReturned(String property, String expectedValue) {
        JsonElement result = parseJsonElementResponse(response);
        JsonArray resultArray = result.getAsJsonObject().get("content").getAsJsonArray();

        for(JsonElement elm: resultArray) {
            Assert.assertTrue("Array element is not a JSON Object", elm.isJsonObject());

            String actualValue = elm.getAsJsonObject().get(property).getAsString();
            String product = elm.getAsJsonObject().get("productCodeDescription").getAsString();

            log.info("Product: {} ----- Expected: {}, Actual: {}", product, expectedValue, actualValue);

            Assert.assertEquals("product description status was not 'A' for product: " + product, expectedValue, actualValue);
        }
    }

    // US1806699 - CMD Determine PCP Indicator for each Provider on Roster Based on Market
    @Given("a request to the PCP Indicator Lookup endpoint:")
    public void aRequestToThePCPIndicatorLookupEndpoint(DataTable requestDT) {
        payload = new PayloadMap<>(requestDT.asMap(String.class, String.class));
    }

    @When("sending the request to the PCP Indicator Lookup endpoint")
    public void sendingTheRequestToThePCPIndicatorLookupEndpoint() {
        // NO OP
    }

    @Then("we get a responseErrorMessage stating {string}")
    public void weGetAResponseErrorMessageStating(String responseMessage) {
        this.response = pcpLookup(payload);
        JsonElement responseJson = parseJsonElementResponse(response);
        Assert.assertEquals(responseMessage, responseJson.getAsJsonObject().get("responseMessage").getAsString());
    }

    @Then("we get a response indicating that the provider is {string}")
    public void weGetAResponseIndicatingThatTheProviderIs(String pcpIndicatorCMD) {
        this.response = pcpLookup(payload);
        JsonElement responseJson = parseJsonElementResponse(response);
        Assert.assertEquals(pcpIndicatorCMD, responseJson.getAsJsonObject().get("providerNetworkRole").getAsString());
    }
}
