package rest_api_test.api.fallout;

import com.google.gson.JsonElement;
import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;
import rest_api_test.api.fallout.model.*;
import rest_api_test.api.fallout.model.contract.ContractModel;
import rest_api_test.util.IRestStep;

class FalloutHelper extends AbstractRestApi implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(FalloutHelper.class);

    private static final String ENDPOINT_DEV = "https://fallout-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "https://fallout-service-clm-test.ocp-ctc-dmz-nonprod.optum.com";

    private static FalloutHelper INSTANCE = new FalloutHelper();

    /*
    CONSTRUCTOR
    */

    private FalloutHelper() {
        super();
    }
    
    /*
    STATIC METHODS
    */

    public static FalloutHelper getInstance() {
        return INSTANCE;
    }
    
    /*
    CLASS METHODS
    CONTRACT CONTROLLER
    */

    /**
     * Search for a contract by matching a specific TransactionId
     * maps to GET /v1.0/contract-details/{transactionId}
     *
     * @param response of the contract to lookup
     * @return ContractModel object built from the returned JSON
     */
    public ContractModel queryContractModelByTransactionID(Response response) {
        JsonElement jsonElement = parseJsonElementResponse(response);

        ContractModel model = gson.fromJson(jsonElement, ContractModel.class);
        model.setResponse(response);

        return model;
    }

    /**
     * Search for a contract by matching a specific ContractId
     * maps to POST /v1.0/contract-search/
     *
     * @param response the id to search by
     * @return List of TransactionContract objects built from the returned JSON
     */
    public PageTransactionContract queryTransactionContractByContractId(Response response) {
        JsonElement jsonElement = parseJsonElementResponse(response);

        PageTransactionContract contracts = gson.fromJson(jsonElement, PageTransactionContract.class);
        contracts.setResponse(response);

        return contracts;
    }

    /**
     * Search for contracts with a specific ContractStatus
     * maps to GET /v1.0/contract-summaries/{status}
     *
     * @param response   contract status to search by
     * @return List of TransactionContract objects built from the returned JSON
     */
    public PageTransactionContract queryTransactionContractByStatus(Response response) {
        JsonElement jsonElement = parseJsonElementResponse(response);

        PageTransactionContract contracts = gson.fromJson(jsonElement, PageTransactionContract.class);
        contracts.setResponse(response);

        return contracts;
    }

    /**
     * Search for contracts with a specific ContractType
     * maps to GET /v1.0/contract-summaries/work-objects/{type}
     *
     * @param response     contract type to search by
     * @return List of TransactionContract objects built from the returned JSON
     */
    public PageTransactionContract queryTransactionContractByType(Response response) {
        JsonElement jsonElement = parseJsonElementResponse(response);

        PageTransactionContract contracts = gson.fromJson(jsonElement, PageTransactionContract.class);
        contracts.setResponse(response);

        return contracts;
    }

    /*
    CLASS METHODS
    WORK OBJECT CONTROLLER
     */


    /**
     * Query for a list of Product Groups by Transaction ID
     * maps to GET /v1.0/workobjects/items/products/{transactionId}
     *
     * @param transactionId id to lookup
     * @return List of Product Groups and the Response
     */
    public ListProductGroup queryProductGroupsByTransactionId(Response response) {
        JsonElement result = parseJsonElementResponse(response);
        ListProductGroup list = gson.fromJson(result, ListProductGroup.class);
        list.setResponse(response);

        return list;
    }

    /**
     * Count number of work objects with the open status
     * maps to GET /v1.0/workobjects/open-count
     *
     * @return count of workobjects and Response
     */
    public WorkObjectCount queryWorkObjectCount(Response response) {
        JsonElement result = parseJsonElementResponse(response);
        WorkObjectCount count = gson.fromJson(result, WorkObjectCount.class);
        count.setResponse(response);

        return count;
    }


    /**
     * Query for list of Transaction Id based on Work Object Status
     * maps to GET /v1.0/workobjects/{status}
     *
     * @param status   status to check
     * @param pageable page config
     * @return Page that contains the List of Transaction Ids
     */
    public PageTransactionIds queryWorkObjects(Response response) {
        JsonElement jsonElement = parseJsonElementResponse(response);

        PageTransactionIds pages = gson.fromJson(jsonElement, PageTransactionIds.class);
        pages.setResponse(response);
        return pages;
    }

    /*
    CLASS METHODS
    WORK OBJECT ITEM CONTRACT MASTER CONTROLLER
     */

    /**
     * Query for Work Object Item based on id
     * maps to GET /v1.0/workobjects/items/
     *
     * @param id id on Work Object Item
     * @return Work Object Item with given id
     */
    public WorkObjectItem queryWorkObjectItem(Response response) {
        JsonElement jsonElement = parseJsonElementResponse(response);

        WorkObjectItem item = gson.fromJson(jsonElement, WorkObjectItem.class);
        item.setResponse(response);
        return item;
    }
    
    /*
    HELPER METHODS
    */

    @Override
    protected String getEndpoint() {
        switch (env) {
            case stage:
            case test:
                return ENDPOINT_TEST;
            case dev:
            default:
                return ENDPOINT_DEV;
        }
    }

    
    /*
    UTILITY CLASS
    */
}
