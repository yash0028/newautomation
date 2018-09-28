package step_definitions;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.openqa.selenium.WebDriver;
import utils.FileHelper;
import utils.SeleniumHelper;

import java.util.logging.Logger;

/**
 * Created by aberns on 8/6/2018.
 */
public class UtilSteps {

    private static Logger logger = Logger.getLogger("UtilSteps");
    public static Scenario scenario;

    public static void write2Scenario(String message) {
        if (scenario != null) {
            scenario.write(message);
        } else {
            System.out.println(message);
        }
    }

    @Before
    public void getScenario(Scenario scenario) {
        System.out.println("Grabbing Scenario Object and waiting for a bit...");
        this.scenario = scenario;
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Before("@A_UI_Story")
    public void getWebDriverForUI() {
        logger.info("Starting selenium webdriver and launching browser");
        SeleniumHelper.launchBrowser(FileHelper.getInstance().getConfigValue("browserName"));
    }

    @After
    public void sendRallyUpdate() {
        WebDriver driver = SeleniumHelper.getWebDriver();
        if (driver != null) {
            driver.close();
        }
        //TODO
    }
}
