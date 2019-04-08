package rest_api_test.api.datastructure.gson.transaction;

import com.google.gson.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TransactionDetail extends TransactionUnit {
    private static final Logger log = LoggerFactory.getLogger(TransactionDetail.class);

    protected String id;
    protected String startTime;
    protected String expireTime;
    protected String timestamp;
    protected String status;
    protected String result;

    /*
    CONSTRUCTOR
    */
    
    /*
    CLASS METHODS
    */

    public String getId() {
        return id;
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
        return String.format("[%s][%s::%s] - %s", getType(), status, result, getTransactionId());
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
