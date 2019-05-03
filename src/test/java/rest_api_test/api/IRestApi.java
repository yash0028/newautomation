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
        log.debug("set environment to DEV");
    }

    default void useTestApi() {
        AbstractRestApi.useDev = false;
        log.debug("set environment to TEST");
    }
    
    /*
    UTILITY CLASS
    */
}
