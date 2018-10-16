package ui_test.util;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
 * Replaced with SauceLabs, Page Factory, and Page Object Model
 */
@Deprecated
public class SeleniumHelper {

    private static Logger log = LoggerFactory.getLogger(SeleniumHelper.class);
    private static WebDriver driver = getWebDriver();


    private SeleniumHelper() {
    }

    /**
     * This method is used to access driver from anywhere in the code
     *
     * @return - WebDriver object
     */
    public static WebDriver getWebDriver() {
        return SauceLabs.getInstance().getDriver();
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

    private enum WebElementIdentifiers {
        ID, CLASSNAME, TAGNAME, NAME, LINKTEXT, PARTIALLINKTEXT, XPATH, CSSSELECTOR
    }

}