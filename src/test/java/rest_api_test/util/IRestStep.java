package rest_api_test.util;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import io.restassured.response.Response;

import java.util.List;
import java.util.Map;

/**
 * Interface for all Rest API Cucumber steps created with several default methods that allows any class that
 * implements it to safely use RestHelper.
 */
public interface IRestStep {

    /*
    DEFAULT METHODS
     */

    default JsonElement parseJsonElementResponse(Response response) {
        return RestHelper.getInstance().parseJsonElementResponse(response);
    }

    default JsonElement parseJsonElementString(String string) {
        return RestHelper.getInstance().parseJsonElementString(string);
    }

    default boolean verifyFields(JsonElement ecmRoot, List<String> masterSet, String regex){
        return RestHelper.getInstance().verifyFields(ecmRoot, masterSet, regex);
    }

    default boolean verifySingleKey(List<String> keySet, int index, JsonElement currJson, StringBuilder traveledPath){
        return RestHelper.getInstance().verifySingleKey(keySet, index, currJson, traveledPath);
    }

    default boolean verifyFieldsNotNull(JsonElement ecmRoot, List<String> masterSet, String regex) {
        return RestHelper.getInstance().verifyFieldsNotNull(ecmRoot, masterSet, regex);
    }

    default JsonElement subJsonStringValues(JsonElement base, Map<String, String> subs) {
        return RestHelper.getInstance().subJsonStringValues(base, subs);
    }

    default Map<String,String> jsonObjectToMap(JsonObject json){
        return RestHelper.getInstance().jsonObjectToMap(json);
    }
}
