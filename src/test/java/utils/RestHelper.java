package utils;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import io.restassured.response.Response;

import java.util.List;

/**
 * Created by jwacker on 7/19/2018.
 *
 * This class contains helper methods for REST operations.
 */
public class RestHelper {
    private static RestHelper ourInstance = new RestHelper();

    public static RestHelper getInstance() {
        return ourInstance;
    }

    private RestHelper() {
    }

    public boolean fieldsMatch(Response response, List<String> fields){

        //Get the response as a String
        String responseString = response.asString().toLowerCase();

        //Iterate through each field that should be contained in the response
        for(String field: fields){
            field = field.toLowerCase().trim();

            //If the field is not in the response string, return false
            if(!responseString.contains(field)){
                return false;
            }
        }

        //Return true if all the fields are contained in the response string
        return true;
    }

    public JsonObject parseJsonResponse(Response response){
        String responseString    = response.asString().trim();
        JsonParser parser = new JsonParser();
        JsonObject result = parser.parse(responseString).getAsJsonObject();

        return result;
    }
}
