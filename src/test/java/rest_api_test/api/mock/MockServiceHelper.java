package rest_api_test.api.mock;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;

class MockServiceHelper extends AbstractRestApi {
    private static final Logger log = LoggerFactory.getLogger(MockServiceHelper.class);

    private static final String ENDPOINT_DEV = "http://cosmos-ndb-mock-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "http://cosmos-ndb-mock-service-clm-test.ocp-ctc-dmz-nonprod.optum.com";


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
    
    /*
    HELPER METHODS
    */

    @Override
    protected String getEndpoint() {
        switch (env) {
            case stage:
            case test:
                return ENDPOINT_TEST;
            case dev:
            default:
                return ENDPOINT_DEV;
        }
    }

    /*
    UTILITY CLASS
    */
}
