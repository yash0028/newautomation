package rest_api_test.step;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

import java.util.Map;

import static io.restassured.RestAssured.given;
/**
 * Created by dtimaul on 12/20/18.
 */
public class ContractConfigApiSteps implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(ActivitiApiSteps.class);

    private static final String ENDPOINT = "http://contract-config-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_PROVIDER_STATUS = "/v1.0/contract-config/products/providerstatus";

    private RequestSpecification request;
    private Response response;
    private JsonObject requestBody = new JsonObject();
    private Map<String, String> payload;

    //US1483467 Implement contract config api providerproductstatus

    @Given("^a valid contract installation transaction has been received from Exari$")
    public void aValidContractInstallationTransactionHasBeenReceivedFromExari() throws Throwable {
        // call has been made.
    }

    @When("^the contract configuration api is invoked with the following data$")
    public void sendRequestToContractConfigurationApi(DataTable dataTable) throws Throwable {
        payload = dataTable.asMap(String.class, String.class);
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(payload);
        response = request.post(RESOURCE_PROVIDER_STATUS);
    }

    @Then("^the contract configuration api includes provider product status data$")
    public void verifyResponseFromContractConfigurationApi() throws Throwable {
        Assert.assertEquals(200, response.getStatusCode());

        JsonElement result = parseJsonElementResponse(response);
        Assert.assertTrue(result.isJsonObject());

        String productStatus = result.getAsJsonObject().getAsJsonArray("content")
                .get(0).getAsJsonObject().get("status").getAsString();

        Assert.assertEquals("The expected provider status was not returned",
                "INSTALLED", productStatus);
    }
}
