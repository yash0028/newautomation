package rest_api_test.step;

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
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

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

    //US1483467 Implement contract config api providerproductstatus

    @Given("^a valid contract installation transaction has been received from Exari$")
    public void aValidContractInstallationTransactionHasBeenReceivedFromExari() throws Throwable {
        // call has been made.
    }


    @When("^the contract configuration api is envoked$")
    public void sendRequestToContractConfigurationApi() throws Throwable {
        requestBody.addProperty("contractID", "96026180");
        requestBody.addProperty("mPin", "002856515");
        requestBody.addProperty("tin", "261307881");
        requestBody.addProperty("npi", "1023292885");
        requestBody.addProperty("productGroup", "MEDADV");
        // Note: Automate this by setting up a datatable in Rally, then pass in as a parameter
        // to this method, then store in a hashmap. then can make multiple requests and do multiple test
        // at a time.

    }

    @Then("^the contract configuration api includes provider product status data$")
    public void verifyResponseFromContractConfigurationApi() throws Throwable {
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(requestBody);

        response = request.post(RESOURCE_PROVIDER_STATUS);

        System.out.println(response.getStatusCode());

        JsonElement result = parseJsonElementResponse(response);
        Assert.assertTrue(result.isJsonObject());


//        System.out.println(result.getAsJsonObject().get("loadResult").getAsString());


        //Note: pass in a parameter called expectedResult with the expected response. E.g. expected loadStatus.
//        Assert.assertEquals("The expected provider status was not returned",
//                expectedResult, result.getAsJsonObject().get("loadResult").getAsString());
    }
}
