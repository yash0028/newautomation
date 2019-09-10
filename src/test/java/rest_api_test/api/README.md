# REST API

Each REST endpoint will have its own api `interact` class and `helper` class in the same package. The `helper` is a package-private singleton and extends the `AbstractRestApi` class, giving it access to shared methods for basic rest calls. The `interact` class is then called inside the `step` classes.

## interact
The step code will implement the `I____Interact` interface; this gives it access to call the default methods defined in `I____Interact`.

- each resource is stored as a String, the variable is all uppercase with underscores
- if the resource needs some additional information on the end, such as an id, the resource string must have a {} where the replacement will occur.
- each resource for the endpoint needs one or more default methods
- each resource method needs a JavaDoc explaining what it does and the resource string it maps to
- a method should return a `Response` object or a `pojo` created from the `Response`
- a returned pojo should be registered under the `AbstractRestApi`'s GSON builder and the deserializer should exist as a static class in the pojo's class file
- any parameters for a resource method should be either a `pojo`, `String`, or `JsonElement`; avoid using `JsonObject` or `JsonArray`
- no interface methods are necessary


```java
package rest_api_test.api.example.endpoint;

import com.google.gson.JsonElement;
import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;

/**
 * This is an example of a Rest Api interact interface
 */
public interface IAbcdInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IAbcdInteract.class);

    String RESOURCE_CREATE_LETTER = "/v1.0/createLetter";
    String RESOURCE_GET_ALPHABET = "/v1.0/getAlphabet";
    String RESOURCE_GET_LETTER = "/v1.0/getLetter/{}";
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    /**
     * Create a letter with the Abcd API
     * maps to POST /v1.0/createLetter
     *
     * @param payload the json element containing the unicode, html named code, and a url to the svg
     * @return the response from Abcd API
     */
    default Response createLetter(JsonElement payload) {
        return AbcdHelper.getInstance().doBasicPost(RESOURCE_CREATE_LETTER, payload);
    }

    /**
     * Get a list of all letters in the alphabet with the Abcd API
     * maps to POST /v1.0/getAlphabet
     *
     * @return the response from Abcd API
     */
    default Response getAlphabet() {
        return AbcdHelper.getInstance().doBasicGet(RESOURCE_GET_ALPHABET);
    }

    /**
     * Get a by its html named code with the Abcd API
     * maps to POST /v1.0/getLetter/{}
     *
     * @param htmlNamedCode the html named code for the letter to get
     * @return the response from Abcd API
     */
    default Response getLetter(String htmlNamedCode) {
        final String r = RESOURCE_GET_LETTER.replace("{}", htmlNamedCode);
        
        return AbcdHelper.getInstance().doBasicGet(r);
    }
    
    /*
    UTILITY CLASS
    */
}


```

## helper

- helper should contain any endpoint
- helper should implement the abstract method of `getEndpoint`; this makes a decision based on the `env` variable contained within `AbstractRestApi`

```java
package rest_api_test.api.example.endpoint;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;

class AbcdHelper extends AbstractRestApi {
    private static final Logger log = LoggerFactory.getLogger(AbcdHelper.class);

    private static final String ENDPOINT_DEV = "http://abcd-dev.com";
    private static final String ENDPOINT_TEST = "http://abcd-test.com";

    private static AbcdHelper INSTANCE = new AbcdHelper();

    /*
    CONSTRUCTOR
    */

    private AbcdHelper() {
    }
    
    /*
    STATIC METHODS
    */

    static AbcdHelper getInstance() {
        return INSTANCE;
    }
    
    /*
    CLASS METHODS
    */
    
    /*
    HELPER METHODS
    */

    @Override
    protected String getEndpoint() {
        switch (env) {
            case stage:
            case test:
                return ENDPOINT_TEST;
            case dev:
            default:
                return ENDPOINT_DEV;
        }
    }

    /*
    UTILITY CLASS
    */
}


```