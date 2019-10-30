package rest_api_test.step;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.productnetwork.IProductNetworkInteract;
import rest_api_test.api.productnetwork.modal.ProductDetails;
import rest_api_test.util.IRestStep;
import util.file.IFileReader;

/**
 * Created by jwacker on 7/18/2018.
 */
public class ProductNetworkSteps implements IRestStep, IProductNetworkInteract, IFileReader {
    private static final Logger log = LoggerFactory.getLogger(ProductNetworkSteps.class);
    ProductDetails productDetails;
    private Response response;
    private JsonElement customPayload;

    @Given("an OCM without the product details field")
    public void useOCMWithoutProductGroups() {
        useDevApi();
        logRestNone();

        customPayload = getJsonElementFromFile("/support/ocm/ocm.json");
    }


    @When("I send a request for the list product details in that OCM")
    public void getProductGroups() {
        this.productDetails = getContractProductGroups(customPayload);
    }

    @Then("I receive a list of product details")
    public void reviewProductGroups() {
        assert this.productDetails.getResponse().getStatusCode() == 200;
        assert this.productDetails.size() > 0;
        this.productDetails.forEach(pg -> {
            assert pg.getContractType() != null;
            assert pg.getPlatform() != null;
            assert pg.getProductCode() != null;
            assert pg.getProductGroupCode() != null;
            assert pg.getNetworkConditions().size() > 0;
            pg.getNetworkConditions().forEach(nc -> {
                assert nc.getNetworkCondition() != null;
                assert nc.getNetworkId() != null;
            });
        });


    }

    @When("I send a request for the OCM with product details")
    public void getOCMWithProductGroups() {
        this.response = getContractProductGroupsFormatted("ocm", customPayload);
    }

    @Then("I receive an OCM with the product groups details")
    public void reviewOCMForProductGroups() {
        assert this.response.statusCode() == 200;
        JsonElement result = parseJsonElementResponse(this.response);
        assert result.isJsonObject();
        assert result.getAsJsonObject().has("productDetails");
        assert result.getAsJsonObject().get("productDetails").isJsonArray();
        JsonArray array = result.getAsJsonObject().get("productDetails").getAsJsonArray();
        assert array.size() > 0;
        Gson gson = new Gson();
        this.productDetails = gson.fromJson(array, ProductDetails.class);
        this.productDetails.forEach(pg -> {
            assert pg.getContractType() != null;
            assert pg.getPlatform() != null;
            assert pg.getProductCode() != null;
            assert pg.getProductGroupCode() != null;
            assert pg.getNetworkConditions().size() > 0;
            pg.getNetworkConditions().forEach(nc -> {
                assert nc.getNetworkCondition() != null;
                assert nc.getNetworkId() != null;
            });
        });
    }
}
