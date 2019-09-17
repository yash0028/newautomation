package rest_api_test.api.contractstatus;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.ParamMap;

public interface IContractStatusInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IContractStatusInteract.class);

    String RESOURCE_CONTRACT_STATUS_WITH_CONTRACT_ID = "/v1.0/contract-status/{}";
    String RESOURCE_CONTRACT_STATUS_WITH_CONTRACT_ID_AND_EXARI_NODE = "/v1.0/contract-status/{}/{}";

    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    default Response getContractStatus(String contractId) {
        String r = RESOURCE_CONTRACT_STATUS_WITH_CONTRACT_ID.replace("{}", contractId);
        ParamMap param = new ParamMap("sort", "timestamp,desc");
        return ContractStatusHelper.getInstance().doParamGet(r, param);
    }

    default Response getContractStatus(String contractId, String exariNodeId) {
        String r = RESOURCE_CONTRACT_STATUS_WITH_CONTRACT_ID.replace("{}", contractId).replace("{}", exariNodeId);
        ParamMap param = new ParamMap("sort", "timestamp,desc");
        return ContractStatusHelper.getInstance().doParamGet(r, param);
    }

    /*
    UTILITY CLASS
    */
}
