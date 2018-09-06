package step_definitions;

import com.google.gson.JsonObject;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import utils.RestHelper;

import static io.restassured.RestAssured.given;

/**
 * Created by aberns on 8/31/2018.
 */
public class NDBMasterSteps {

    private static final String ENDPOINT = "";
    private static final String RESOURCE = "";

    private RequestSpecification request;
    private Response response;
    private JsonObject payload;

    public void createUnetPayload() {
        payload = new JsonObject();
        payload.addProperty("marketNumber", "12471");
        payload.addProperty("groupTableNumber", "");
        payload.addProperty("feeSchedule", "1315");
        payload.addProperty("productCode", "C0,C1");
        payload.addProperty("contractType", "");
        payload.addProperty("ipa", "");
        payload.addProperty("paymentMethod", "");
        payload.addProperty("div", "");
        payload.addProperty("panel", "");
        payload.addProperty("cosmosContractNumber", "");
    }

    public void createCosmosPayload() {
        payload = new JsonObject();
        payload.addProperty("marketNumber", "");
        payload.addProperty("groupTableNumber", "");
        payload.addProperty("feeSchedule", "");
        payload.addProperty("productCode", "");
        payload.addProperty("contractType", "");
        payload.addProperty("ipa", "");
        payload.addProperty("paymentMethod", "");
        payload.addProperty("div", "PNX");
        payload.addProperty("panel", "8");
        payload.addProperty("cosmosContractNumber", "9");
    }

    public void createComboPayload() {
        payload = new JsonObject();
        payload.addProperty("marketNumber", "9451");
        payload.addProperty("groupTableNumber", "");
        payload.addProperty("feeSchedule", "99384");
        payload.addProperty("productCode", "C0,C1,C2");
        payload.addProperty("contractType", "");
        payload.addProperty("ipa", "");
        payload.addProperty("paymentMethod", "");
        payload.addProperty("div", "RAM");
        payload.addProperty("panel", "5");
        payload.addProperty("cosmosContractNumber", "1");
    }

    public void createMissingPayload() {
        payload = new JsonObject();
        payload.addProperty("marketNumber", "12471");
        payload.addProperty("groupTableNumber", "");
        payload.addProperty("feeSchedule", "");
        payload.addProperty("productCode", "");
        payload.addProperty("contractType", "");
        payload.addProperty("ipa", "");
        payload.addProperty("paymentMethod", "");
        payload.addProperty("div", "");
        payload.addProperty("panel", "");
        payload.addProperty("cosmosContractNumber", "");
    }

    public void createNoDataPayload() {
        payload = new JsonObject();
        payload.addProperty("marketNumber", "12471");
        payload.addProperty("groupTableNumber", "");
        payload.addProperty("feeSchedule", "1315");
        payload.addProperty("productCode", "C");
        payload.addProperty("contractType", "");
        payload.addProperty("ipa", "");
        payload.addProperty("paymentMethod", "");
        payload.addProperty("div", "");
        payload.addProperty("panel", "");
        payload.addProperty("cosmosContractNumber", "");
    }

    public void sendPayload() {
        request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(payload);
        response = request.post(RESOURCE);
        Assert.assertEquals(200, response.getStatusCode());
    }

    public void checkUnetResponse() {
        JsonObject result = RestHelper.getInstance().parseJsonResponse(response);
        
    }

    public void checkCosmosResponse() {
        JsonObject result = RestHelper.getInstance().parseJsonResponse(response);

    }

    public void checkComboResponse() {
        JsonObject result = RestHelper.getInstance().parseJsonResponse(response);

    }

    public void checkMissingResponse() {
        JsonObject result = RestHelper.getInstance().parseJsonResponse(response);

    }

    public void checkNoDataResponse() {
        JsonObject result = RestHelper.getInstance().parseJsonResponse(response);

    }


}
