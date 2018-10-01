package utils;

import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class SeleniumHelper {

    private static Logger logger = Logger.getLogger("SeleniumHelper");
    private static WebDriver driver = null;

    private enum Browsers {
        IE, FIREFOX, CHROME
    }

    private enum WebElementIdentifiers {
        ID, CLASSNAME, TAGNAME, NAME, LINKTEXT, PARTIALLINKTEXT, XPATH, CSSSELECTOR
    }

    private enum ExpectedConditionsType {
        VISIBLE, CLICKABLE, SELECTED, PRESENCE
    }

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
    public static void launchBrowser(String browserName, boolean isMac) {
        if (isMac) {
            try {
                switch (Browsers.valueOf(browserName.toUpperCase())) {
                    case CHROME:
                        System.setProperty("webdriver.chrome.driver", "src/test/resources/drivers/chromedriver");
                        ChromeOptions chromeOptions = new ChromeOptions();
                        chromeOptions.setExperimentalOption("useAutomationExtension", false);
                        driver = new ChromeDriver(chromeOptions);
                        break;
                    default:
                        throw new Exception(
                                "Currently only CHROME browser is supported");
                }
                driver.manage().deleteAllCookies();
                driver.manage().window().maximize();
                driver.manage().timeouts().pageLoadTimeout(90, TimeUnit.SECONDS);
                waitForPageLoad();
            } catch (TimeoutException e) {
                logger.log(Level.SEVERE, "Browser unable to load page within 90Sec", e);
            } catch (Exception e) {
                logger.log(Level.SEVERE, "No valid browser is provided", e);
            }
        } else {
            try {
                switch (Browsers.valueOf(browserName.toUpperCase())) {
                    case CHROME:
                        System.setProperty("webdriver.chrome.driver", "src/test/resources/drivers/chromedriver.exe");
                        ChromeOptions chromeOptions = new ChromeOptions();
                        chromeOptions.setExperimentalOption("useAutomationExtension", false);
                        driver = new ChromeDriver(chromeOptions);
                        break;
                    default:
                        throw new Exception(
                                "Currently only CHROME browser is supported");
                }
                driver.manage().deleteAllCookies();
                driver.manage().window().maximize();
                driver.manage().timeouts().pageLoadTimeout(90, TimeUnit.SECONDS);
                waitForPageLoad();
            } catch (TimeoutException e) {
                logger.log(Level.SEVERE, "Browser unable to load page within 90Sec", e);
            } catch (Exception e) {
                logger.log(Level.SEVERE, "No valid browser is provided", e);
            }
        }

    }

    public static WebElement findElement(String identifier, String locator) {

        try {
            WebElement ele = findElementWithExplicitWait(WebElementIdentifiers.valueOf(identifier.toUpperCase()), locator, 90);
            if (ele != null)
                logger.info("Element with identifier type: " + identifier + " - Locator: " + locator + " is found");
            else
                logger.log(Level.SEVERE,
                        "Element with identifier type: " + identifier + " - Locator: " + locator + " is not found");
            return ele;
        } catch (Exception e) {
            logger.log(Level.SEVERE,
                    "Element with identifier type: " + identifier + " - Locator: " + locator + " is not found");
        }
        return null;
    }

    public static List<WebElement> findElements(String identifier, String locator) {

        try {
            List<WebElement> ele = findElementsWithExplicitWait(WebElementIdentifiers.valueOf(identifier.toUpperCase()), locator, 90);
            if (ele != null)
                logger.info("Element with identifier type: " + identifier + " - Locator: " + locator + " is found");
            else
                logger.log(Level.SEVERE,
                        "Element with identifier type: " + identifier + " - Locator: " + locator + " is not found");
            return ele;
        } catch (Exception e) {
            logger.log(Level.SEVERE,
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
            logger.log(Level.SEVERE, e.getMessage());
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
            logger.log(Level.SEVERE, e.getMessage());
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
                logger.info("Entered text " + textToEnter + " in the textbox");
                return true;
            }
        } catch (Exception e) {
            logger.log(Level.SEVERE, "failed to enter the text " + textToEnter + " in the textbox ");
        }
        return false;
    }

    public static boolean clickWebElement(WebElement element) {

        try {
            if (element != null && element.isEnabled()) {
                element.click();
                logger.info("Clicked on element " + element);
                return true;
            }
        } catch (Exception e) {
            logger.log(Level.SEVERE, "failed to click on the web element : " + element);
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
            logger.log(Level.INFO, "UnInterruptedException");
        }
    }
}