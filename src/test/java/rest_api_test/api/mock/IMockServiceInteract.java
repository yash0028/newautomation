package rest_api_test.api.mock;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;

public interface IMockServiceInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IMockServiceInteract.class);

    String RESOURCE_COSMOS = "/v1.0/cosmos";
    String RESOURCE_NDB_UPDATE = "/v1.0/ndb/update";
    String RESOURCE_CLEAR_COSMOS_DB = "/v1.0/cosmos/cleardb";
    String RESOURCE_CLEAR_NDB_DB = "/v1.0/ndb/cleardb";
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    default Response updateMockCosmos(Object payload) {
        return MockServiceHelper.getInstance().doSoapPost(RESOURCE_COSMOS, payload);
    }

    default Response updateMockNdb(Object payload) {
        return MockServiceHelper.getInstance().doBasicPost(RESOURCE_NDB_UPDATE, payload);
    }

    default Response mockClearNdb() {
        return MockServiceHelper.getInstance().doBasicDelete(RESOURCE_CLEAR_NDB_DB);
    }

    default Response mockClearCosmos() {
        return MockServiceHelper.getInstance().doBasicDelete(RESOURCE_CLEAR_COSMOS_DB);
    }
    
    /*
    UTILITY CLASS
    */
}
