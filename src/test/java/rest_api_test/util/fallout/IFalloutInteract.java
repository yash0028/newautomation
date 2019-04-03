package rest_api_test.util.fallout;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.AbstractRestApi;
import rest_api_test.util.datastructure.gson.contractmodel.ContractModel;
import rest_api_test.util.datastructure.gson.transaction.TransactionContract;
import rest_api_test.util.datastructure.list.TransactionContracts;
import rest_api_test.util.datastructure.type.ContractStatus;
import rest_api_test.util.datastructure.type.ContractType;

import java.util.Optional;

public interface IFalloutInteract extends AbstractRestApi.IRestApi {
    Logger log = LoggerFactory.getLogger(IFalloutInteract.class);
    
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
    default TransactionContracts falloutQueryTransactionContracts(String contractId) {
        return FalloutHelper.getInstance().queryTransactionContractByContractId(contractId);
    }

    /**
     * Search for contracts with a specific ContractStatus
     * maps to GET /v1.0/contract-summaries/{status}
     *
     * @param pageNum  the page index to get
     * @param pageSize the size of the page to get
     * @param paged    search using pages
     * @param sorted   return sorted list
     * @param status   contract status to search by
     * @return List of TransactionContract objects built from the returned JSON
     */
    default TransactionContracts falloutQueryTransactionContracts(ContractStatus status, int pageNum, int pageSize, boolean paged, boolean sorted) {
        return FalloutHelper.getInstance().queryTransactionContractByStatus(pageNum, pageSize, paged, sorted, status);
    }

    /**
     * Search for contracts with a specific ContractType
     * maps to GET /v1.0/contract-summaries/work-objects/{type}
     *
     * @param pageNum  the page index to get
     * @param pageSize the size of the page to get
     * @param paged    search using pages
     * @param sorted   return sorted list
     * @param type     contract type to search by
     * @return List of TransactionContract objects built from the returned JSON
     */
    default TransactionContracts falloutQueryTransactionContracts(ContractType type, int pageNum, int pageSize, boolean paged, boolean sorted) {
        return FalloutHelper.getInstance().queryTransactionContractByType(pageNum, pageSize, paged, sorted, type);
    }

    /**
     * Search for the first contract with the given contract id
     *
     * @param contractId id to search by
     * @return Optional containing the TransactionContract
     */
    default Optional<TransactionContract> falloutGetFirstTransactionContract(String contractId) {
        return Optional.ofNullable(falloutQueryTransactionContracts(contractId).get(0));
    }

    /**
     * Search for the first contract with the given contract status
     *
     * @param status contract status to search by
     * @return Optional containing the TransactionContract
     */
    default Optional<TransactionContract> falloutGetFirstTransactionContract(ContractStatus status) {
        return Optional.ofNullable(this.falloutQueryTransactionContracts(status, 0, 1, false, true).get(0));
    }

    /**
     * Search for the first contract with the given contract type
     *
     * @param type contract type to search by
     * @return Optional containing the TransactionContract
     */
    default Optional<TransactionContract> falloutGetFirstTransactionContract(ContractType type) {
        return Optional.ofNullable(this.falloutQueryTransactionContracts(type, 0, 1, false, true).get(0));
    }
    
    /*
    UTILITY CLASS
    */
}
