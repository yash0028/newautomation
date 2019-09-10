package rest_api_test.api.fallout;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.fallout.model.ContractStatus;
import rest_api_test.api.fallout.model.ContractType;
import rest_api_test.api.fallout.model.PageTransactionContract;
import rest_api_test.api.fallout.model.contract.ContractModel;
import rest_api_test.api.fallout.model.page.Pageable;

public interface IFalloutContractContollerInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IFalloutContractContollerInteract.class);
    
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
        return FalloutHelper.getInstance().queryContractModelByTransactionID(transactionId);
    }

    /**
     * Search for a contract by matching a specific ContractId
     * maps to POST /v1.0/contract-search/
     *
     * @param contractId the id to search by
     * @return List of TransactionContract objects built from the returned JSON
     */
    default PageTransactionContract falloutQueryTransactionContracts(String contractId) {
        return FalloutHelper.getInstance().queryTransactionContractByContractId(contractId);
    }

    /**
     * Search for contracts with a specific ContractStatus
     * maps to GET /v1.0/contract-summaries/{status}
     *
     * @param status   contract status to search by
     * @param pageable page configuration
     * @return List of TransactionContract objects built from the returned JSON
     */
    default PageTransactionContract falloutQueryTransactionContracts(ContractStatus status, Pageable pageable) {
        return FalloutHelper.getInstance().queryTransactionContractByStatus(status, pageable);
    }

    /**
     * Search for contracts with a specific ContractType
     * maps to GET /v1.0/contract-summaries/work-objects/{type}
     *
     * @param type     contract type to search by
     * @param pageable page configuration
     * @return List of TransactionContract objects built from the returned JSON
     */
    default PageTransactionContract falloutQueryTransactionContracts(ContractType type, Pageable pageable) {
        return FalloutHelper.getInstance().queryTransactionContractByType(type, pageable);
    }
    
    /*
    UTILITY CLASS
    */
}
