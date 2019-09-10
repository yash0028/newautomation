package rest_api_test.api.example.endpoint;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;

class AbcdHelper extends AbstractRestApi {
    private static final Logger log = LoggerFactory.getLogger(AbcdHelper.class);

    private static final String ENDPOINT_DEV = "http://abcd-dev.com";
    private static final String ENDPOINT_TEST = "http://abcd-test.com";

    private static AbcdHelper INSTANCE = new AbcdHelper();

    /*
    CONSTRUCTOR
    */

    private AbcdHelper() {
    }
    
    /*
    STATIC METHODS
    */

    static AbcdHelper getInstance() {
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
