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
import util.configuration.IConfigurable;

import static io.restassured.RestAssured.given;

public abstract class AbstractRestApi implements IRestStep, IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(AbstractRestApi.class);
    protected static Env env = Env.test;
    public final Gson gson;
    public static LogLevel logLevel = LogLevel.all;

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
        RequestSpecification request = given().baseUri(getEndpoint());

        switch (logLevel) {
            case all:
            case request:
                request.log().everything();
        }

        // Get the GET response
        Response response = request.get(resourceEndpoint);

        switch (logLevel) {
            case all:
            case response:
                return response.prettyPeek();
            default:
                return response;
        }
    }

    public Response doParamGet(String resourceEndpoint, ParamMap params) {
        log.trace("sending 'get' to {} with params [{}]", resourceEndpoint, params);
        RequestSpecification request = given().baseUri(getEndpoint())
                .header("Content-Type", "application/json");

        switch (logLevel) {
            case all:
            case request:
                request.log().everything();
        }

        // Add params
        if (params != null)
            request.params(params);

        // Get the GET response
        Response response = request.get(resourceEndpoint).prettyPeek();

        switch (logLevel) {
            case all:
            case response:
                return response.prettyPeek();
            default:
                return response;
        }
    }

    public Response doBasicPost(String resourceEndpoint, Object payload) {
        log.trace("sending 'post' to {} with payload [{}]", resourceEndpoint, payload);
        RequestSpecification request = given().baseUri(getEndpoint())
                .header("Content-Type", "application/json");

        switch (logLevel) {
            case all:
            case request:
                request.log().everything();
        }

        if (payload != null)
            request.body(payload);

        // Get the POST response
        Response response = request.post(resourceEndpoint).prettyPeek();

        switch (logLevel) {
            case all:
            case response:
                return response.prettyPeek();
            default:
                return response;
        }
    }

    public Response doBasicPut(String resourceEndpoint, Object payload) {
        log.trace("sending 'post' to {} with payload [{}]", resourceEndpoint, payload);
        RequestSpecification request = given().baseUri(getEndpoint())
                .header("Content-Type", "application/json");

        switch (logLevel) {
            case all:
            case request:
                request.log().everything();
        }

        if (payload != null)
            request.body(payload);

        // Get the POST response
        Response response = request.put(resourceEndpoint).prettyPeek();

        switch (logLevel) {
            case all:
            case response:
                return response.prettyPeek();
            default:
                return response;
        }
    }

    public Response doBasicDelete(String resourceEndpoint) {
        log.trace("sending 'delete' to {}", resourceEndpoint);
        RequestSpecification request = given().baseUri(getEndpoint());

        switch (logLevel) {
            case all:
            case request:
                request.log().everything();
        }

        // Get the DELETE response
        Response response = request.delete(resourceEndpoint).prettyPeek();

        switch (logLevel) {
            case all:
            case response:
                return response.prettyPeek();
            default:
                return response;
        }
    }

    public Response doSoapPost(String resourceEndpoint, Object payload) {
        log.trace("sending 'soap post' to {} with payload [{}]", resourceEndpoint, payload);
        RequestSpecification request = given().baseUri(getEndpoint())
                .header("Content-Type", "application/soap+xml");

        switch (logLevel) {
            case all:
            case request:
                request.log().everything();
        }

        if (payload != null)
            request.body(payload);

        // Get the POST response
        Response response = request.post(resourceEndpoint).prettyPeek();

        switch (logLevel) {
            case all:
            case response:
                return response.prettyPeek();
            default:
                return response;
        }
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

    public enum LogLevel {
        all,
        request,
        response,
        none
    }
}
