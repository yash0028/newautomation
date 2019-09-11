package rest_api_test.api.contractconfig;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.PayloadMap;

/**
 * This is an example of a Rest Api interact interface
 */
public interface IContractConfigInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IContractConfigInteract.class);

    String RESOURCE_PROVIDER_STATUS = "/v1.0/contract-config/products/provider-status";
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    /**
     * Request provider's current status the Abcd API
     * maps to POST /v1.0/contract-config/products/provider-status
     *
     * @param payload the json element containing a contractID, mpin, npi, productGroup, or tin
     * @return the response from contract config api
     */
    default Response checkProviderStatus(PayloadMap<?> payload) {
        return ContractConfigHelper.getInstance().doBasicPost(RESOURCE_PROVIDER_STATUS, payload);
    }
    
    /*
    UTILITY CLASS
    */
}
