package rest_api_test.api.mock;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;

public interface IMockServiceInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IMockServiceInteract.class);
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    default void mockClearNdb() {
        MockServiceHelper.getInstance().clearNdb();
    }

    default void mockClearCosmos() {
        MockServiceHelper.getInstance().clearCosmos();
    }
    
    /*
    UTILITY CLASS
    */
}
