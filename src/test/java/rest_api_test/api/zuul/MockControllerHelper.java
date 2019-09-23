package rest_api_test.api.zuul;

import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.AbstractRestApi;

import static io.restassured.RestAssured.given;

class MockControllerHelper extends AbstractRestApi {
    private static final Logger log = LoggerFactory.getLogger(MockControllerHelper.class);

    private static final String ENDPOINT_DEV = "http://zuul-gateway-service-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT_TEST = "http://zuul-gateway-service-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_CLEAR = "/v1.0/mock-flag/clear";
    private static final String RESOURCE_SET = "/v1.0/mock-flag/set/";

    private static MockControllerHelper INSTANCE = new MockControllerHelper();

    /*
    CONSTRUCTOR
    */

    private MockControllerHelper() {
    }
    
    /*
    STATIC METHODS
    */

    static MockControllerHelper getInstance() {
        return INSTANCE;
    }
    
    /*
    CLASS METHODS
    */

    /**
     * Clear the Zuul service of the contract id to mock
     *
     * @return if it was successful
     */
    boolean clear() {
        RequestSpecification request = given().baseUri(getEndpoint()).header("Content-Type", "application/json");
        Response response = request.get(RESOURCE_CLEAR);
        return response.statusCode() == 200;
    }

    /**
     * Set the Zuul service to forward things related to given contract id to mock services
     *
     * @param contractId id to forward to mock
     * @return if it was successful
     */
    boolean set(String contractId) {
        RequestSpecification request = given().baseUri(getEndpoint()).header("Content-Type", "application/json");
        Response response = request.get(RESOURCE_SET + contractId);
        return response.statusCode() == 200;
    }

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
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
