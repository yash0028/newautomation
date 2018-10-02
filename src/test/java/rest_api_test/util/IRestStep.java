package rest_api_test.util;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import io.restassured.response.Response;

import java.util.List;

public interface IRestStep {

    default boolean checkFieldsMatch(Response response, List<String> fields) {
        return RestHelper.getInstance().fieldsMatch(response, fields);
    }

    default JsonObject parseJsonResponse(Response response) {
        return RestHelper.getInstance().parseJsonResponse(response);
    }

    default JsonElement parseJsonElementResponse(Response response) {
        return RestHelper.getInstance().parseJsonElementResponse(response);
    }

    default JsonObject parseJsonString(String string) {
        return RestHelper.getInstance().parseJsonString(string);
    }

    default JsonElement parseJsonElementString(String string) {
        return RestHelper.getInstance().parseJsonElementString(string);
    }

}
