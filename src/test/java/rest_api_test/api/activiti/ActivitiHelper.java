package rest_api_test.api.activiti;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;

class ActivitiHelper extends AbstractRestApi {
    private static final Logger log = LoggerFactory.getLogger(ActivitiHelper.class);

    private static final String ENDPOINT_DEV = "http://activiti-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "http://activiti-api-clm-test.ocp-ctc-dmz-nonprod.optum.com";

    private static ActivitiHelper INSTANCE = new ActivitiHelper();

    /*
    CONSTRUCTOR
    */

    private ActivitiHelper() {
    }
    
    /*
    STATIC METHODS
    */

    static ActivitiHelper getInstance() {
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
