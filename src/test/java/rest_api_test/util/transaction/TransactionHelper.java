package rest_api_test.util.transaction;

import com.google.gson.*;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

import java.util.List;

import static io.restassured.RestAssured.given;

class TransactionHelper implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(TransactionHelper.class);
    private static final String ENDPOINT = "https://transaction-status-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_TRANSACTION = "/v1.0/transactions/"; //need to add the {trans_id} to the end
    private static final String RESOURCE_RESULT = "/v1.0/transactions/results";
    private static TransactionHelper INSTANCE = new TransactionHelper();

    private final Gson gson;

    /*
    CONSTRUCTOR
    */

    private TransactionHelper() {
        RestAssured.useRelaxedHTTPSValidation();
        gson = new GsonBuilder()
                .registerTypeAdapter(TransactionStatus.class, new TransactionStatus.Deserializer())
                .registerTypeAdapter(TransactionDetails.class, new TransactionDetails.Deserializer())
                .create();
    }
    
    /*
    STATIC METHODS
    */

    static TransactionHelper getInstance() {
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

    TransactionDetails getTransactionDetails(List<TDetailType> resultStatuses, List<TSortField> sortBy, boolean sortDescend, int pageNum, int pageSize) {
        JsonObject payload = new JsonObject();
        payload.addProperty("offset", 0);
        payload.addProperty("pageNumber", pageNum);
        payload.addProperty("pageSize", pageSize);
        payload.addProperty("sortDirection", sortDescend ? "DESC" : "ASC");

        JsonArray resultStatusArr = new JsonArray();
        for (TDetailType type : resultStatuses) {
            resultStatusArr.add(type.name());
        }
        payload.add("resultStatus", resultStatusArr);

        JsonArray sortFields = new JsonArray();
        for (TSortField sortField : sortBy) {
            sortFields.add(sortField.type);
        }

        payload.add("sortFields", sortFields);

        RequestSpecification request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(payload);
        Response response = request.post(RESOURCE_RESULT);
        JsonElement jsonElement = parseJsonElementResponse(response);

        TransactionDetails details = parseDetails(jsonElement);
        details.setResponse(response);

        return details;
    }
    
    /*
    HELPER METHODS
    */

    private TransactionStatus parseStatus(JsonElement jsonElement) {
        return gson.fromJson(jsonElement, TransactionStatus.class);
    }

    private TransactionDetails parseDetails(JsonElement jsonElement) {
        return gson.fromJson(jsonElement, TransactionDetails.class);
    }
    
    /*
    UTILITY CLASS
    */
}
