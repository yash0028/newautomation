package step_definitions;

import com.google.gson.JsonObject;
import cucumber.api.PendingException;
import cucumber.api.java.en.*;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;

import static io.restassured.RestAssured.given;

/**
 * Created by aberns on 8/30/2018.
 */
public class CrosswalkSteps {
    public static final String ENDPOINT = "";
    public static final String RESOURCE_PRODUCTCODES = "/productcodes";

    private RequestSpecification request;
    private Response response;

    @When("^the product codes are called from the crosswalk tables$")
    public void getProductCodes() throws Throwable {
        this.request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(getPayload());
        this.response = request.post(RESOURCE_PRODUCTCODES);
        Assert.assertEquals(200, response.getStatusCode());
    }

    @Then("^the correct product codes are returned\\.$")
    public void theCorrectProductCodesAreReturned() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    private JsonObject getPayload() {
        JsonObject jsonObject = new JsonObject();
        //TODO
        return jsonObject;
    }


}
