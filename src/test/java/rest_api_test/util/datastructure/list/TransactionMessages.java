package rest_api_test.util.datastructure.list;

import com.google.gson.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.datastructure.gson.transaction.TransactionMessage;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;

public class TransactionMessages extends ArrayList<TransactionMessage> {
    private static final Logger log = LoggerFactory.getLogger(TransactionMessages.class);

    /*
    CONSTRUCTOR
    */

    public TransactionMessages(TransactionMessage[] messages) {
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

    public static class Deserializer implements JsonDeserializer<TransactionMessages> {
        @Override
        public TransactionMessages deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext ctx) throws JsonParseException {
            if (json.isJsonArray()) {
                Gson gson = new GsonBuilder()
                        .registerTypeAdapter(TransactionMessage.class, new TransactionMessage.Deserializer())
                        .create();
                TransactionMessage[] messages = gson.fromJson(json, TransactionMessage[].class);
                return new TransactionMessages(messages);
            }

            Gson gson = new Gson();
            return gson.fromJson(json, TransactionMessages.class);

        }
    }


}
