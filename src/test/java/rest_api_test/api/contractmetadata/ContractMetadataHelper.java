package rest_api_test.api.contractmetadata;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;

class ContractMetadataHelper extends AbstractRestApi {
    private static final Logger log = LoggerFactory.getLogger(ContractMetadataHelper.class);

    private static final String ENDPOINT_DEV = "http://contract-metadata-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "http://contract-metadata-api-clm-test.ocp-ctc-dmz-nonprod.optum.com";

    private static ContractMetadataHelper INSTANCE = new ContractMetadataHelper();

    /*
    CONSTRUCTOR
    */

    private ContractMetadataHelper() {
    }
    
    /*
    STATIC METHODS
    */

    static ContractMetadataHelper getInstance() {
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
