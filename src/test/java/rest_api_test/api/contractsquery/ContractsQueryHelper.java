package rest_api_test.api.contractsquery;

import com.google.gson.JsonElement;
import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;
import rest_api_test.api.contractsquery.model.QueryResponse;
import rest_api_test.util.IRestStep;

class ContractsQueryHelper extends AbstractRestApi implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(ContractsQueryHelper.class);

    private static final String ENDPOINT_DEV = "http://contracts-query-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "http://contracts-query-api-clm-test.ocp-ctc-dmz-nonprod.optum.com";




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


    QueryResponse getExariMassAction(Response response) {
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
