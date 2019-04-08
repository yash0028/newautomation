package rest_api_test.api.activiti;

import com.google.gson.JsonElement;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;

import static io.restassured.RestAssured.given;

class ActivitiHelper extends AbstractRestApi {
    private static final Logger log = LoggerFactory.getLogger(ActivitiHelper.class);

    private static final String ENDPOINT_DEV = "http://activiti-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "http://activiti-api-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_CREATE_RECORD = "/v1.0/processes";

    private static ActivitiHelper INSTANCE = new ActivitiHelper();

    /*
    CONSTRUCTOR
    */

    private ActivitiHelper() {
    }
    
    /*
    STATIC METHODS
    */

    static ActivitiHelper getInstance() {
        return INSTANCE;
    }
    
    /*
    CLASS METHODS
    */

    /**
     * Create record in Activiti API
     * maps to POST /v1.0/processes
     *
     * @param payload
     * @return
     */
    public Response createRecord(JsonElement payload) {
        RequestSpecification request = given().baseUri(getEndpoint())
                .header("Content-Type", "application/json")
                .body(payload);

        // Get the response
        return request.post(RESOURCE_CREATE_RECORD);
    }
    
    /*
    HELPER METHODS
    */

    @Override
    protected String getEndpoint() {
        return useDev ? ENDPOINT_DEV : ENDPOINT_TEST;
    }

/*
    UTILITY CLASS
    */
}
