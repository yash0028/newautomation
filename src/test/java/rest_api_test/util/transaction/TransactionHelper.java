package rest_api_test.util.transaction;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.AbstractRestApi;
import rest_api_test.util.IRestStep;
import rest_api_test.util.datastructure.gson.transaction.TransactionStatus;
import rest_api_test.util.datastructure.list.TransactionDetails;
import rest_api_test.util.datastructure.type.ContractStatus;
import rest_api_test.util.datastructure.type.TSortField;

import java.util.List;

import static io.restassured.RestAssured.given;

class TransactionHelper extends AbstractRestApi implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(TransactionHelper.class);

    private static final String ENDPOINT_DEV = "https://transaction-status-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "https://transaction-status-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_TRANSACTION = "/v1.0/transactions/"; //need to add the {trans_id} to the end
    private static final String RESOURCE_RESULT = "/v1.0/transactions/results";

    private static TransactionHelper INSTANCE = new TransactionHelper();

    /*
    CONSTRUCTOR
    */

    private TransactionHelper() {
        super();
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

    /**
     * Get the Transaction Status for a transaction id
     * maps to GET /v1.0/transactions/{transactionId}
     *
     * @param transactionId transaction id to lookup
     * @return the transaction status
     */
    TransactionStatus getTransactionStatus(String transactionId) {
        RequestSpecification request = given().baseUri(getEndpoint())
                .header("Content-Type", "application/json");
        Response response = request.get(RESOURCE_TRANSACTION + transactionId);
        JsonElement jsonElement = parseJsonElementResponse(response);

        TransactionStatus status = gson.fromJson(jsonElement, TransactionStatus.class);
        status.setResponse(response);
        status.getMessages().sortFirst2Last();
        return status;
    }

    /**
     * Search for a list of TransactionDetails with a list of Contract Statuses
     *
     * @param resultStatuses list of statuses
     * @param sortBy         list of fields to sort by
     * @param sortDescend    sort descending order
     * @param pageNum        what page num to get
     * @param pageSize       size of pages
     * @return List of Transaction Details
     */
    TransactionDetails getTransactionDetails(List<ContractStatus> resultStatuses, List<TSortField> sortBy, boolean sortDescend, int pageNum, int pageSize) {
        JsonObject payload = new JsonObject();
        payload.addProperty("offset", 0);
        payload.addProperty("pageNumber", pageNum);
        payload.addProperty("pageSize", pageSize);
        payload.addProperty("sortDirection", sortDescend ? "DESC" : "ASC");

        JsonArray resultStatusArr = new JsonArray();
        for (ContractStatus type : resultStatuses) {
            resultStatusArr.add(type.name());
        }
        payload.add("resultStatus", resultStatusArr);

        JsonArray sortFields = new JsonArray();
        for (TSortField sortField : sortBy) {
            sortFields.add(sortField.type);
        }

        payload.add("sortFields", sortFields);

        RequestSpecification request = given().baseUri(getEndpoint())
                .header("Content-Type", "application/json")
                .body(payload);
        Response response = request.post(RESOURCE_RESULT);
        JsonElement jsonElement = parseJsonElementResponse(response);

        TransactionDetails details = gson.fromJson(jsonElement, TransactionDetails.class);
        details.setResponse(response);

        return details;
    }
    
    /*
    HELPER METHODS
    */

    @Override
    protected String getEndpoint() {
        return this.useDev ? ENDPOINT_DEV : ENDPOINT_TEST;
    }
    
    /*
    UTILITY CLASS
    */
}
