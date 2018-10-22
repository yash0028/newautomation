package rest_api_test.util;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import io.restassured.response.Response;

import java.util.List;

/**
 * Interface for all Rest API Cucumber steps created with several default methods that allows any class that
 * implements it to safely use RestHelper.
 */
public interface IRestStep {

    /*
    DEFAULT METHODS
     */

    default boolean checkFieldsMatch(Response response, List<String> fields) {
        return RestHelper.getInstance().fieldsMatch(response, fields);
    }

    @Deprecated
    default JsonObject parseJsonResponse(Response response) {
        return RestHelper.getInstance().parseJsonResponse(response);
    }

    default JsonElement parseJsonElementResponse(Response response) {
        return RestHelper.getInstance().parseJsonElementResponse(response);
    }

    @Deprecated
    default JsonObject parseJsonString(String string) {
        return RestHelper.getInstance().parseJsonString(string);
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

    default boolean verifyFieldsNotNull(JsonElement ecmRoot, List<String> masterSet, String regex){
        return RestHelper.getInstance().verifyFieldsNotNull(ecmRoot, masterSet, regex);
    }

}
