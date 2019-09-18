package rest_api_test.api.contractrules;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;

class ContractRulesHelper extends AbstractRestApi {
    private static final Logger log = LoggerFactory.getLogger(ContractRulesHelper.class);

    private static final String ENDPOINT_DEV = "http://contract-rules-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "http://contract-rules-api-clm-test.ocp-ctc-dmz-nonprod.optum.com";

    private static ContractRulesHelper INSTANCE = new ContractRulesHelper();

    /*
    CONSTRUCTOR
    */

    private ContractRulesHelper() {
    }
    
    /*
    STATIC METHODS
    */

    static ContractRulesHelper getInstance() {
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
