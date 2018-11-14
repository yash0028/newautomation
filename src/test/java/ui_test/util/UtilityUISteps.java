package ui_test.util;

import cucumber.api.Result;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import general_test.util.BookendOrder;
import general_test.util.UtilityGeneralSteps;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriverException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.configuration.IConfigurable;

/**
 * Utility Cucumber steps for UI Stories to start and close SauceLabs connection
 */
public class UtilityUISteps implements IUiStep, IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(UtilityUISteps.class);

    /**
     * Start SauceLabs connection
     *
     * @param scenario the cucumber scenario automatically given by cucumber runner
     */
    @Before(value = "@A_UI_Story", order = BookendOrder.UI)
    public void openConnection(Scenario scenario) {

        if (isRemoteDriver()) {
            SauceLabs.reset(scenario.getName());
            log.info("SauceLabs Test Video: {}", SauceLabs.getInstance().getSauceLink());

        } else {
            LocalDriver.reset();
            log.info("Running local ui test");
        }
    }

    @After(value = "@A_UI_Story", order = -1 * (BookendOrder.UI - 1))
    public void takeScreenshot() {
        Scenario scenario = UtilityGeneralSteps.scenario;

        try {
            scenario.write("Ending Page URL is " + getDriver().getCurrentUrl());
            byte[] screenshot = ((TakesScreenshot) getDriver()).getScreenshotAs(OutputType.BYTES);
            scenario.embed(screenshot, "image/png");  // Stick it in the report
        } catch (WebDriverException somePlatformsDontSupportScreenshots) {
            log.error(somePlatformsDontSupportScreenshots.getMessage());
        } catch (ClassCastException cce) {
            cce.printStackTrace();
        }
    }

    /**
     * Send the scenario result to SauceLabs and then close connection
     *
     * @param scenario the cucumber scenario automatically given by cucumber runner
     */
    @After(value = "@A_UI_Story", order = -1 * BookendOrder.UI)
    public void closeConnection(Scenario scenario) {
        if (isRemoteDriver()) {
            if (scenario.getStatus() == Result.Type.PASSED) {
                SauceLabs.getInstance().testPassed();
            } else {
                SauceLabs.getInstance().testFailed();
            }

            SauceLabs.getInstance().close();
        } else {
            LocalDriver.getInstance().close();
        }

    }
}
