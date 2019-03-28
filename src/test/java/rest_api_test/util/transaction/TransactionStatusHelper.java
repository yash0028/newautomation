package rest_api_test.util.transaction;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

import static io.restassured.RestAssured.given;

class TransactionStatusHelper implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(TransactionStatusHelper.class);
    private static final String ENDPOINT = "https://transaction-status-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_TRANSACTION = "/v1.0/transactions/"; //need to add the {trans_id} to the end
    private static TransactionStatusHelper INSTANCE = new TransactionStatusHelper();

    private final Gson gson;

    /*
    CONSTRUCTOR
    */

    private TransactionStatusHelper() {
        RestAssured.useRelaxedHTTPSValidation();
        gson = new GsonBuilder()
                .registerTypeAdapter(TransactionStatus.class, new TransactionStatus.Deserializer())
                .create();
    }
    
    /*
    STATIC METHODS
    */

    static TransactionStatusHelper getInstance() {
        return INSTANCE;
    }
    
    /*
    CLASS METHODS
    */

    TransactionStatus getTransactionStatus(String transactionId) {
        RequestSpecification request = given().baseUri(ENDPOINT).header("Content-Type", "application/json");
        Response response = request.get(RESOURCE_TRANSACTION + transactionId);
        JsonElement jsonElement = parseJsonElementResponse(response);
        TransactionStatus status = parseStatus(jsonElement);
        status.setResponse(response);
        status.getMessages().sortFirst2Last();
        return status;
    }
    
    /*
    HELPER METHODS
    */

    private TransactionStatus parseStatus(JsonElement jsonElement) {
        return gson.fromJson(jsonElement, TransactionStatus.class);
    }
    
    /*
    UTILITY CLASS
    */
}
