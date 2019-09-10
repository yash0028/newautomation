package rest_api_test.api.contractsquery;

import com.google.gson.JsonElement;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;
import rest_api_test.api.datastructure.gson.contractsquery.QueryResponse;
import rest_api_test.util.IRestStep;

import static io.restassured.RestAssured.given;

class ContractsQueryHelper extends AbstractRestApi implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(ContractsQueryHelper.class);

    private static final String ENDPOINT_DEV = "http://contracts-query-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "http://contracts-query-api-clm-test.ocp-ctc-dmz-nonprod.optum.com";

    private static final String RESOURCE_ECM = "/v1.0/exari/ecm";
    private static final String RESOURCE_FACILITY = "/v1.0/exari/facilitycontracts";
    private static final String RESOURCE_CONTRACT_JSON = "/v1.0/exari/json";
    private static final String RESOURCE_CONTRACT_SEARCH = "/v1.0/exari/contracts/search";
    private static final String RESOURCE_MASS_ACTION = "/v1.0/exari/mass-action";


    private static ContractsQueryHelper INSTANCE = new ContractsQueryHelper();

    /*
    CONSTRUCTOR
    */

    private ContractsQueryHelper() {
    }
    
    /*
    STATIC METHODS
    */

    static ContractsQueryHelper getInstance() {
        return INSTANCE;
    }
    
    /*
    CLASS METHODS
    */


    QueryResponse getExariMassAction(String massActionProjectId) {
        RequestSpecification request = given().baseUri(getEndpoint())
                .header("Content-Type", "application/json")
                .param("massActionProjectId", massActionProjectId);

        Response response = request.get(RESOURCE_MASS_ACTION);
        JsonElement jsonElement = parseJsonElementResponse(response);

        return gson.fromJson(jsonElement, QueryResponse.class);
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
