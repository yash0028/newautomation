package rest_api_test.util.transaction;

import com.google.gson.*;
import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Type;

public class TransactionStatus {
    private static final Logger log = LoggerFactory.getLogger(TransactionStatus.class);

    private String id;
    private String transactionId;
    private String type;
    private String startTime;
    private String expireTime;
    private String timestamp;
    private String status;
    private String result;
    private MessageHistory messages;
    private Response response;

    public TransactionStatus() {
    }


    /*
    CONSTRUCTOR
    */



    /*
    CLASS METHODS
    */

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(String transactionId) {
        this.transactionId = transactionId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getExpireTime() {
        return expireTime;
    }

    public void setExpireTime(String expireTime) {
        this.expireTime = expireTime;
    }

    public String getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public MessageHistory getMessages() {
        return messages;
    }

    public void setMessages(MessageHistory messages) {
        this.messages = messages;
    }

    public Response getResponse() {
        return response;
    }

    public void setResponse(Response response) {
        this.response = response;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder(transactionId);
        builder.append("\n");

        builder.append(status).append(" | ").append(result).append("\n");

        for (TransactionMessage message : messages) {
            builder.append("\t- ").append(message).append("\n");
        }

        return builder.toString();
    }

    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */

    public static class Deserializer implements JsonDeserializer<TransactionStatus> {
        @Override
        public TransactionStatus deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext ctx) throws JsonParseException {
            Gson gson = new GsonBuilder()
                    .registerTypeAdapter(MessageHistory.class, new MessageHistory.Deserializer())
                    .create();
            return gson.fromJson(json, TransactionStatus.class);
        }
    }
}
