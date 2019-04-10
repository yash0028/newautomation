package rest_api_test.api.fallout;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.datastructure.gson.fallout.WorkObjectCount;
import rest_api_test.api.datastructure.gson.fallout.page.Pageable;
import rest_api_test.api.datastructure.list.ListProductGroup;
import rest_api_test.api.datastructure.list.PageTransactionIds;
import rest_api_test.api.datastructure.type.WorkObjectStatus;

public interface IFalloutWorkObjectContollerInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IFalloutWorkObjectContollerInteract.class);
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    /**
     * Complete a Work Object by Transaction ID
     * maps to GET /v1.0/workobjects/complete/{transactionId}
     *
     * @param transactionId id to mark as complete
     * @return Response
     */
    default Response falloutCompleteTransaction(String transactionId) {
        return FalloutHelper.getInstance().completeTransaction(transactionId);
    }

    /**
     * Query for a list of Product Groups by Transaction ID
     * maps to GET /v1.0/workobjects/items/products/{transactionId}
     *
     * @param transactionId id to lookup
     * @return List of Product Groups and the Response
     */
    default ListProductGroup falloutQueryProductGroups(String transactionId) {
        return FalloutHelper.getInstance().queryProductGroupsByTransactionId(transactionId);
    }

    /**
     * Rerun a work object with the given Transaction ID
     * maps to POST /v1.0/workobjects/load-contract/{transactionId}
     *
     * @param transactionId id to rerun
     * @return Response
     */
    default Response falloutRerunWorkObject(String transactionId) {
        return FalloutHelper.getInstance().rerunWorkObject(transactionId);
    }

    /**
     * Count number of work objects with the open status
     * maps to GET /v1.0/workobjects/open-count
     *
     * @return count of workobjects and Response
     */
    default WorkObjectCount falloutQueryWorkObjectCount() {
        return FalloutHelper.getInstance().queryWorkObjectCount();
    }

    /**
     * Ready a Work Object by Transaction ID
     * maps to GET /v1.0/workobjects/ready/{transactionId}
     *
     * @param transactionId id to mark as ready
     * @return Response
     */
    default Response falloutReadyTransaction(String transactionId) {
        return FalloutHelper.getInstance().readyTransaction(transactionId);
    }

    /**
     * Query for list of Transaction Id based on Work Object Status
     * maps to GET /v1.0/workobjects/{status}
     *
     * @param status   status to check
     * @param pageable page config
     * @return Page that contains the List of Transaction Ids
     */
    default PageTransactionIds falloutQueryWorkObjects(WorkObjectStatus status, Pageable pageable) {
        return FalloutHelper.getInstance().queryWorkObjects(status, pageable);
    }
    
    /*
    UTILITY CLASS
    */
}
