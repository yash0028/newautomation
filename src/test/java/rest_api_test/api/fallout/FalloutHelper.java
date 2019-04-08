package rest_api_test.api.fallout;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;
import rest_api_test.api.datastructure.gson.contractmodel.ContractModel;
import rest_api_test.api.datastructure.gson.fallout.WorkObjectCount;
import rest_api_test.api.datastructure.list.ListProductGroup;
import rest_api_test.api.datastructure.list.TransactionContracts;
import rest_api_test.api.datastructure.type.ContractStatus;
import rest_api_test.api.datastructure.type.ContractType;
import rest_api_test.util.IRestStep;

import static io.restassured.RestAssured.given;

public class FalloutHelper extends AbstractRestApi implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(FalloutHelper.class);

    private static final String ENDPOINT_DEV = "https://fallout-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "https://fallout-service-clm-test.ocp-ctc-dmz-nonprod.optum.com";

    //CONTRACT CONTROLLER
    private static final String RESOURCE_CONTRACT_DETAILS_BY_TRANSACTION_ID = "/v1.0/contract-details/";//{transaction id}
    private static final String RESOURCE_CONTRACT_SEARCH = "/v1.0/contract-search/";
    private static final String RESOURCE_CONTRACT_SUMMARIES_BY_STATUS = "/v1.0/contract-summaries/";//{status}
    private static final String RESOURCE_CONTRACT_SUMMARIES_BY_TYPE = "/v1.0/contract-summaries/work-objects/";//{type}

    //WORK OBJECT CONTROLLER
    private static final String RESOURCE_WORKOBJECTS_COMPLETE_TID = "/v1.0/workobjects/complete/";//{transaction id}
    private static final String RESOURCE_WORKOBJECTS_ITEMS_PRODUCTS_TID = "/v1.0/workobjects/items/products/";//{transaction id}
    private static final String RESOURCE_WORKOBJECTS_LOAD_CONTRACT_TID = "/v1.0/workobjects/load-contract/";//{transaction id}
    private static final String RESOURCE_WORKOBJECTS_OPEN_COUNT = "/v1.0/workobjects/open-count";
    private static final String RESOURCE_WORKOBJECTS_READY_TID = "/v1.0/workobjects/ready/";//{transaction id}
    private static final String RESOURCE_WORKOBJECTS_STATUS = "/v1.0/workobjects/";//{status}

    //WORK OBJECT ITEM CONTRACT MASTER CONTROLLER
    private static final String RESOURCE_WORKOBJECTS_ITEMS_CONTRACT_MASTER = "/v1.0/workobjects/items/contract-master";
    private static final String RESOURCE_WORKOBJECTS_ITEMS_READY = "/v1.0/workobjects/items/ready";
    private static final String RESOURCE_WORKOBJECTS_ITEMS_ID = "/v1.0/workobjects/items/";//{id}

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
    */

    /**
     * Search for a contract by matching a specific TransactionId
     * maps to GET /v1.0/contract-details/{transactionId}
     *
     * @param transactionId of the contract to lookup
     * @return ContractModel object built from the returned JSON
     */
    ContractModel queryContractModelByTransactionID(String transactionId) {
        RestAssured.useRelaxedHTTPSValidation();
        RequestSpecification request = given().baseUri(getEndpoint())
                .header("Content-Type", "application/json");
        Response response = request.get(RESOURCE_CONTRACT_DETAILS_BY_TRANSACTION_ID + transactionId);
        JsonElement jsonElement = parseJsonElementResponse(response);

        ContractModel model = gson.fromJson(jsonElement, ContractModel.class);
        model.setResponse(response);

        return model;
    }

    /**
     * Search for a contract by matching a specific ContractId
     * maps to POST /v1.0/contract-search/
     *
     * @param contractId the id to search by
     * @return List of TransactionContract objects built from the returned JSON
     */
    TransactionContracts queryTransactionContractByContractId(String contractId) {
        JsonObject payload = new JsonObject();
        payload.addProperty("contractId", contractId);

        RequestSpecification request = given().baseUri(getEndpoint())
                .header("Content-Type", "application/json")
                .body(payload);
        Response response = request.post(RESOURCE_CONTRACT_SEARCH);
        JsonElement jsonElement = parseJsonElementResponse(response);

        TransactionContracts contracts = gson.fromJson(jsonElement, TransactionContracts.class);
        contracts.setResponse(response);

        return contracts;
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
    TransactionContracts queryTransactionContractByStatus(int pageNum, int pageSize, boolean paged, boolean sorted, ContractStatus status) {
        RequestSpecification request = given().baseUri(getEndpoint())
                .header("Content-Type", "application/json");

        request.param("offset", 0);
        request.param("pageNumber", pageNum);
        request.param("pageSize", pageSize);
        request.param("paged", paged);
        request.param("sort.sorted", sorted);

        Response response = request.get(RESOURCE_CONTRACT_SUMMARIES_BY_STATUS + status.name());
        JsonElement jsonElement = parseJsonElementResponse(response);

        TransactionContracts contracts = gson.fromJson(jsonElement, TransactionContracts.class);
        contracts.setResponse(response);

        return contracts;
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
    TransactionContracts queryTransactionContractByType(int pageNum, int pageSize, boolean paged, boolean sorted, ContractType type) {
        RequestSpecification request = given().baseUri(getEndpoint())
                .header("Content-Type", "application/json");

        request.param("offset", 0);
        request.param("pageNumber", pageNum);
        request.param("pageSize", pageSize);
        request.param("paged", paged);
        request.param("sort.sorted", sorted);

        Response response = request.get(RESOURCE_CONTRACT_SUMMARIES_BY_TYPE + type.type);
        JsonElement jsonElement = parseJsonElementResponse(response);

        TransactionContracts contracts = gson.fromJson(jsonElement, TransactionContracts.class);
        contracts.setResponse(response);

        return contracts;
    }

    /**
     * Complete a Work Object by Transaction ID
     * maps to GET /v1.0/workobjects/complete/{transactionId}
     *
     * @param transactionId id to mark as complete
     * @return Response
     */
    Response completeTransaction(String transactionId) {
        RequestSpecification request = given().baseUri(getEndpoint());
        return request.get(RESOURCE_WORKOBJECTS_COMPLETE_TID + transactionId);
    }

    /**
     * Query for a list of Product Groups by Transaction ID
     * maps to GET /v1.0/workobjects/items/products/{transactionId}
     *
     * @param transactionId id to lookup
     * @return List of Product Groups and the Response
     */
    ListProductGroup queryProductGroupsByTransactionId(String transactionId) {
        RequestSpecification request = given().baseUri(getEndpoint());
        Response response = request.get(RESOURCE_WORKOBJECTS_ITEMS_PRODUCTS_TID + transactionId);

        JsonElement result = parseJsonElementResponse(response);
        ListProductGroup list = gson.fromJson(result, ListProductGroup.class);
        list.setResponse(response);

        return list;
    }

    /**
     * Rerun a work object with the given Transaction ID
     * maps to POST /v1.0/workobjects/load-contract/{transactionId}
     *
     * @param transactionId id to rerun
     * @return Response
     */
    Response rerunWorkObject(String transactionId) {
        RequestSpecification request = given().baseUri(getEndpoint());
        return request.post(RESOURCE_WORKOBJECTS_LOAD_CONTRACT_TID + transactionId);
    }

    /**
     * Count number of work objects with the open status
     * maps to GET /v1.0/workobjects/open-count
     *
     * @return count of workobjects and Response
     */
    WorkObjectCount queryWorkObjectCount() {
        RequestSpecification request = given().baseUri(getEndpoint());
        Response response = request.get(RESOURCE_WORKOBJECTS_OPEN_COUNT);

        JsonElement result = parseJsonElementResponse(response);
        WorkObjectCount count = gson.fromJson(result, WorkObjectCount.class);
        count.setResponse(response);

        return count;
    }
    
    /*
    HELPER METHODS
    */

    protected String getEndpoint() {
        return this.useDev ? ENDPOINT_DEV : ENDPOINT_TEST;
    }

    
    /*
    UTILITY CLASS
    */
}
