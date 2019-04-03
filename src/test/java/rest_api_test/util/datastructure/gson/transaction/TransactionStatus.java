package rest_api_test.util.datastructure.gson.transaction;

import com.google.gson.*;
import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.datastructure.list.TransactionMessages;

import java.lang.reflect.Type;

public class TransactionStatus extends TransactionDetail {
    private static final Logger log = LoggerFactory.getLogger(TransactionStatus.class);

    protected TransactionMessages messages;
    protected Response response;

    public TransactionStatus() {
    }

    /*
    CONSTRUCTOR
    */

    /*
    CLASS METHODS
    */

    public TransactionMessages getMessages() {
        return messages;
    }

    public void setMessages(TransactionMessages messages) {
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
        StringBuilder builder = new StringBuilder(getTransactionId());
        builder.append("\n");

        builder.append(getStatus()).append(" | ").append(getResult()).append("\n");

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
                    .registerTypeAdapter(TransactionMessages.class, new TransactionMessages.Deserializer())
                    .create();
            return gson.fromJson(json, TransactionStatus.class);
        }
    }


    public static final class Builder {
        protected String transactionId;
        protected String transactionType;
        private String id;
        private String startTime;
        private String expireTime;
        private String timestamp;
        private String status;
        private String result;
        private TransactionMessages messages;
        private Response response;

        public Builder withTransactionId(String transactionId) {
            this.transactionId = transactionId;
            return this;
        }

        public Builder withId(String id) {
            this.id = id;
            return this;
        }

        public Builder withStartTime(String startTime) {
            this.startTime = startTime;
            return this;
        }

        public Builder withExpireTime(String expireTime) {
            this.expireTime = expireTime;
            return this;
        }

        public Builder withTimestamp(String timestamp) {
            this.timestamp = timestamp;
            return this;
        }

        public Builder withTransactionType(String transactionType) {
            this.transactionType = transactionType;
            return this;
        }

        public Builder withStatus(String status) {
            this.status = status;
            return this;
        }

        public Builder withResult(String result) {
            this.result = result;
            return this;
        }

        public Builder withMessages(TransactionMessages messages) {
            this.messages = messages;
            return this;
        }

        public Builder withResponse(Response response) {
            this.response = response;
            return this;
        }

        public TransactionStatus build() {
            TransactionStatus transactionStatus = new TransactionStatus();
            transactionStatus.setMessages(messages);
            transactionStatus.setResponse(response);
            transactionStatus.transactionType = this.transactionType;
            transactionStatus.id = this.id;
            transactionStatus.status = this.status;
            transactionStatus.transactionId = this.transactionId;
            transactionStatus.result = this.result;
            transactionStatus.expireTime = this.expireTime;
            transactionStatus.timestamp = this.timestamp;
            transactionStatus.startTime = this.startTime;
            return transactionStatus;
        }
    }
}
