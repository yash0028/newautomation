package step_definitions;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import utils.FileHelper;
import utils.RestHelper;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static io.restassured.RestAssured.given;

/**
 * Created by dtimaul on 9/11/18.
 */
public class ContractMetadataApiSteps {
    //TODO Will be renamed to contract-metadata-api
    private final static String ENDPOINT = "http://localhost:8080";
    private final static String RESOURCE_PRODUCTCODE = "/v1.0/xwalk/product/code/list";
    private final static String CSV_FILE = "/support/ContractDescriptionIDMap.csv";
    private RequestSpecification request;
    private JsonObject requestBody = new JsonObject();
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

        // Use product description id to get product description from contractDescriptionIDMap.csv
        productDescriptions.add(getProductDescription(productDesID));
    }

    @And("^using product descriptions from the corresponding \"([^\"]*)\" and \"([^\"]*)\"$")
    public void setMultipleProductDescriptions(String productDesID1, String productDesID2) throws Throwable {
        productDescriptions = new ArrayList<>();
        productDescriptions.add(getProductDescription(productDesID1));
        productDescriptions.add(getProductDescription(productDesID2));

        System.out.println("Array list for multiple product descriptions:\n" + productDescriptions);
    }

    // Make REST call to get product code list
    @When("^exchanging information about the products included or excluded from an Exari contract$")
    public void getProductCodeIdentifier() throws Throwable {
        JsonArray productDescriptionArr = new JsonArray();

        if (productDescriptions != null) {

            for (String productDescription : productDescriptions) {
                productDescriptionArr.add(productDescription);
            }
        }

        //Request body: {"productDesc": [“desc1”, “desc2”]}
        requestBody.add("productDesc", productDescriptionArr);

        //Create request with request body
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody);
    }

    //verify product Code list Was returned For a single ProductDescription
    @Then("^the crosswalk provides the product code identifier of \"([^\"]*)\"$")
    public void verifySingleProductCodeList(String expectedProductCodes) throws Throwable {
        // Make post request and store response
        response = request.post(RESOURCE_PRODUCTCODE);
        ArrayList<String> expectedProductCodeArr = new ArrayList<>(Arrays.asList(expectedProductCodes.split(" ")));

        JsonElement result = RestHelper.getInstance().parseJsonElementResponse(response);

        // Check that the result is a valid json array and returns list of product codes
        // Check if response is a json array with one object that contains key value pair of productCodeList
        // and an array.
        JsonArray resultProductCodeArr = checkAndParseProductCodeResult(result, 1, 0);

        // check that the expected product code list is equal to the result/actual one.
        testProductCodeList(expectedProductCodeArr, resultProductCodeArr);
    }

    //verify multiple product Code lists Was returned For multiple ProductDescriptions
    @Then("^the crosswalk provides the product code identifiers of \"([^\"]*)\" and \"([^\"]*)\"$")
    public void verifyMultipleProductCodeList(String expectedProductCodes1, String expectedProductCodes2) throws Throwable {
        // Make post request and store response
        response = request.post(RESOURCE_PRODUCTCODE);

        ArrayList<String> expectedProductCodeArr1 = new ArrayList<>(Arrays.asList(expectedProductCodes1.split(" ")));
        ArrayList<String> expectedProductCodeArr2 = new ArrayList<>(Arrays.asList(expectedProductCodes2.split(" ")));

        JsonElement result = RestHelper.getInstance().parseJsonElementResponse(response);

        // Check that the result is a valid json array and returns list of product codes
        // Check if response is a json array with two objects. Each object contains key value pairs of productCodeList
        // and an array.
        JsonArray resultProductCodeArr1 = checkAndParseProductCodeResult(result, 2, 0);
        JsonArray resultProductCodeArr2 = checkAndParseProductCodeResult(result, 2, 1);

        testProductCodeList(expectedProductCodeArr1, resultProductCodeArr1);
        testProductCodeList(expectedProductCodeArr2, resultProductCodeArr2);
    }

    // Verify single product description does not exist
    @Given("^a product description that does not exist$")
    public void aProductDescriptionThatDoesNotExist() throws Throwable {
        // Assume product description does not exist
    }

    // Verify multiple product description does not exist
    @Given("^multiple product descriptions that do not exist$")
    public void multipleProductDescriptionsThatDoNotExist() throws Throwable {
        // Assume product descriptions do not exist
    }

    @Then("^the crosswalk provides an empty list$")
    public void theCrosswalkProvidesAnEmptyList() throws Throwable {
        response = request.post(RESOURCE_PRODUCTCODE);
        JsonElement result = RestHelper.getInstance().parseJsonElementResponse(response);

        Assert.assertEquals(0,result.getAsJsonArray().size());
    }

    // Verify one valid and one invalid product description
    @Given("^a product description from the corresponding \"([^\"]*)\" and an invalid product description$")
    public void aProductDescriptionFromTheCorrespondingAndAnInvalidProductDescription(String productDesID1) throws Throwable {
        productDescriptions = new ArrayList<>();

        // Use product description id to get product description from contractDescriptionIDMap.csv
        productDescriptions.add(getProductDescription(productDesID1));
    }

    @Then("^the crosswalk only provides the product code identifier of \"([^\"]*)\" for the valid product description$")
    public void theCrosswalkOnlyProvidesTheProductCodeIdentifierOfForTheValidProductDescription(String expectedProductCodes) throws Throwable {
        // Make post request and store response
        response = request.post(RESOURCE_PRODUCTCODE);

        ArrayList<String> expectedProductCodeArr = new ArrayList<>(Arrays.asList(expectedProductCodes.split(" ")));

        JsonElement result = RestHelper.getInstance().parseJsonElementResponse(response);

        // Check that the result is a valid json array and returns list of product codes
        JsonArray resultProductCodeArr = checkAndParseProductCodeResult(result, 1,0);

        testProductCodeList(expectedProductCodeArr, resultProductCodeArr);
    }

    /**
     * Check that the expect product code list is equal to the actual product code list.
     *
     * @param expected An array list with the expected product codes
     * @param result A json array with the actual product codes
     */
    private void testProductCodeList(ArrayList<String> expected, JsonArray result) throws Throwable {

        // check that each value of result product code array is present in the expected product code array
        for (JsonElement pCode : result.getAsJsonArray()) {
            Assert.assertTrue(expected.contains(pCode.getAsString()));
        }

        // Check to make sure both arrays are the same size
        Assert.assertEquals(expected.size(), result.getAsJsonArray().size());
    }


    /**
     * Check that the result is a valid json array.
     * @param result the json element that we want to check
     * @param expectedSize verifies that the json array has the expected number of elements
     * @param indexToRetrieve the index in the json array that we want to retrieve
     * @return returns a list of product codes
     * @throws Throwable
     */
    private JsonArray checkAndParseProductCodeResult(JsonElement result, int expectedSize, int indexToRetrieve) throws Throwable {
        Assert.assertTrue(result.isJsonArray());

        // check for correct size
        Assert.assertEquals(expectedSize, result.getAsJsonArray().size());

        // get index of result array
        JsonElement resultIndex = result.getAsJsonArray().get(indexToRetrieve);
        Assert.assertTrue(resultIndex.isJsonObject());

        // check if productCodeList element exists
        Assert.assertTrue(resultIndex.getAsJsonObject().has("productCodeList"));

        // get value of product code list which is an array
        JsonElement resultProductCodeArr = resultIndex.getAsJsonObject().get("productCodeList");
        Assert.assertTrue(resultProductCodeArr.isJsonArray());

        return resultProductCodeArr.getAsJsonArray();
    }

    /**
     * Takes in a product description id, then searches in the csv file for the product description that corresponds to
     * that id.
     *
     * @param id product description id
     * @return product description
     */
    private String getProductDescription(String id) {
        List<String> lines = FileHelper.getInstance().getFileLines(CSV_FILE);

        for (String line : lines) {
            String[] currentLine = line.split("\\|");

            if (currentLine[0].trim().equals(id)) {
                return currentLine[1].trim();
            }
        }
        return "";
    }

}
