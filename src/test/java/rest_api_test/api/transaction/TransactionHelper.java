package rest_api_test.api.transaction;

import com.google.gson.JsonElement;
import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;
import rest_api_test.api.transaction.model.TransactionDetails;
import rest_api_test.api.transaction.model.TransactionStatus;
import rest_api_test.util.IRestStep;


class TransactionHelper extends AbstractRestApi implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(TransactionHelper.class);

    private static final String ENDPOINT_DEV = "https://transaction-status-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "https://transaction-status-clm-test.ocp-ctc-dmz-nonprod.optum.com";


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
     * @param response response object to convert to Trasnaction status
     * @return the transaction status
     */
    TransactionStatus getTransactionStatus(Response response) {
        JsonElement jsonElement = parseJsonElementResponse(response);

        TransactionStatus status = gson.fromJson(jsonElement, TransactionStatus.class);
        status.setResponse(response);
        status.getMessages().sortFirst2Last();
        return status;
    }

    /**
     * Search for a list of TransactionDetails with a list of Contract Statuses
     * maps to POST /v1.0/transactions/results
     *
     * @param resultStatuses list of statuses
     * @param sortBy         list of fields to sort by
     * @param sortDescend    sort descending order
     * @param pageNum        what page num to get
     * @param pageSize       size of pages
     * @return List of Transaction Details
     */
    TransactionDetails getTransactionDetails(Response response) {
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
        switch (env) {
            case stage:
            case test:
                return ENDPOINT_TEST;
            case dev:
            default:
                return ENDPOINT_DEV;
        }
    }
    
    /*
    UTILITY CLASS
    */
}
