package rest_api_test.api.mock;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import static io.restassured.RestAssured.given;

class MockServiceHelper {
    private static final Logger log = LoggerFactory.getLogger(MockServiceHelper.class);

    private static final String ENDPOINT = "http://cosmos-ndb-mock-service-clm-test.ocp-ctc-dmz-nonprod.optum.com";
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
        given().baseUri(ENDPOINT).delete(RESOURCE_CLEAR_NDB_DB);
    }

    public void clearCosmos() {
        given().baseUri(ENDPOINT).delete(RESOURCE_CLEAR_COSMOS_DB);
    }
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
