package rest_api_test.util.transaction;

import com.google.gson.*;
import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Type;
import java.util.ArrayList;

public class TransactionDetails extends ArrayList<TransactionDetail> {
    private static final Logger log = LoggerFactory.getLogger(TransactionDetails.class);

    private Response response;

    /*
    CONSTRUCTOR
    */
    
    /*
    CLASS METHODS
    */

    public Response getResponse() {
        return response;
    }

    public void setResponse(Response response) {
        this.response = response;
    }

    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */

    public static class Deserializer implements JsonDeserializer<TransactionDetails> {
        @Override
        public TransactionDetails deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext ctx) throws JsonParseException {
            Gson gson = new GsonBuilder()
                    .registerTypeAdapter(TransactionDetail.class, new TransactionDetail.Deserializer())
                    .create();

            if (json.isJsonObject() && json.getAsJsonObject().get("results").isJsonArray()) {
                return gson.fromJson(json.getAsJsonObject().get("results"), TransactionDetails.class);
            } else {
                log.error("missing results array");
                return new TransactionDetails();
            }
        }
    }
}
