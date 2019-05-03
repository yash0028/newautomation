package rest_api_test.api.fallout;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.datastructure.gson.fallout.ContractMaster;
import rest_api_test.api.datastructure.gson.fallout.WorkObjectItem;

public interface IFalloutWorkObjectItemContractMasterContollerInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IFalloutWorkObjectItemContractMasterContollerInteract.class);
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    /**
     * Query for Work Object Item based on id
     * maps to GET /v1.0/workobjects/items/
     *
     * @param id id on Work Object Item
     * @return Work Object Item with given id
     */
    default WorkObjectItem falloutQueryWorkObjectItem(String id) {
        return FalloutHelper.getInstance().queryWorkObjectItem(id);
    }

    /**
     * Creates a Contract Master
     * maps to POST /v1.0/workobjects/items/contract-masters
     *
     * @param contractMaster contract master creation details
     * @return Response
     */
    default Response falloutCreateWorkObjectItemContractMaster(ContractMaster contractMaster) {
        return FalloutHelper.getInstance().createWorkObjectItemContractMaster(contractMaster);
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
        return FalloutHelper.getInstance().updateWorkObjectItemReady(id, ready);
    }
    
    /*
    UTILITY CLASS
    */
}
