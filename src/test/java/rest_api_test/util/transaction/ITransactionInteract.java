package rest_api_test.util.transaction;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

public interface ITransactionInteract {
    Logger log = LoggerFactory.getLogger(ITransactionInteract.class);
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    default TransactionStatus transactionQueryStatus(String transactionId) {
        return TransactionHelper.getInstance().getTransactionStatus(transactionId);
    }

    default TransactionDetails transactionQueryDetails(List<TDetailType> resultStatus, List<TSortField> sortBy, boolean sortDescend, int pageNum, int pageSize) {
        return TransactionHelper.getInstance().getTransactionDetails(resultStatus, sortBy, sortDescend, pageNum, pageSize);
    }
    
    /*
    UTILITY CLASS
    */
}
