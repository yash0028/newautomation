package rest_api_test.util;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import general_test.util.BookendOrder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.mock.IMockServiceInteract;


/**
 * Utility Cucumber steps for Rest API Stories to do something before and after
 */
public class UtilityRestSteps implements IRestApi, IMockServiceInteract {
    private final static Logger log = LoggerFactory.getLogger(UtilityRestSteps.class);

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
