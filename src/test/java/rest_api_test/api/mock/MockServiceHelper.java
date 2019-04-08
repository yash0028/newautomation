package rest_api_test.api.mock;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;

import static io.restassured.RestAssured.given;

class MockServiceHelper extends AbstractRestApi {
    private static final Logger log = LoggerFactory.getLogger(MockServiceHelper.class);

    private static final String ENDPOINT_DEV = "http://cosmos-ndb-mock-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "http://cosmos-ndb-mock-service-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_CLEAR_COSMOS_DB = "/v1.0/cosmos/cleardb";
    private static final String RESOURCE_CLEAR_NDB_DB = "/v1.0/ndb/cleardb";

    private static MockServiceHelper INSTANCE = new MockServiceHelper();

    /*
    CONSTRUCTOR
    */

    private MockServiceHelper() {
    }
    
    /*
    STATIC METHODS
    */

    public static MockServiceHelper getInstance() {
        return INSTANCE;
    }
    
    /*
    CLASS METHODS
    */

    public void clearNdb() {
        given().baseUri(getEndpoint()).delete(RESOURCE_CLEAR_NDB_DB);
    }

    public void clearCosmos() {
        given().baseUri(getEndpoint()).delete(RESOURCE_CLEAR_COSMOS_DB);
    }
    
    /*
    HELPER METHODS
    */

    @Override
    protected String getEndpoint() {
        return ENDPOINT_TEST;
    }

    /*
    UTILITY CLASS
    */
}
