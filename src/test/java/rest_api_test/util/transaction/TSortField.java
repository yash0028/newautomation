package rest_api_test.util.transaction;

public enum TSortField {
    ID("id"),
    TRANSACTION_ID("transactionId"),
    TYPE("type"),
    START_TIME("startTime"),
    EXPIRE_TIME("expireTime"),
    TIME_STAMP("timestamp");

    public final String type;

    /*
    CONSTRUCTOR
    */

    TSortField(String type) {
        this.type = type;
    }
    
    /*
    CLASS METHODS
    */
    
    /*
    HELPER METHODS
    */


}
