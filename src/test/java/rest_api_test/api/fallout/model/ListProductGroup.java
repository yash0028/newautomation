package rest_api_test.api.fallout.model;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;

public class ListProductGroup extends ArrayList<ProductGroup> {
    private static final Logger log = LoggerFactory.getLogger(ListProductGroup.class);

    private Response response;

    /*
    CONSTRUCTOR
    */
    
    /*
    CLASS METHODS
    */

    public Response getResponse() {
        return response;
    }

    public void setResponse(Response response) {
        this.response = response;
    }
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
