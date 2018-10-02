package ui_test.util;

import cucumber.api.Result;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.BookendOrder;

public class UtilityUISteps implements IUiStep {
    private static final Logger log = LoggerFactory.getLogger(UtilityUISteps.class);

    @Before(value = "@A_UI_Story", order = BookendOrder.UI)
    public void openConnection(Scenario scenario) {
        SauceLabs.reset(scenario.getName());
    }

    @After(value = "@A_UI_Story", order = BookendOrder.UI)
    public void closeConnection(Scenario scenario) {
        if (scenario.getStatus() == Result.Type.PASSED) {
            SauceLabs.getInstance().testPassed();
        } else {
            SauceLabs.getInstance().testFailed();
        }

        SauceLabs.getInstance().close();
    }
}
