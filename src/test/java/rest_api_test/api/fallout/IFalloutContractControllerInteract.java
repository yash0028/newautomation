package rest_api_test.api.fallout;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.PayloadMap;
import rest_api_test.api.fallout.model.ContractStatus;
import rest_api_test.api.fallout.model.ContractType;
import rest_api_test.api.fallout.model.PageTransactionContract;
import rest_api_test.api.fallout.model.contract.ContractModel;

public interface IFalloutContractControllerInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IFalloutContractControllerInteract.class);

    String RESOURCE_CONTRACT_DETAILS_BY_TRANSACTION_ID = "/v1.0/contract-details/{}";//{transaction id}
    String RESOURCE_CONTRACT_SEARCH = "/v1.0/contract-search";
    String RESOURCE_CONTRACT_SUMMARIES_BY_STATUS = "/v1.0/contract-summaries/{}";//{status}
    String RESOURCE_CONTRACT_SUMMARIES_BY_TYPE = "/v1.0/contract-summaries/work-objects/{}";//{type}
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    /**
     * Search for a contract by matching a specific TransactionId
     * maps to GET /v1.0/contract-details/{transactionId}
     *
     * @param transactionId of the contract to lookup
     * @return ContractModel object built from the returned JSON
     */
    default ContractModel falloutQueryContractModel(String transactionId) {
        String r = RESOURCE_CONTRACT_DETAILS_BY_TRANSACTION_ID.replace("{}", transactionId);
        Response response = FalloutHelper.getInstance().doBasicGet(r);
        return FalloutHelper.getInstance().queryContractModelByTransactionID(response);
    }

    /**
     * Search for a contract by matching a specific ContractId
     * maps to POST /v1.0/contract-search/
     *
     * @param contractId the id to search by
     * @return List of TransactionContract objects built from the returned JSON
     */
    default PageTransactionContract falloutQueryTransactionContracts(String contractId) {
        PayloadMap payloadMap = new PayloadMap("contractId", contractId);
        Response response = FalloutHelper.getInstance().doBasicPost(RESOURCE_CONTRACT_SEARCH, payloadMap);
        return FalloutHelper.getInstance().queryTransactionContractByContractId(response);
    }

    /**
     * Search for contracts with a specific ContractStatus
     * maps to GET /v1.0/contract-summaries/{status}
     *
     * @param status   contract status to search by
     * @return List of TransactionContract objects built from the returned JSON
     */
    default PageTransactionContract falloutQueryTransactionContracts(ContractStatus status) {
        String r = RESOURCE_CONTRACT_SUMMARIES_BY_STATUS.replace("{}", status.name());
        Response response = FalloutHelper.getInstance().doBasicGet(r);
        return FalloutHelper.getInstance().queryTransactionContractByStatus(response);
    }

    /**
     * Search for contracts with a specific ContractType
     * maps to GET /v1.0/contract-summaries/work-objects/{type}
     *
     * @param type     contract type to search by
     * @return List of TransactionContract objects built from the returned JSON
     */
    default PageTransactionContract falloutQueryTransactionContracts(ContractType type) {
        String r = RESOURCE_CONTRACT_SUMMARIES_BY_TYPE.replace("{}", type.type);
        Response response = FalloutHelper.getInstance().doBasicGet(r);
        log.info(response.asString().trim());
        return FalloutHelper.getInstance().queryTransactionContractByType(response);
    }
    
    /*
    UTILITY CLASS
    */
}
