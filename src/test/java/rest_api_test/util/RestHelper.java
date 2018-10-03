package rest_api_test.util;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import io.restassured.response.Response;

import java.util.List;

/**
 * Created by jwacker on 7/19/2018.
 * <p>
 * Package Private Singleton to help use various restful functions
 */
class RestHelper {
    private static RestHelper ourInstance = new RestHelper();

    /*
    CONSTRUCTOR
     */

    private RestHelper() {
    }

    /*
    STATIC METHODS
     */

    static RestHelper getInstance() {
        return ourInstance;
    }

    /*
    CLASS METHOD
     */

    /**
     * Given a response and list of String, make sure that the response contains all the fields
     *
     * @param response
     * @param fields
     * @return if the response contains all fields
     */
    boolean fieldsMatch(Response response, List<String> fields) {

        //Get the response as a String
        String responseString = response.asString().toLowerCase();

        //Iterate through each field that should be contained in the response
        for (String field : fields) {
            field = field.trim();

            //If the field is not in the response string, return false
            if (!responseString.contains(field)) {
                return false;
            }
        }

        //Return true if all the fields are contained in the response string
        return true;
    }

    /**
     * Parse a Restful Response into a Json Object.
     * Deprecated since JsonElement should be used instead to check if the response json is an array, object, or null
     *
     * @param response Restful Response
     * @return Json Object
     */
    @Deprecated
    JsonObject parseJsonResponse(Response response) {
        String responseString = response.asString().trim();
        return parseJsonString(responseString);
    }

    /**
     * Parse a Restful Response into a Json Element.
     * @param response Restful Response
     * @return Json Element
     */
    JsonElement parseJsonElementResponse(Response response) {
        String responseString = response.asString().trim();
        return parseJsonElementString(responseString);
    }

    /**
     * Parse a String into a Json Object.
     * Deprecated since JsonElement should be used instead to check if the string json is an array, object, or null
     *
     * @param string stringified json
     * @return Json Object
     */
    @Deprecated
    JsonObject parseJsonString(String string) {
        JsonParser parser = new JsonParser();

        return parser.parse(string).getAsJsonObject();
    }

    /**
     * Parse a String into a Json Object.
     * @param string stringified json
     * @return Json Element
     */
    JsonElement parseJsonElementString(String string) {
        JsonParser parser = new JsonParser();

        return parser.parse(string);
    }
}
