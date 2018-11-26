package ui_test.util;

import org.apache.commons.lang3.SystemUtils;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.configuration.IConfigurable;
import util.file.IFileReader;

import java.util.Optional;
import java.util.concurrent.TimeUnit;

public class LocalDriver implements IConfigurable, IFileReader {
    private static final Logger log = LoggerFactory.getLogger(LocalDriver.class);
    private static LocalDriver INSTANCE;

    private WebDriver driver;


    /*
    CONSTRUCTOR
     */
    private LocalDriver() {

        init();
    }


    /*
    STATIC METHODS
     */

    static LocalDriver getInstance() {
        return INSTANCE;
    }

    static void reset() {
        if (INSTANCE != null)
            INSTANCE.close();
        INSTANCE = new LocalDriver();
    }

    /*
    CLASS METHODS
     */

    WebDriver getDriver() {
        return driver;
    }

    void close() {
        log.trace("closing local browser connection");
        try {
            if (driver != null) {
                driver.close();
                driver.quit();
                try {
                    driver.get("someURL");
                } catch (Exception e) {
                    log.trace("successfully closed local web driver");
                }
            }
        } catch (Exception e) {
            log.error("unable to quit local web driver");
            return;
        }

        log.trace("browser closed");
    }

    /*
    HELPER METHODS
     */

    private void init() {
        try {
            String driverPath = getDriverPath();
            System.setProperty("webdriver.chrome.driver", driverPath);
            ChromeOptions chromeOptions = new ChromeOptions();
            chromeOptions.setExperimentalOption("useAutomationExtension", false);
            driver = new ChromeDriver(chromeOptions);
            driver.manage().deleteAllCookies();
            driver.manage().window().maximize();
            driver.manage().timeouts().pageLoadTimeout(90, TimeUnit.SECONDS);
        } catch (Exception e) {
            log.error("unable to create driver", e);
        }
    }

    private String getDriverPath() {
        Optional<String> os;
        if (SystemUtils.IS_OS_WINDOWS) {
            os = configGetOptionalString("windows32DriverName");
        } else if (SystemUtils.IS_OS_MAC) {
            os = configGetOptionalString("mac64DriverName");
        } else if (SystemUtils.IS_OS_LINUX) {
            os = configGetOptionalString("linux64DriverName");
        } else {
            os = Optional.empty();
        }

        if (os.isPresent()) {
            return getResourcePath("/drivers/" + os.get());
        } else {
            return "";
        }
    }

}
