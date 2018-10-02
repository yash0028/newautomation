package general_test.step;

import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.openqa.selenium.WebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.SeleniumHelper;
import util.BookendOrder;
import util.FileHelper;

public class UtilityUISteps {
    private static final Logger log = LoggerFactory.getLogger(UtilityUISteps.class);


    @Before(value = "@A_UI_Story", order = BookendOrder.UI)
    public void getWebDriverForUI() {
        log.debug("Starting selenium webdriver and launching browser");
        SeleniumHelper.launchBrowser(FileHelper.getInstance().getConfigValue("browserName"));
    }

    @After(value = "@A_UI_Story", order = BookendOrder.UI)
    public void closeDriver() {
        WebDriver driver = SeleniumHelper.getWebDriver();
        if (driver != null) {
            driver.quit();
        }
        //TODO
    }
}
