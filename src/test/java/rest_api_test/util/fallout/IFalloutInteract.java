package rest_api_test.util.fallout;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.datastructure.gson.contractmodel.ContractModel;
import rest_api_test.util.datastructure.gson.transaction.TransactionContract;
import rest_api_test.util.datastructure.list.TransactionContracts;
import rest_api_test.util.datastructure.type.ContractStatus;
import rest_api_test.util.datastructure.type.ContractType;

import java.util.Optional;

public interface IFalloutInteract {
    Logger log = LoggerFactory.getLogger(IFalloutInteract.class);
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    default ContractModel falloutQueryContractModel(String transactionId) {
        return FalloutHelper.getInstance().queryContractModelByTransactionID(transactionId);
    }

    default TransactionContracts falloutQueryTransactionContracts(String contractId) {
        return FalloutHelper.getInstance().queryTransactionContractByContractId(contractId);
    }

    default TransactionContracts falloutQueryTransactionContracts(ContractStatus status, int pageNum, int pageSize, boolean paged, boolean sorted) {
        return FalloutHelper.getInstance().queryTransactionContractByStatus(pageNum, pageSize, paged, sorted, status);
    }

    default TransactionContracts falloutQueryTransactionContracts(ContractType type, int pageNum, int pageSize, boolean paged, boolean sorted) {
        return FalloutHelper.getInstance().queryTransactionContractByType(pageNum, pageSize, paged, sorted, type);
    }

    default Optional<TransactionContract> falloutGetFirstTransactionContract(String contractId) {
        return Optional.ofNullable(falloutQueryTransactionContracts(contractId).get(0));
    }

    default Optional<TransactionContract> falloutGetFirstTransactionContract(ContractStatus status) {
        return Optional.ofNullable(this.falloutQueryTransactionContracts(status, 0, 1, false, true).get(0));
    }

    default Optional<TransactionContract> falloutGetFirstTransactionContract(ContractType type) {
        return Optional.ofNullable(this.falloutQueryTransactionContracts(type, 0, 1, false, true).get(0));
    }
    
    /*
    UTILITY CLASS
    */
}
