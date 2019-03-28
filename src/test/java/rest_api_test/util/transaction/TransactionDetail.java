package rest_api_test.util.transaction;

import com.google.gson.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TransactionDetail {
    private static final Logger log = LoggerFactory.getLogger(TransactionDetail.class);

    private String id;
    private String transactionId;
    private String type;
    private String startTime;
    private String expireTime;
    private String timestamp;
    private String status;
    private String result;

    /*
    CONSTRUCTOR
    */
    
    /*
    CLASS METHODS
    */

    public String getId() {
        return id;
    }

    public String getTransactionId() {
        return transactionId;
    }

    public String getType() {
        return type;
    }

    public String getStartTime() {
        return startTime;
    }

    public String getExpireTime() {
        return expireTime;
    }

    public String getTimestamp() {
        return timestamp;
    }

    public String getStatus() {
        return status;
    }

    public String getResult() {
        return result;
    }

    @Override
    public String toString() {
        return String.format("[%s][%s::%s] - %s", type, status, result, transactionId);
    }

    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */

    public static class Deserializer implements JsonDeserializer<TransactionDetail> {

        @Override
        public TransactionDetail deserialize(JsonElement json, java.lang.reflect.Type typeOfT, JsonDeserializationContext context) throws JsonParseException {
            Gson gson = new Gson();
            return gson.fromJson(json, TransactionDetail.class);
        }
    }


}
