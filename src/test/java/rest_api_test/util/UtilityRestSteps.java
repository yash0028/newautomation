package rest_api_test.util;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import general_test.util.BookendOrder;


/**
 * Utility Cucumber steps for Rest API Stories to do something before and after
 */
public class UtilityRestSteps {

    @Before(value = "@Mock_Test", order = BookendOrder.REST)
    public void resetMockService(Scenario scenario) {
        //Do something before a mock service test
    }

    @After(value = "@Mock_Test", order = BookendOrder.REST)
    public void somethingAfter(Scenario scenario) {
        //Do something after a mock service test
    }
}
