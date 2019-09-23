package rest_api_test.api.etma;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.ParamMap;

public interface IEtmaInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IEtmaInteract.class);

    String RESOURCE_MARKETS = "/v1.0/markets";
    String RESOURCE_CONTRACT_CLASSES_SEARCH = "/v1.0/contract-classes/search";
    String RESOURCE_CONTRACT_VALIDATION = "/v1.0/contract-validations";
    String RESOURCE_CONTRACT_VALIDATION_ALL = "/v1.0/contract-validations/validate-multiple";
    String RESOURCE_RETRO_REASON_CODE = "/v1.0/retro-reason-codes";

    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    default Response getAllMarkets() {
        return EtmaHelper.getInstance().doBasicGet(RESOURCE_MARKETS);
    }

    default Response getSpecialties(Object payload) {
        return EtmaHelper.getInstance().doBasicPost(RESOURCE_CONTRACT_CLASSES_SEARCH, payload);
    }

    default Response getValidContractClasses(Object payload) {
        return EtmaHelper.getInstance().doBasicPost(RESOURCE_CONTRACT_CLASSES_SEARCH, payload);
    }

    default Response validateContract(ParamMap params) {
        return EtmaHelper.getInstance().doParamGet(RESOURCE_CONTRACT_VALIDATION, params);
    }

    default Response validateAllContract(Object payload) {
        return EtmaHelper.getInstance().doBasicPost(RESOURCE_CONTRACT_VALIDATION_ALL, payload);
    }

    default Response getRetroReasonCode() {
        return EtmaHelper.getInstance().doBasicGet(RESOURCE_RETRO_REASON_CODE);
    }



    /*
    UTILITY CLASS
    */
}
