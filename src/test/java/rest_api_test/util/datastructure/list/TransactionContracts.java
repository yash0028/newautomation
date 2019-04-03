package rest_api_test.util.datastructure.list;

import com.google.gson.*;
import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.datastructure.gson.transaction.TransactionContract;

import java.lang.reflect.Type;
import java.util.ArrayList;

public class TransactionContracts extends ArrayList<TransactionContract> {
    private static final Logger log = LoggerFactory.getLogger(TransactionContracts.class);

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

    public static class Deserializer implements JsonDeserializer<TransactionContracts> {
        @Override
        public TransactionContracts deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext ctx) throws JsonParseException {
            Gson gson = new GsonBuilder()
                    .registerTypeAdapter(TransactionContract.class, new TransactionContract.Deserializer())
                    .create();

            if (json.isJsonObject() && json.getAsJsonObject().get("content").isJsonArray()) {
                return gson.fromJson(json.getAsJsonObject().get("content"), TransactionContracts.class);
            } else {
                log.error("missing content array");
                return new TransactionContracts();
            }
        }
    }
}
