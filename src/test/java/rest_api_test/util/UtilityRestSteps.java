package rest_api_test.util;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import general_test.util.BookendOrder;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.mock.IMockServiceInteract;


/**
 * Utility Cucumber steps for Rest API Stories to do something before and after
 */
public class UtilityRestSteps implements IRestApi, IMockServiceInteract {
    private final static Logger log = LoggerFactory.getLogger(UtilityRestSteps.class);

    private static final String ENDPOINT = "http://cosmos-ndb-mock-service-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_CLEAR_COSMOS_DB = "/v1.0/cosmos/cleardb";
    private static final String RESOURCE_CLEAR_NDB_DB = "/v1.0/ndb/cleardb";

    private RequestSpecification request;

    @Before
    public void resetRestApiEnv() {
        useDevApi();
    }

    @Before(value = "@US1332127", order = BookendOrder.REST)
    public void resetMockService(Scenario scenario) {
        mockClearCosmos();
        mockClearNdb();
    }

    @After(value = "@US1332127", order = -1 * BookendOrder.REST)
    public void somethingAfter(Scenario scenario) {
        mockClearCosmos();
        mockClearNdb();
    }
}
