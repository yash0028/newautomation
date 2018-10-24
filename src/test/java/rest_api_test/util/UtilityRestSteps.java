package rest_api_test.util;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import general_test.util.BookendOrder;
import io.restassured.specification.RequestSpecification;

import static io.restassured.RestAssured.given;


/**
 * Utility Cucumber steps for Rest API Stories to do something before and after
 */
public class UtilityRestSteps {
    private static final String ENDPOINT = "http://cosmos-ndb-mock-service-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_CLEAR_COSMOS_DB = "/v1.0/cosmos/cleardb";
    private static final String RESOURCE_CLEAR_NDB_DB = "/v1.0/ndb/cleardb";

    private RequestSpecification request;

    @Before(value = "@US1332127", order = BookendOrder.REST)
    public void resetMockService(Scenario scenario) {
        given().baseUri(ENDPOINT).delete(RESOURCE_CLEAR_COSMOS_DB);
        given().baseUri(ENDPOINT).delete(RESOURCE_CLEAR_COSMOS_DB);
    }

    @After(value = "@US1332127", order = BookendOrder.REST)
    public void somethingAfter(Scenario scenario) {
        given().baseUri(ENDPOINT).delete(RESOURCE_CLEAR_COSMOS_DB);
        given().baseUri(ENDPOINT).delete(RESOURCE_CLEAR_COSMOS_DB);
    }
}
