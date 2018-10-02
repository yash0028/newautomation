package ui_test.util;

import org.openqa.selenium.*;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.FileHelper;

import java.net.URL;
import java.util.List;
import java.util.concurrent.TimeUnit;

@Deprecated
public class SeleniumHelper {

    private static Logger log = LoggerFactory.getLogger(SeleniumHelper.class);
    private static WebDriver driver = null;


    private SeleniumHelper() {
    }

    /**
     * This method is used to access driver from anywhere in the code
     *
     * @return - WebDriver object
     */
    public static WebDriver getWebDriver() {
        return driver;
    }

    /**
     * This method is used to launch specified browser
     *
     * @param browserName - Currently only chrome browser is utilized
     */
    public static void launchBrowser(String browserName) {

        FileHelper fileHelper = FileHelper.getInstance();
        String URL = "http://" + fileHelper.getConfigValue("SauceLabs_UserName") + ":" + fileHelper.getConfigValue("SauceLabs_AccessKey") + "@ondemand.saucelabs.com:80/wd/hub";
        try {
            switch (Browsers.valueOf(browserName.toUpperCase())) {
                case CHROME:
                    DesiredCapabilities caps = DesiredCapabilities.chrome();
                    caps.setCapability("parentTunnel", fileHelper.getConfigValue("SauceLabs_ParentTunnel"));
                    caps.setCapability("tunnelIdentifier", fileHelper.getConfigValue("SauceLabs_TunnelIdentifier"));
                    caps.setCapability("seleniumVersion", fileHelper.getConfigValue("SauceLabs_SeleniumVersion"));
                    caps.setCapability("platform", fileHelper.getConfigValue("SauceLabs_Platform"));
                    caps.setCapability("version", fileHelper.getConfigValue("SauceLabs_BrowserVersion"));
                    caps.setCapability("chromedriverVersion", fileHelper.getConfigValue("SauceLabs_DriverVersion"));
                    caps.setCapability("screenResolution", fileHelper.getConfigValue("SauceLabs_ScreenResolution"));
                    caps.setCapability("maxDuration", fileHelper.getConfigValue("SauceLabs_MaxDuration"));
                    caps.setCapability("name", "CLM Team3 - CMD Dashboard tests");
                    driver = new RemoteWebDriver(new URL(URL), caps);
                    break;
                default:
                    throw new Exception(
                            "Currently only CHROME browser is supported");
            }
            driver.manage().deleteAllCookies();
            driver.manage().window().maximize();
            driver.manage().timeouts().pageLoadTimeout(180, TimeUnit.SECONDS);
            waitForPageLoad();
        } catch (TimeoutException e) {
            log.error("Browser unable to load page within 180 Seconds: " + e.getMessage());
        } catch (Exception e) {
            log.debug("No valid browser is provided : " + e.getMessage());
        }
    }

    public static WebElement findElement(String identifier, String locator) {

        try {
            WebElement ele = findElementWithExplicitWait(WebElementIdentifiers.valueOf(identifier.toUpperCase()), locator, 90);
            if (ele != null)
                log.info("Element with identifier type: " + identifier + " - Locator: " + locator + " is found");
            else
                log.error(
                        "Element with identifier type: " + identifier + " - Locator: " + locator + " is not found");
            return ele;
        } catch (Exception e) {
            log.error(
                    "Element with identifier type: " + identifier + " - Locator: " + locator + " is not found");
        }
        return null;
    }

    public static List<WebElement> findElements(String identifier, String locator) {

        try {
            List<WebElement> ele = findElementsWithExplicitWait(WebElementIdentifiers.valueOf(identifier.toUpperCase()), locator, 90);
            if (ele != null)
                log.info("Element with identifier type: " + identifier + " - Locator: " + locator + " is found");
            else
                log.error(
                        "Element with identifier type: " + identifier + " - Locator: " + locator + " is not found");
            return ele;
        } catch (Exception e) {
            log.error(
                    "Element with identifier type: " + identifier + " - Locator: " + locator + " is not found");
        }
        return null;
    }

    private static WebElement findElementWithExplicitWait(WebElementIdentifiers identifier, String locator,
                                                          long timeOutInSeconds) {

        WebDriverWait waitDriver = new WebDriverWait(driver, timeOutInSeconds);
        try {
            switch (identifier) {
                case ID:
                    return waitDriver.until(ExpectedConditions.elementToBeClickable(By.id(locator)));
                case CLASSNAME:
                    return waitDriver.until(ExpectedConditions.elementToBeClickable(By.className(locator)));
                case TAGNAME:
                    return waitDriver.until(ExpectedConditions.elementToBeClickable(By.tagName(locator)));
                case NAME:
                    return waitDriver.until(ExpectedConditions.elementToBeClickable(By.name(locator)));
                case XPATH:
                    return waitDriver.until(ExpectedConditions.elementToBeClickable(By.xpath(locator)));
                case CSSSELECTOR:
                    return waitDriver.until(ExpectedConditions.elementToBeClickable(By.cssSelector(locator)));
                case PARTIALLINKTEXT:
                    return waitDriver.until(ExpectedConditions.elementToBeClickable(By.partialLinkText(locator)));
                case LINKTEXT:
                    return waitDriver.until(ExpectedConditions.elementToBeClickable(By.linkText(locator)));
            }
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return null;
    }

    private static List<WebElement> findElementsWithExplicitWait(WebElementIdentifiers identifier, String locator,
                                                                 long timeOutInSeconds) {

        WebDriverWait waitDriver = new WebDriverWait(driver, timeOutInSeconds);
        try {
            switch (identifier) {
                case ID:
                    return waitDriver.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id(locator)));
                case CLASSNAME:
                    return waitDriver.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.className(locator)));
                case TAGNAME:
                    return waitDriver.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.tagName(locator)));
                case NAME:
                    return waitDriver.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.name(locator)));
                case XPATH:
                    return waitDriver.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.xpath(locator)));
                case CSSSELECTOR:
                    return waitDriver.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.cssSelector(locator)));
                case PARTIALLINKTEXT:
                    return waitDriver.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.partialLinkText(locator)));
                case LINKTEXT:
                    return waitDriver.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.linkText(locator)));
            }
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return null;
    }

    public static boolean waitForPageLoad() {
        WebDriverWait wait = new WebDriverWait(driver, 60);
        return wait.until(new ExpectedCondition<Boolean>() {
                              @Override
                              public Boolean apply(final WebDriver driver) {
                                  return ((JavascriptExecutor) driver).executeScript("return document.readyState").equals("complete");
                              }
                          }
        );
    }

    public static boolean enterTextIntoTextField(WebElement element, String textToEnter) {

        try {
            if (element != null && element.isEnabled()) {
                element.clear();
                element.sendKeys(textToEnter);
                log.info("Entered text " + textToEnter + " in the textbox");
                return true;
            }
        } catch (Exception e) {
            log.error("failed to enter the text " + textToEnter + " in the textbox ");
        }
        return false;
    }

    public static boolean clickWebElement(WebElement element) {

        try {
            if (element != null && element.isEnabled()) {
                element.click();
                log.info("Clicked on element " + element);
                return true;
            }
        } catch (Exception e) {
            log.error("failed to click on the web element : " + element);
        }
        return false;
    }

    public static void waitForElementToLoad(WebElement element, Long timeToWait) {
        new WebDriverWait(driver, timeToWait).until(ExpectedConditions.elementToBeSelected(element));
    }

    public static void waitForElementToLoad(int timeToWait) {
        try {
            Thread.sleep(timeToWait * 1000);
        } catch (Exception e) {
            log.info("UnInterruptedException");
        }
    }

    private enum Browsers {
        IE, FIREFOX, CHROME
    }

    private enum WebElementIdentifiers {
        ID, CLASSNAME, TAGNAME, NAME, LINKTEXT, PARTIALLINKTEXT, XPATH, CSSSELECTOR
    }

    private enum ExpectedConditionsType {
        VISIBLE, CLICKABLE, SELECTED, PRESENCE
    }
}