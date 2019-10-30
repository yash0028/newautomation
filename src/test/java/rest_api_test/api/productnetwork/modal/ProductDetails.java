package rest_api_test.api.productnetwork.modal;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;

public class ProductDetails extends ArrayList<ProductDetail> {
    private static final Logger log = LoggerFactory.getLogger(ProductDetails.class);

    private Response response;

    /*
    CONSTRUCTOR
    */
    
    /*
    STATIC METHODS
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
