package rest_api_test.api.activiti;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;

public interface IActivitiInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IActivitiInteract.class);

    String RESOURCE_CREATE_RECORD = "/v1.0/processes";

    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    /**
     * Create a record with the Activiti API
     * maps to POST /v1.0/processes
     *
     * @param payload the json element containing contract ID, Process ID, and/or Process Name
     * @return the response from Activiti API
     */
    default Response createRecord(Object payload) {
        return ActivitiHelper.getInstance().doBasicPost(RESOURCE_CREATE_RECORD, payload);
    }
    
    /*
    UTILITY CLASS
    */
}
