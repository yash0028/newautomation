package rest_api_test.util.datastructure.gson.transaction;

import com.google.gson.annotations.SerializedName;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TransactionUnit extends TransactionId {
    private static final Logger log = LoggerFactory.getLogger(TransactionUnit.class);

    @SerializedName(value = "transactionType", alternate = "type")
    protected String transactionType;

    /*
    CONSTRUCTOR
    */
    
    /*
    CLASS METHODS
    */

    public String getType() {
        return transactionType;
    }
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */

    public static final class Builder {
        protected String transactionId;
        protected String transactionType;

        public Builder withTransactionId(String transactionId) {
            this.transactionId = transactionId;
            return this;
        }

        public Builder withTransactionType(String transactionType) {
            this.transactionType = transactionType;
            return this;
        }

        public TransactionUnit build() {
            TransactionUnit transactionUnit = new TransactionUnit();
            transactionUnit.transactionType = this.transactionType;
            transactionUnit.transactionId = this.transactionId;
            return transactionUnit;
        }
    }

}
