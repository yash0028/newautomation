package rest_api_test.api.contractsquery;

import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.ParamMap;
import rest_api_test.api.contractsquery.model.QueryResponse;

public interface IContractsQueryInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IContractsQueryInteract.class);

    String RESOURCE_ECM = "/v1.0/exari/ecm";
    String RESOURCE_FACILITY = "/v1.0/exari/facilitycontracts";
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
     * @param massActionProjectId the mass action project id
     * @return the Query Response from the Contracts Query api
     */
    default QueryResponse getExariMassAction(String massActionProjectId) {
        ParamMap params = new ParamMap();
        params.put("massActionProjectId", massActionProjectId);
        Response response = ContractsQueryHelper.getInstance().doParamGet(RESOURCE_MASS_ACTION, params);
        return ContractsQueryHelper.getInstance().getExariMassAction(response);
    }

    
    /*
    UTILITY CLASS
    */
}
