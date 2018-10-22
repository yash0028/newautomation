package rest_api_test.util;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.stream.MalformedJsonException;
import io.restassured.response.Response;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.step.ContractQuerySteps;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by jwacker on 7/19/2018.
 * <p>
 * Package Private Singleton to help use various restful functions
 */
class RestHelper {
    private final static Logger log = LoggerFactory.getLogger(RestHelper.class);
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
    @Deprecated
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

    boolean verifyFields(JsonElement ecmRoot, List<String> masterSet, String regex){
        int failCount = 0;

        for (String masterKey : masterSet) {
            List<String> deepKeySet = Arrays.stream(masterKey.split(regex)).map(String::trim).collect(Collectors.toList());
            StringBuilder traveledPath = new StringBuilder("object");
            boolean tempTest = verifySingleKey(deepKeySet, 0, ecmRoot, traveledPath);
            if (tempTest) {
                log.info("Found all keys for {}", traveledPath.toString());
            } else {
                failCount++;
            }
        }

        return failCount == 0;
    }

    boolean verifySingleKey(List<String> keySet, int index, JsonElement currJson, StringBuilder traveledPath){
        JsonElement nextJson;
        JsonParser parser = new JsonParser();

        //Move into array
        while (currJson.isJsonArray() && currJson.getAsJsonArray().size() > 0) {
            currJson = currJson.getAsJsonArray().get(0);
            traveledPath.append("[0]");
        }

        // If JSON Primitive, parse into JSON Element
        try {
            if (currJson.isJsonPrimitive()) {
                currJson = parser.parse(currJson.getAsJsonPrimitive().getAsString());
            }

        } catch (Exception e){
            // Do nothing
        }

        //Check that the previous json is still usable and not at the end of the check
        if (index >= keySet.size()) {
            return true;
        }

        String errorMessage = "Missing key <" + keySet.get(index) + "> in " + traveledPath.toString();
        if (currJson.isJsonPrimitive() || currJson.isJsonNull() || currJson.isJsonArray() || !currJson.getAsJsonObject().has(keySet.get(index))) {
            log.error(errorMessage);
            return false;
        }

        nextJson = currJson.getAsJsonObject().get(keySet.get(index));
        traveledPath.append(".").append(keySet.get(index));
        return verifySingleKey(keySet, index + 1, nextJson, traveledPath);
    }

    boolean verifyFieldsNotNull(JsonElement ecmRoot, List<String> masterSet, String regex){
        int failCount = 0;

        for (String masterKey : masterSet) {
            List<String> deepKeySet = Arrays.stream(masterKey.split(regex)).map(String::trim).collect(Collectors.toList());
            StringBuilder traveledPath = new StringBuilder("object");
            boolean tempTest = verifyElementNotNull(deepKeySet, 0, ecmRoot, traveledPath);
            if (tempTest) {
                //log.info("Element {} is not null", traveledPath.toString());
            } else {
                failCount++;
            }
        }

        return failCount == 0;
    }

    boolean verifyElementNotNull(List<String> keySet, int index, JsonElement currJson, StringBuilder traveledPath){
        JsonElement nextJson;
        JsonParser parser = new JsonParser();

        //Move into array
        while (currJson.isJsonArray() && currJson.getAsJsonArray().size() > 0) {
            currJson = currJson.getAsJsonArray().get(0);
            traveledPath.append("[0]");
        }

        // If JSON Primitive, parse into JSON Element
        try {
            if (currJson.isJsonPrimitive()) {
                currJson = parser.parse(currJson.getAsJsonPrimitive().getAsString());
            }

        } catch (Exception e){
            // Do nothing
        }

        //Check that the previous json is still usable and not at the end of the check
        if (index >= keySet.size()) {
            return true;
        }

        String errorMessage = "Missing key <" + keySet.get(index) + "> in " + traveledPath.toString();
        if (currJson.isJsonPrimitive() || currJson.isJsonNull() || currJson.isJsonArray() || !currJson.getAsJsonObject().has(keySet.get(index))) {
            log.error(errorMessage);
            return false;
        }

        nextJson = currJson.getAsJsonObject().get(keySet.get(index));
        traveledPath.append(".").append(keySet.get(index));

        String nullErrorMessage = "Element <" + keySet.get(index) + "> in " + traveledPath.toString() + " is null";
        if (nextJson.isJsonNull()){
            log.error(nullErrorMessage);
            return false;
        }

        if (nextJson.isJsonPrimitive() && (nextJson.getAsString().isEmpty() || nextJson.getAsString().equals("null")) ){
            log.error(nullErrorMessage);
            return false;
        }

        return verifyElementNotNull(keySet, index + 1, nextJson, traveledPath);
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
     *
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
     *
     * @param string stringified json
     * @return Json Element
     */
    JsonElement parseJsonElementString(String string) {
        JsonParser parser = new JsonParser();

        return parser.parse(string);
    }
}
