package rest_api_test.api.contractconfig;

import com.google.gson.JsonElement;
import io.restassured.response.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;
import rest_api_test.api.example.model.Letter;

class ContractConfigHelper extends AbstractRestApi {
    private static final Logger log = LoggerFactory.getLogger(ContractConfigHelper.class);

    private static final String ENDPOINT_DEV = "http://contract-config-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "http://contract-config-service-clm-test.ocp-ctc-dmz-nonprod.optum.com";

    private static ContractConfigHelper INSTANCE = new ContractConfigHelper();

    /*
    CONSTRUCTOR
    */

    private ContractConfigHelper() {
    }
    
    /*
    STATIC METHODS
    */

    static ContractConfigHelper getInstance() {
        return INSTANCE;
    }
    
    /*
    CLASS METHODS
    */

    Letter getLetter(Response response) {
        JsonElement json = parseJsonElementResponse(response);
        Letter letter = gson.fromJson(json, Letter.class);
        letter.setResponse(response);
        return letter;
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
