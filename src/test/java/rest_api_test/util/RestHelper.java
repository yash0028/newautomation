package rest_api_test.util;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import io.restassured.response.Response;

import java.util.List;

/**
 * Created by jwacker on 7/19/2018.
 * <p>
 * This class contains helper methods for REST operations.
 */
class RestHelper {
    private static RestHelper ourInstance = new RestHelper();

    private RestHelper() {
    }

    static RestHelper getInstance() {
        return ourInstance;
    }

    boolean fieldsMatch(Response response, List<String> fields) {

        //Get the response as a String
        String responseString = response.asString().toLowerCase();

        //Iterate through each field that should be contained in the response
        for (String field : fields) {
            field = field.toLowerCase().trim();

            //If the field is not in the response string, return false
            if (!responseString.contains(field)) {
                return false;
            }
        }

        //Return true if all the fields are contained in the response string
        return true;
    }

    JsonObject parseJsonResponse(Response response) {
        String responseString = response.asString().trim();
        return parseJsonString(responseString);
    }

    JsonElement parseJsonElementResponse(Response response) {
        String responseString = response.asString().trim();
        return parseJsonElementString(responseString);
    }

    JsonObject parseJsonString(String string) {
        JsonParser parser = new JsonParser();

        return parser.parse(string).getAsJsonObject();
    }

    JsonElement parseJsonElementString(String string) {
        JsonParser parser = new JsonParser();

        return parser.parse(string);
    }
}
