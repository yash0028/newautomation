package rest_api_test.api.contractmetadata;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.ParamMap;

public interface IContractMetadataInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IContractMetadataInteract.class);

    String RESOURCE_PROVIDER_CATEGORY = "/v1.0/exari/provider-categories/search";
    String RESOURCE_AFFILIATION_ENTITY = "/v1.0/exari/affiliation-types/search";
    String RESOURCE_LEGAL_LICENSE_ENTITY = "/v1.0/exari/legal-entities/search";
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    default Response searchProviderCategory(Object payload) {
        return ContractMetadataHelper.getInstance().doBasicPost(RESOURCE_PROVIDER_CATEGORY, payload);
    }

    default Response getLegalEntities(ParamMap<?> params) {
        return ContractMetadataHelper.getInstance().doParamGet(RESOURCE_LEGAL_LICENSE_ENTITY, params);
    }

    default Response searchAffiliationType(ParamMap<?> params) {
        return ContractMetadataHelper.getInstance().doParamGet(RESOURCE_AFFILIATION_ENTITY, params);
    }

    
    /*
    UTILITY CLASS
    */
}
