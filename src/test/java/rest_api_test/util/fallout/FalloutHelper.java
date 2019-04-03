package rest_api_test.util.fallout;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.AbstractRestApi;
import rest_api_test.util.IRestStep;
import rest_api_test.util.datastructure.gson.contractmodel.ContractModel;
import rest_api_test.util.datastructure.list.TransactionContracts;
import rest_api_test.util.datastructure.type.ContractStatus;
import rest_api_test.util.datastructure.type.ContractType;

import static io.restassured.RestAssured.given;

public class FalloutHelper extends AbstractRestApi implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(FalloutHelper.class);

    private static final String ENDPOINT_DEV = "https://fallout-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "https://fallout-service-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_CONTRACT_DETAILS_BY_TRANSACTION_ID = "/v1.0/contract-details/"; // add tid to end
    private static final String RESOURCE_CONTRACT_SEARCH = "/v1.0/contract-search/";
    private static final String RESOURCE_CONTRACT_SUMMARIES_BY_STATUS = "/v1.0/contract-summaries/";// add status to end
    private static final String RESOURCE_CONTRACT_SUMMARIES_BY_TYPE = "/v1.0/contract-summaries/work-objects/";//add type to end

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
