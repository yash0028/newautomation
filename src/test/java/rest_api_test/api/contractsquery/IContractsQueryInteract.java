package rest_api_test.api.contractsquery;

import com.google.gson.JsonElement;
import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.ParamMap;
import rest_api_test.api.contractsquery.model.QueryResponse;

public interface IContractsQueryInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IContractsQueryInteract.class);

    String RESOURCE_ECM = "/v1.0/exari/ecm";
    String RESOURCE_FACILITY_CONTRACTS = "/v1.0/exari/facilitycontracts";
    String RESOURCE_CONTRACT_JSON = "/v1.0/exari/json";
    String RESOURCE_CONTRACT_SEARCH = "/v1.0/exari/contracts/search";
    String RESOURCE_MASS_ACTION = "/v1.0/exari/mass-action";
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    /**
     * @param contractId the contract id
     * @return the Response from the Contracts Query api
     */
    default Response getExariContractModel(String contractId) {
        ParamMap params = new ParamMap();
        params.put("contractId", contractId);
        return ContractsQueryHelper.getInstance().doParamGet(RESOURCE_ECM, params);
    }

    /**
     * @param contractId the contract id
     * @return the Response from the Contracts Query api
     */
    default Response getFacilityContractData(String contractId) {
        ParamMap params = new ParamMap();
        params.put("contractId", contractId);
        return ContractsQueryHelper.getInstance().doParamGet(RESOURCE_FACILITY_CONTRACTS, params);
    }

    /**
     * @param contractId the contract id
     * @return the Response from the Contracts Query api
     */
    default Response getExariContractJson(String contractId) {
        ParamMap params = new ParamMap();
        params.put("contractId", contractId);
        return ContractsQueryHelper.getInstance().doParamGet(RESOURCE_CONTRACT_JSON, params);
    }

    /**
     * @param massActionProjectId the mass action project id
     * @return the Query Response from the Contracts Query api
     */
    default QueryResponse getExariMassAction(String massActionProjectId) {
        ParamMap params = new ParamMap();
        params.put("massActionProjectId", massActionProjectId);
        Response response = ContractsQueryHelper.getInstance().doParamGet(RESOURCE_MASS_ACTION, params);
        return ContractsQueryHelper.getInstance().getExariMassAction(response);
    }

    /**
     * @param searchFilters search by this filter
     * @return the Response from the Contracts Query api
     */
    default Response searchContractsWithFilter(JsonElement searchFilters) {
        return ContractsQueryHelper.getInstance().doBasicPost(RESOURCE_CONTRACT_SEARCH, searchFilters);
    }

    /**
     * @return the Response from the Contracts Query api
     */
    default Response searchContractsById(String contractId) {
        ParamMap params = new ParamMap();
        params.put("contractId", contractId);
        return ContractsQueryHelper.getInstance().doParamGet(RESOURCE_CONTRACT_SEARCH, params);
    }
    
    /*
    UTILITY CLASS
    */
}
