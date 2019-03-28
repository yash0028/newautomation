package rest_api_test.util.transaction;

import com.google.gson.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;

public class MessageHistory extends ArrayList<TransactionMessage> {
    private static final Logger log = LoggerFactory.getLogger(MessageHistory.class);

    /*
    CONSTRUCTOR
    */

    public MessageHistory(TransactionMessage[] messages) {
        this.addAll(Arrays.asList(messages));
    }
    
    /*
    CLASS METHODS
    */

    public void sortFirst2Last() {
        this.sort(TransactionMessage.FIRST_2_LAST);
    }

    public void sortLast2First() {
        this.sort(TransactionMessage.LAST_2_FIRST);
    }
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */

    public static class Deserializer implements JsonDeserializer<MessageHistory> {
        @Override
        public MessageHistory deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext ctx) throws JsonParseException {
            if (json.isJsonArray()) {
                Gson gson = new GsonBuilder()
                        .registerTypeAdapter(TransactionMessage.class, new TransactionMessage.Deserializer())
                        .create();
                TransactionMessage[] messages = gson.fromJson(json, TransactionMessage[].class);
                return new MessageHistory(messages);
            }

            Gson gson = new Gson();
            return gson.fromJson(json, MessageHistory.class);

        }
    }


}
