package rest_api_test.api.transaction;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.datastructure.gson.transaction.TransactionStatus;
import rest_api_test.api.datastructure.list.TransactionDetails;
import rest_api_test.api.datastructure.type.ContractStatus;
import rest_api_test.api.datastructure.type.TSortField;

import java.util.List;

public interface ITransactionInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(ITransactionInteract.class);
    
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
        return TransactionHelper.getInstance().getTransactionStatus(transactionId);
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
        return TransactionHelper.getInstance().getTransactionDetails(resultStatuses, sortBy, sortDescend, pageNum, pageSize);
    }
    
    /*
    UTILITY CLASS
    */
}
