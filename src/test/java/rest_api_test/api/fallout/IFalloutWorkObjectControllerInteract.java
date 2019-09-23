package rest_api_test.api.fallout;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.PayloadMap;
import rest_api_test.api.fallout.model.*;
import rest_api_test.api.fallout.model.page.Pageable;

public interface IFalloutWorkObjectControllerInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IFalloutWorkObjectControllerInteract.class);

    //WORK OBJECT CONTROLLER
    String RESOURCE_WORKOBJECTS_COMPLETE_TID = "/v1.0/workobjects/complete/{}";//{transaction id}
    String RESOURCE_WORKOBJECTS_ITEMS_PRODUCTS_TID = "/v1.0/workobjects/items/products/{}";//{transaction id}
    String RESOURCE_WORKOBJECTS_LOAD_CONTRACT_TID = "/v1.0/workobjects/load-contract/{}";//{transaction id}
    String RESOURCE_WORKOBJECTS_OPEN_COUNT = "/v1.0/workobjects/open-count";
    String RESOURCE_WORKOBJECTS_READY_TID = "/v1.0/workobjects/ready/{}";//{transaction id}
    String RESOURCE_WORKOBJECTS_STATUS = "/v1.0/workobjects/{}";//{status}

    //WORK OBJECT ITEM CONTRACT MASTER CONTROLLER
    String RESOURCE_WORKOBJECTS_ITEMS_CONTRACT_MASTER = "/v1.0/workobjects/items/contract-master";
    String RESOURCE_WORKOBJECTS_ITEMS_READY = "/v1.0/workobjects/items/ready";
    String RESOURCE_WORKOBJECTS_ITEMS_ID = "/v1.0/workobjects/items/{}";//{id}
    
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
        String r = RESOURCE_WORKOBJECTS_COMPLETE_TID.replace("{}", transactionId);
        return FalloutHelper.getInstance().doBasicGet(transactionId);
    }

    /**
     * Query for a list of Product Groups by Transaction ID
     * maps to GET /v1.0/workobjects/items/products/{transactionId}
     *
     * @param transactionId id to lookup
     * @return List of Product Groups and the Response
     */
    default ListProductGroup falloutQueryProductGroups(String transactionId) {
        String r = RESOURCE_WORKOBJECTS_ITEMS_PRODUCTS_TID.replace("{}", transactionId);
        Response response = FalloutHelper.getInstance().doBasicGet(r);
        return FalloutHelper.getInstance().queryProductGroupsByTransactionId(response);
    }

    /**
     * Rerun a work object with the given Transaction ID
     * maps to POST /v1.0/workobjects/load-contract/{transactionId}
     *
     * @param transactionId id to rerun
     * @return Response
     */
    default Response falloutRerunWorkObject(String transactionId) {
        String r = RESOURCE_WORKOBJECTS_LOAD_CONTRACT_TID.replace("{}", transactionId);
        return FalloutHelper.getInstance().doBasicPost(r, null);
    }

    /**
     * Count number of work objects with the open status
     * maps to GET /v1.0/workobjects/open-count
     *
     * @return count of workobjects and Response
     */
    default WorkObjectCount falloutQueryWorkObjectCount() {
        Response response = FalloutHelper.getInstance().doBasicGet(RESOURCE_WORKOBJECTS_OPEN_COUNT);
        return FalloutHelper.getInstance().queryWorkObjectCount(response);
    }

    /**
     * Ready a Work Object by Transaction ID
     * maps to GET /v1.0/workobjects/ready/{transactionId}
     *
     * @param transactionId id to mark as ready
     * @return Response
     */
    default Response falloutReadyTransaction(String transactionId) {
        String r = RESOURCE_WORKOBJECTS_READY_TID.replace("{}", transactionId);
        return FalloutHelper.getInstance().doBasicGet(r);
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
        String r = RESOURCE_WORKOBJECTS_STATUS.replace("{}", status.name());
        Response response = FalloutHelper.getInstance().doParamGet(r, pageable.getParameters());
        return FalloutHelper.getInstance().queryWorkObjects(response);
    }

    /**
     * Query for list of Transaction Id based on Work Object Status
     * maps to GET /v1.0/workobjects/{status}
     *
     * @param status status to check
     * @return Page that contains the List of Transaction Ids
     */
    default PageTransactionIds falloutQueryWorkObjects(String status) {
        String r = RESOURCE_WORKOBJECTS_STATUS.replace("{}", status);
        Response response = FalloutHelper.getInstance().doBasicGet(r);
        return FalloutHelper.getInstance().queryWorkObjects(response);
    }


    /**
     * Query for Work Object Item based on id
     * maps to GET /v1.0/workobjects/items/
     *
     * @param id id on Work Object Item
     * @return Work Object Item with given id
     */
    default WorkObjectItem falloutQueryWorkObjectItem(String id) {
        String r = RESOURCE_WORKOBJECTS_ITEMS_ID.replace("{}", id);
        Response response = FalloutHelper.getInstance().doBasicGet(r);
        return FalloutHelper.getInstance().queryWorkObjectItem(response);
    }

    /**
     * Creates a Contract Master
     * maps to POST /v1.0/workobjects/items/contract-masters
     *
     * @param contractMaster contract master creation details
     * @return Response
     */
    default Response falloutCreateWorkObjectItemContractMaster(ContractMaster contractMaster) {
        return FalloutHelper.getInstance().doBasicPost(RESOURCE_WORKOBJECTS_ITEMS_CONTRACT_MASTER, contractMaster);
    }

    default Response falloutUpdateWorkObjectItemContractMaster(Object payload) {
        return FalloutHelper.getInstance().doBasicPut(RESOURCE_WORKOBJECTS_ITEMS_CONTRACT_MASTER, payload);
    }

    /**
     * Update Work Object Item to be ready
     * maps to PUT /v1.0/workobjects/items/ready
     *
     * @param id    id of Work Object Item to mark as Ready
     * @param ready boolean to mark as ready or not
     * @return Response
     */
    default Response falloutUpdateWorkObjectItemReady(String id, boolean ready) {
        PayloadMap payloadMap = new PayloadMap();
        payloadMap.put("id", id);
        payloadMap.put("ready", ready);
        return FalloutHelper.getInstance().doBasicPost(RESOURCE_WORKOBJECTS_ITEMS_READY, payloadMap);
    }

    /**
     * Update Work Object Item to be ready
     * maps to PUT /v1.0/workobjects/items/ready
     *
     * @return Response
     */
    default Response falloutUpdateWorkObjectItemReady(PayloadMap payloadMap) {
        return FalloutHelper.getInstance().doBasicPost(RESOURCE_WORKOBJECTS_ITEMS_READY, payloadMap);
    }
    
    /*
    UTILITY CLASS
    */
}
