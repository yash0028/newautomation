package rest_api_test.api.contractmetadata;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.ParamMap;

import java.util.List;

public interface IContractMetadataInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IContractMetadataInteract.class);

    // exari api controller
    String RESOURCE_PROVIDER_CATEGORY = "/v1.0/exari/provider-categories/search";
    String RESOURCE_AFFILIATION_ENTITY = "/v1.0/exari/affiliation-types/search";
    String RESOURCE_LEGAL_LICENSE_ENTITY = "/v1.0/exari/legal-entities/search";

    // product group code controller
    String RESOURCE_PRODUCT_CODE_ID = "/v1.0/product_group_codes/{}";
    String RESOURCE_PRODUCT_CODE_ALL = "/v1.0/product_group_codes";

    // contract product description controller
    String RESOURCE_PRODUCT_DESCRIPTIONS_ID = "/v1.0/contract-product-descriptions/{}";
    String RESOURCE_PRODUCT_DESCRIPTIONS_ALL = "/v1.0/contract-product-descriptions/search";

    // pcp indicator lookup controller
    String RESOURCE_PCP_ALL = "/v1.0/pcp/all";
    String RESOURCE_PCP_INDICATOR = "/v1.0/pcp/lookup";

    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    default Response exariSearchProviderCategory(Object payload) {
        return ContractMetadataHelper.getInstance().doBasicPost(RESOURCE_PROVIDER_CATEGORY, payload);
    }

    default Response exariGetLegalEntities(ParamMap params) {
        return ContractMetadataHelper.getInstance().doParamGet(RESOURCE_LEGAL_LICENSE_ENTITY, params);
    }

    default Response exariSearchAffiliationType(ParamMap params) {
        return ContractMetadataHelper.getInstance().doParamGet(RESOURCE_AFFILIATION_ENTITY, params);
    }

    default Response pcpGetAll() {
        return ContractMetadataHelper.getInstance().doBasicGet(RESOURCE_PCP_ALL);
    }

    default Response pcpLookup(Object payload) {
        return ContractMetadataHelper.getInstance().doBasicPost(RESOURCE_PCP_INDICATOR, payload);
    }

    default Response productGroupCodeLookup(String id) {
        String r = RESOURCE_PRODUCT_CODE_ID.replace("{}", id);
        return ContractMetadataHelper.getInstance().doBasicGet(r);
    }

    default Response productGroupCodeLookupAll(ParamMap params) {
        return ContractMetadataHelper.getInstance().doParamGet(RESOURCE_PRODUCT_CODE_ALL, params);
    }

    default Response productGroupCodeLookupWithProductDescription(List<String> productDescription) {
        ParamMap params = new ParamMap();
        params.put("productDescriptions", productDescription);
        return ContractMetadataHelper.getInstance().doParamGet(RESOURCE_PRODUCT_CODE_ALL, params);
    }

    default Response productDescriptionLookup(String id) {
        String r = RESOURCE_PRODUCT_DESCRIPTIONS_ID.replace("{}", id);
        return ContractMetadataHelper.getInstance().doBasicGet(r);
    }

    default Response productDescriptionLookupAll(ParamMap params) {
        return ContractMetadataHelper.getInstance().doParamGet(RESOURCE_PRODUCT_DESCRIPTIONS_ALL, params);
    }


    /*
    UTILITY CLASS
    */
}
