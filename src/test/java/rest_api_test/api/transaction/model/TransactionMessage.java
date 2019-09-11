package rest_api_test.api.transaction.model;

import com.google.gson.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Type;
import java.util.Comparator;

public class TransactionMessage {
    public static final Comparator FIRST_2_LAST = new CompareFirst2Last();
    public static final Comparator LAST_2_FIRST = new CompareLast2First();
    private static final Logger log = LoggerFactory.getLogger(TransactionMessage.class);

    protected String id;
    protected String transactionId;
    protected String timestamp;
    protected String severity;
    protected String message;
    protected String origin;
    protected String code;


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

    public String getTimestamp() {
        return timestamp;
    }

    public String getSeverity() {
        return severity;
    }

    public String getMessage() {
        return message;
    }

    public String getOrigin() {
        return origin;
    }

    public String getCode() {
        return code;
    }

    @Override
    public String toString() {
        return String.format("[%s::%s] %s", origin, code, message);
    }

    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */

    public static class Deserializer implements JsonDeserializer<TransactionMessage> {
        @Override
        public TransactionMessage deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext ctx) throws JsonParseException {
            Gson gson = new Gson();
            return gson.fromJson(json, TransactionMessage.class);
        }
    }

    public static class CompareFirst2Last implements Comparator<TransactionMessage> {
        public int compare(TransactionMessage o1, TransactionMessage o2) {
            return o1.getTimestamp().compareTo(o2.getTimestamp());
        }
    }

    public static class CompareLast2First implements Comparator<TransactionMessage> {
        public int compare(TransactionMessage o1, TransactionMessage o2) {
            return o1.getTimestamp().compareTo(o2.getTimestamp());
        }
    }


    public static final class Builder {
        private String id;
        private String transactionId;
        private String timestamp;
        private String severity;
        private String message;
        private String origin;
        private String code;

        public Builder withId(String id) {
            this.id = id;
            return this;
        }

        public Builder withTransactionId(String transactionId) {
            this.transactionId = transactionId;
            return this;
        }

        public Builder withTimestamp(String timestamp) {
            this.timestamp = timestamp;
            return this;
        }

        public Builder withSeverity(String severity) {
            this.severity = severity;
            return this;
        }

        public Builder withMessage(String message) {
            this.message = message;
            return this;
        }

        public Builder withOrigin(String origin) {
            this.origin = origin;
            return this;
        }

        public Builder withCode(String code) {
            this.code = code;
            return this;
        }

        public TransactionMessage build() {
            TransactionMessage transactionMessage = new TransactionMessage();
            transactionMessage.severity = this.severity;
            transactionMessage.timestamp = this.timestamp;
            transactionMessage.transactionId = this.transactionId;
            transactionMessage.message = this.message;
            transactionMessage.code = this.code;
            transactionMessage.origin = this.origin;
            transactionMessage.id = this.id;
            return transactionMessage;
        }
    }
}
