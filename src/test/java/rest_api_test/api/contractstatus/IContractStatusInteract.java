package rest_api_test.api.contractstatus;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;

public interface IContractStatusInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IContractStatusInteract.class);

    String RESOURCE_CONTRACT_STATUS_WITH_CONTRACT_ID = "/v1.0/contract-status/{contractId}";
    String RESOURCE_CONTRACT_STATUS_WITH_CONTRACT_ID_EXARI_NODE = "/v1.0/contract-status/{contractId}/{exariNodeId}";
    String RESOURCE_CONTRACT_STATUS_WITH_CONTRACT_ID_EXARI_NODE_TIMESTAMP = "/v1.0/contract-status/{contractId}/{exariNodeId}/{timestamp}";

    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    default Response getContractStatus(String contractId) {
        log.info("get status for {}", contractId);

        String r = RESOURCE_CONTRACT_STATUS_WITH_CONTRACT_ID.replace("{contractId}", contractId);
        return ContractStatusHelper.getInstance().doBasicGet(r);
    }

    default Response getContractStatus(String contractId, String exariNodeId) {
        log.info("get status for {} {}", contractId, exariNodeId);
        String r = RESOURCE_CONTRACT_STATUS_WITH_CONTRACT_ID_EXARI_NODE.replace("{contractId}", contractId).replace("{exariNodeId}", exariNodeId);
        return ContractStatusHelper.getInstance().doBasicGet(r);
    }

    default Response getContractStatus(String contractId, String exariNodeId, String timestamp) {
        log.info("get status for {} {} {}", contractId, exariNodeId, timestamp);
        String r = RESOURCE_CONTRACT_STATUS_WITH_CONTRACT_ID_EXARI_NODE.replace("{contractId}", contractId).replace("{exariNodeId}", exariNodeId).replace("{timestamp}", timestamp);
        return ContractStatusHelper.getInstance().doBasicGet(r);
    }

    /*
    UTILITY CLASS
    */
}
