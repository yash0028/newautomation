package rest_api_test.api.productnetwork;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;

class ProductNetworkHelper extends AbstractRestApi {
    private static final Logger log = LoggerFactory.getLogger(ProductNetworkHelper.class);

    private static final String ENDPOINT_DEV = "http://product-network-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "http://product-network-clm-test.ocp-ctc-dmz-nonprod.optum.com";

    private static ProductNetworkHelper INSTANCE = new ProductNetworkHelper();

    /*
    CONSTRUCTOR
    */

    private ProductNetworkHelper() {
    }
    
    /*
    STATIC METHODS
    */

    static ProductNetworkHelper getInstance() {
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
