package rest_api_test.api.etma;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;

class EtmaHelper extends AbstractRestApi {
    private static final Logger log = LoggerFactory.getLogger(EtmaHelper.class);

    private static final String ENDPOINT_DEV = "http://exari-table-maint-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "http://exari-table-maint-api-clm-test.ocp-ctc-dmz-nonprod.optum.com";

    private static EtmaHelper INSTANCE = new EtmaHelper();

    /*
    CONSTRUCTOR
    */

    private EtmaHelper() {
    }
    
    /*
    STATIC METHODS
    */

    static EtmaHelper getInstance() {
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
