package ui_test.util;

import cucumber.api.Result;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import general_test.util.BookendOrder;
import general_test.util.UtilityGeneralSteps;
import io.cucumber.datatable.DataTable;
import org.junit.Assert;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriverException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.configuration.IConfigurable;

import java.util.Map;

/**
 * Utility Cucumber steps for UI Stories to start and close SauceLabs connection
 */
public class UtilityUISteps implements IUiStep, IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(UtilityUISteps.class);

    private Scenario parameterScenaio;

    /**
     * Start SauceLabs connection
     *
     * @param scenario the cucumber scenario automatically given by cucumber runner
     */
    @Before(value = "@User_Interface", order = BookendOrder.UI)
    public void openConnection(Scenario scenario) {
        //Check if the scenario uses parametric browser
        //If using the parametric browser, the scenario must include a step to create the browser
        if (!scenario.getSourceTagNames().contains("@parametric_browser")) {
            //Create browser driver
            if (isRemoteDriver()) {
                SauceLabs.reset(UiConfigHelper.getInstance().getDefaultSauceBuilder(scenario.getName()));
                log.info("SauceLabs Test Video: {}", SauceLabs.getInstance().getSauceLink());
            } else {
                LocalDriver.reset();
                log.info("Running local ui test");
            }
        } else {
            parameterScenaio = scenario;
        }
    }

    @After(value = "@User_Interface", order = -1 * (BookendOrder.UI - 1))
    public void endLinkAndScreenshot() {
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
    @After(value = "@User_Interface", order = -1 * BookendOrder.UI)
    public void closeConnection(Scenario scenario) {
        parameterScenaio = null;
        if (isRemoteDriver()) {
            try {
                if (scenario.getStatus() == Result.Type.PASSED) {
                    SauceLabs.getInstance().testPassed();
                } else {
                    SauceLabs.getInstance().testFailed();
                }
            } catch (Throwable throwable) {
                log.error("Unknown error: {}", throwable.getMessage());
            }

            SauceLabs.getInstance().close();
        } else {
            LocalDriver.getInstance().close();
        }

    }

    @Given("^I am using a parametric browser with the following capabilities$")
    public void prepareParametricBrowser(DataTable table) {
        //Check if parametric
        if (parameterScenaio == null) {
            Assert.assertTrue( false);
            return;
        }

        Map<String, String> map = table.asMap(String.class, String.class);

        //Create browser driver
        if (isRemoteDriver()) {
            SauceLabs.Builder builder = UiConfigHelper.getInstance().getParametricSauceBuilder(parameterScenaio.getName(), map);

            SauceLabs.reset(builder);
            log.info("SauceLabs Test Video: {}", SauceLabs.getInstance().getSauceLink());
        } else {
            LocalDriver.reset();
            log.info("Running local ui test");
        }

    }

}
