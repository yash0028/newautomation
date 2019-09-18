package rest_api_test.api.contractstatus;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;

class ContractStatusHelper extends AbstractRestApi {
    private static final Logger log = LoggerFactory.getLogger(ContractStatusHelper.class);

    private static final String ENDPOINT_DEV = "http://contract-status-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "http://contract-status-api-clm-test.ocp-ctc-dmz-nonprod.optum.com";

    private static ContractStatusHelper INSTANCE = new ContractStatusHelper();

    /*
    CONSTRUCTOR
    */

    private ContractStatusHelper() {
    }
    
    /*
    STATIC METHODS
    */

    static ContractStatusHelper getInstance() {
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
