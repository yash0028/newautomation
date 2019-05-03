package rest_api_test.step;

import com.google.gson.JsonElement;
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
import rest_api_test.api.eventgateway.IEventGatewayInteract;

import java.util.Map;

import static io.restassured.RestAssured.given;
/**
 * Created by dtimaul on 12/20/18.
 */
public class ContractConfigApiSteps implements IRestStep, IEventGatewayInteract {
    private static final Logger log = LoggerFactory.getLogger(ContractConfigApiSteps.class);

    private static final String ENDPOINT = "http://contract-config-service-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_PROVIDER_STATUS = "/v1.0/contract-config/products/provider-status";

    private RequestSpecification request;
    private Response response;
    private Map<String, String> payload;

    //US1483467 Implement contract config api providerproductstatus

    @Given("^a valid contract installation transaction has been received from Exari$")
    public void aValidContractInstallationTransactionHasBeenReceivedFromExari() throws Throwable {
        // Post a contract-installed event to event-gateway for the contract that will be used in below steps
        useTestApi();
        eventGatewayPostContractInstalledEvent("67937858");
        Thread.sleep(5000);
    }

    @When("^the contract configuration api is invoked with the following data$")
    public void sendRequestToContractConfigurationApi(DataTable dataTable) throws Throwable {
        payload = dataTable.asMap(String.class, String.class);
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(payload);
        response = request.post(RESOURCE_PROVIDER_STATUS);

        log.info("Response from contract-config-service: {}", response.asString());
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
