package rest_api_test.util.transaction;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface ITransactionInteract {
    Logger log = LoggerFactory.getLogger(ITransactionInteract.class);
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    default TransactionStatus transactionQueryStatus(String transactionId) {
        return TransactionStatusHelper.getInstance().getTransactionStatus(transactionId);
    }
    
    /*
    UTILITY CLASS
    */
}
