package rest_api_test.util.datastructure.gson.transaction;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public abstract class TransactionId {
    private static final Logger log = LoggerFactory.getLogger(TransactionId.class);

    protected String transactionId;

    /*
    CONSTRUCTOR
    */
    
    /*
    CLASS METHODS
    */

    public String getTransactionId() {
        return transactionId;
    }
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */


}
