package rest_api_test.util.fallout;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.datastructure.ContractStatus;
import rest_api_test.util.datastructure.ContractType;

class FalloutHelper {
    private static final Logger log = LoggerFactory.getLogger(FalloutHelper.class);
    private static final String ENDPOINT = "https://fallout-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_CONTRACT_DETAILS = "/v1.0/contract-details/"; // add tid to end
    private static final String RESOURCE_CONTRACT_SUMMARIES = "/v1.0/contract-summaries/work-objects";
    private static FalloutHelper INSTANCE = new FalloutHelper();

    /*
    CONSTRUCTOR
    */

    private FalloutHelper() {
    }
    
    /*
    STATIC METHODS
    */

    static FalloutHelper getInstance() {
        return INSTANCE;
    }
    
    /*
    CLASS METHODS
    */

    String queryContractModel(String transactionId) {

        //todo

        return transactionId;
    }

    String queryTransactionDetails(String contractId) {

        //todo

        return contractId;
    }

    String queryTransactionContractByStatus(int pageNum, int pageSize, boolean paged, boolean sorted, ContractStatus type) {

        //todo

        return null;
    }

    String queryTransactionContractByType(int pageNum, int pageSize, boolean paged, boolean sorted, ContractType type) {

        //todo

        return null;
    }


    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
