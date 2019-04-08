package rest_api_test.api;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface IRestApi {
    Logger log = LoggerFactory.getLogger(IRestApi.class);
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    default void useDevApi() {
        AbstractRestApi.useDev = true;
    }

    default void useTestApi() {
        AbstractRestApi.useDev = false;
    }
    
    /*
    UTILITY CLASS
    */
}
