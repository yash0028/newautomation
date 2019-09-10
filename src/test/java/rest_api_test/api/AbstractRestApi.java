package rest_api_test.api;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import general_test.util.ISharedValueReader;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.datastructure.gson.contractsquery.QueryResponse;
import rest_api_test.api.datastructure.gson.transaction.TransactionStatus;
import rest_api_test.api.datastructure.list.TransactionDetails;

import java.util.Map;

import static io.restassured.RestAssured.given;

public abstract class AbstractRestApi implements ISharedValueReader {
    private static final Logger log = LoggerFactory.getLogger(AbstractRestApi.class);
    protected static boolean useDev = true;
    protected final Gson gson;

    /*
    CONSTRUCTOR
    */

    public AbstractRestApi() {
        RestAssured.useRelaxedHTTPSValidation();
        gson = new GsonBuilder()
                .registerTypeAdapter(TransactionStatus.class, new TransactionStatus.Deserializer())
                .registerTypeAdapter(TransactionDetails.class, new TransactionDetails.Deserializer())
                .registerTypeAdapter(QueryResponse.class, new QueryResponse.Deserializer())
                .create();
    }

    /*
    ABSTRACT METHODS
     */

    protected abstract String getEndpoint();
    
    /*
    CLASS METHODS
    */

    public Response doBasicGet(String resourceEndpoint) {
        RequestSpecification request = given().baseUri(getEndpoint());

        // Get the GET response
        return request.get(resourceEndpoint);
    }

    public Response doParamGet(String endpoint, Map<String, String> params) {
        RequestSpecification request = given().baseUri(getEndpoint())
                .header("Content-Type", "application/json");

        // Add params
        params.forEach(request::param);

        // Get the GET response

        return request.get(endpoint);
    }


    public Response doBasicPost(String resourceEndpoint, JsonElement payload) {
        RequestSpecification request = given().baseUri(getEndpoint())
                .header("Content-Type", "application/json")
                .body(payload);

        // Get the POST response
        return request.post(resourceEndpoint);
    }
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
