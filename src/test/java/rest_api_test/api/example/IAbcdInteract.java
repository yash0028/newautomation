package rest_api_test.api.example;

import com.google.gson.JsonElement;
import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.example.model.Letter;

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
    default Letter getLetter(String htmlNamedCode) {
        final String r = RESOURCE_GET_LETTER.replace("{}", htmlNamedCode);
        Response response = AbcdHelper.getInstance().doBasicGet(r);
        return AbcdHelper.getInstance().getLetter(response);
    }
    
    /*
    UTILITY CLASS
    */
}
