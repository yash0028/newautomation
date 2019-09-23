package rest_api_test.api;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.contractsquery.model.QueryResponse;
import rest_api_test.api.transaction.model.TransactionDetails;
import rest_api_test.api.transaction.model.TransactionStatus;
import rest_api_test.util.IRestStep;

import static io.restassured.RestAssured.given;

public abstract class AbstractRestApi implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(AbstractRestApi.class);
    protected static Env env = Env.test;
    public final Gson gson;

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
        log.trace("sending 'get' to {}", resourceEndpoint);
        RequestSpecification request = given().log().everything().baseUri(getEndpoint());

        // Get the GET response
        return request.get(resourceEndpoint).prettyPeek();
    }

    public Response doParamGet(String resourceEndpoint, ParamMap params) {
        log.trace("sending 'get' to {} with params [{}]", resourceEndpoint, params);
        RequestSpecification request = given().log().everything().baseUri(getEndpoint())
                .header("Content-Type", "application/json");

        // Add params
        if (params != null)
            request.params(params);

        // Get the GET response
        return request.get(resourceEndpoint).prettyPeek();
    }

    public Response doBasicPost(String resourceEndpoint, Object payload) {
        log.trace("sending 'post' to {} with payload [{}]", resourceEndpoint, payload);
        RequestSpecification request = given().log().everything().baseUri(getEndpoint())
                .header("Content-Type", "application/json");

        if (payload != null)
            request.body(payload);

        // Get the POST response
        return request.post(resourceEndpoint).prettyPeek();
    }

    public Response doBasicPut(String resourceEndpoint, Object payload) {
        log.trace("sending 'post' to {} with payload [{}]", resourceEndpoint, payload);
        RequestSpecification request = given().log().everything().baseUri(getEndpoint())
                .header("Content-Type", "application/json");

        if (payload != null)
            request.body(payload);

        // Get the POST response
        return request.put(resourceEndpoint).prettyPeek();
    }

    public Response doBasicDelete(String resourceEndpoint) {
        log.trace("sending 'delete' to {}", resourceEndpoint);
        RequestSpecification request = given().log().everything().baseUri(getEndpoint());

        // Get the DELETE response
        return request.delete(resourceEndpoint).prettyPeek();
    }

    public Response doSoapPost(String resourceEndpoint, Object payload) {
        log.trace("sending 'soap post' to {} with payload [{}]", resourceEndpoint, payload);
        RequestSpecification request = given().log().everything().baseUri(getEndpoint())
                .header("Content-Type", "application/soap+xml");

        if (payload != null)
            request.body(payload);

        // Get the POST response
        return request.post(resourceEndpoint).prettyPeek();
    }
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */

    public enum Env {
        dev,
        test,
        stage
    }
}
