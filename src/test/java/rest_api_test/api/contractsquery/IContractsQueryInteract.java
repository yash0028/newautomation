package rest_api_test.api.contractsquery;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.datastructure.gson.contractsquery.QueryResponse;

public interface IContractsQueryInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IContractsQueryInteract.class);
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    default QueryResponse getExariMassAction(String massActionProjectId) {
        return ContractsQueryHelper.getInstance().getExariMassAction(massActionProjectId);
    }

    
    /*
    UTILITY CLASS
    */
}
