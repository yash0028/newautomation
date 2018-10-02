package ui_test.util;

import cucumber.api.Result;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.openqa.selenium.WebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.BookendOrder;

public class UtilityUISteps implements IUiStep {
    private static final Logger log = LoggerFactory.getLogger(UtilityUISteps.class);

    @Before(value = "@A_UI_Story", order = BookendOrder.UI)
    public void openConnection(Scenario scenario) {
        SauceLabs.reset(scenario.getName());

//        SeleniumHelper.launchBrowser(FileHelper.getInstance().getConfigValue("browserName"));
    }

    @After(value = "@A_UI_Story", order = BookendOrder.UI)
    public void closeConnection(Scenario scenario) {
        WebDriver driver = SeleniumHelper.getWebDriver();
        if (driver != null) {
            driver.quit();
        }
        //TODO

        if (scenario.getStatus() == Result.Type.PASSED) {
            SauceLabs.getInstance().testPassed();
        } else {
            SauceLabs.getInstance().testFailed();
        }

        SauceLabs.getInstance().close();
    }
}
