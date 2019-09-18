package rest_api_test.api.transaction;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.PayloadMap;
import rest_api_test.api.fallout.model.ContractStatus;
import rest_api_test.api.transaction.model.TSortField;
import rest_api_test.api.transaction.model.TransactionDetails;
import rest_api_test.api.transaction.model.TransactionStatus;

import java.util.ArrayList;
import java.util.List;

public interface ITransactionInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(ITransactionInteract.class);

    String RESOURCE_TRANSACTION = "/v1.0/transactions/{}";
    String RESOURCE_RESULT = "/v1.0/transactions/results";
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    /**
     * Get the Transaction Status for a transaction id
     * maps to GET /v1.0/transactions/{transactionId}
     *
     * @param transactionId transaction id to lookup
     * @return the transaction status
     */
    default TransactionStatus transactionQueryStatus(String transactionId) {
        String r = RESOURCE_TRANSACTION.replace("{}", transactionId);
        Response response = TransactionHelper.getInstance().doBasicGet(r);
        return TransactionHelper.getInstance().getTransactionStatus(response);
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
    default TransactionDetails transactionQueryDetails(List<ContractStatus> resultStatuses, List<TSortField> sortBy, boolean sortDescend, int pageNum, int pageSize) {
        PayloadMap payload = new PayloadMap();
        payload.put("offset", 0);
        payload.put("pageNumber", pageNum);
        payload.put("pageSize", pageSize);
        payload.put("sortDirection", sortDescend ? "DESC" : "ASC");

        List<String> resultStatusArr = new ArrayList<>();

        for (ContractStatus type : resultStatuses) {
            resultStatusArr.add(type.name());
        }
        payload.put("resultStatus", resultStatusArr);

        List<String> sortFields = new ArrayList<>();
        for (TSortField sortField : sortBy) {
            sortFields.add(sortField.type);
        }

        payload.put("sortFields", sortFields);

        Response response = TransactionHelper.getInstance().doBasicPost(RESOURCE_RESULT, payload);
        return TransactionHelper.getInstance().getTransactionDetails(response);
    }
    
    /*
    UTILITY CLASS
    */
}
