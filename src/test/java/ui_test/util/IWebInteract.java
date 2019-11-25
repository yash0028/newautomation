package ui_test.util;

import org.junit.Assert;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.TimeUnit;

import static ui_test.util.AbstractPageElements.TIMEOUT;

public interface IWebInteract {
    Logger log = LoggerFactory.getLogger(IWebInteract.class);

    /*
    INTERFACE METHODS
     */

    WebDriver getDriver();

    /*
    DEFAULT METHODS
     */

    /**
     * Pause the current thread for some time and log the time
     *
     * @param seconds to pause the thread
     */
    default void pause(int seconds) {
        if (pauseSilent(seconds))
            log.trace("paused for {} seconds", seconds);
    }

    /**
     * Pause the current thread for some time and do not log
     *
     * @param seconds to pause the thread
     */
    default boolean pauseSilent(int seconds) {
        try {
            TimeUnit.SECONDS.sleep(seconds);
        } catch (InterruptedException e) {
//            e.printStackTrace();
            log.error("failed to pause for {} seconds", seconds);
            return false;
        }

        return true;
    }

    /**
     * Check if web element is visible
     *
     * @param element webelement to look for
     * @return if the element is visible
     */
    default boolean isVisible(WebElement element) {
        try {
//            waitForPageLoad();
            return element.isDisplayed();
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * Wait until web element is visible
     *
     * @param element webelement to look for
     * @param timeout how long to look
     * @return if the element is visible
     */
    default boolean waitTillVisible(WebElement element, int timeout) {
        try {
            WebDriverWait wait = new WebDriverWait(this.getDriver(), timeout);
            wait.until(ExpectedConditions.visibilityOf(element));
            return isVisible(element);
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * Wait until web element is visible, with default timeout
     *
     * @param element webelement to look for
     * @return if the element is visible
     */
    default boolean waitTillVisible(WebElement element) {
        return waitTillVisible(element, TIMEOUT);
    }

    /**
     * Wait until web element is clickable
     *
     * @param element webelement to see if clickable
     * @param timeout how long to look
     * @return if the element is clickable
     */
    default boolean waitTillClickable(WebElement element, int timeout) {
        try {
            WebDriverWait wait = new WebDriverWait(this.getDriver(), timeout);
            wait.until(ExpectedConditions.elementToBeClickable(element));
            return isVisible(element);
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * Wait until web element is clickable, with default timeout
     *
     * @param element webelement to see if clickable
     * @return if the element is clickable
     */
    default boolean waitTillClickable(WebElement element) { return waitTillClickable(element, TIMEOUT);
    }

    /**
     * Clicks a given web element and logs the element name

     * @param elementName descriptive name of the web element
     * @param element     Web element to be clicked
     * @return true if clicked or false otherwise
     */
    default boolean click(String elementName, WebElement element) {
        try {
            highlight(element);
            element.click();
            log.trace("clicked on {}", elementName);
        } catch (Exception e) {
            log.error("click failed for {}", elementName);
            return false;
        }
        return true;
    }
    default boolean jseclick(String elementName, WebElement element)
    {
try{
        JavascriptExecutor executor = (JavascriptExecutor)getDriver();
        executor.executeScript("arguments[0].click();", element);
        log.trace("clicked on {}", elementName);
    } catch (Exception e) {
        log.error("click failed for {}", elementName);
        return false;
    }
        return true;
    }

    /**
     * Clicks a given web element.
     *
     * @param element Web element to be clicked
     * @return true if clicked or false otherwise
     */
    default boolean click(WebElement element) {
        return click("element", element);
    }


    /**
     * Submit a given web element
     *
     * @param elementName descriptive name of the web element
     * @param element     Web element to be submitted
     * @return true if submitted
     */
    default boolean submit(String elementName, WebElement element) {
        try {
            highlight(element);
            element.submit();
            log.trace("submitted for {}", elementName);
        } catch (Exception e) {
            log.error("submit failed for {}", elementName, e);

            return false;
        }

        return true;
    }

    /**
     * Submit a given web element
     *
     * @param element Web element to be submitted
     * @return true if submitted
     */
    default boolean submit(WebElement element) {
        return submit("element", element);
    }

    /**
     * Send keys to web element
     *
     * @param elementName
     * @param element
     * @param charSequences
     * @return
     */
    default boolean sendKeys(String elementName, WebElement element, CharSequence... charSequences) {
        try {
            highlight(element);
            element.sendKeys(charSequences);
            log.trace("sent keys {} to {}", Arrays.toString(charSequences), elementName);
        } catch (Exception e) {
            log.error("send keys to {} failed", elementName);
            return false;
        }

        return true;
    }

    default boolean sendKeys(WebElement element, CharSequence... charSequences) {
        return sendKeys("element", element, charSequences);
    }

    default boolean selectDropDownByValue(String elementName, WebElement element, String value) {
        try {
            highlight(element);
            Select select = new Select(element);
            select.selectByVisibleText(value);
            log.trace("drop down {} selected value {}", elementName, value);
        } catch (Exception e) {
            log.error("drop down {} failed for value {}", elementName, value);
            return false;
        }

        return true;
    }

    default boolean selectDropDownByValue(WebElement element, String value) {
        return selectDropDownByValue("element", element, value);
    }

    default boolean selectDropDownByIndex(String elementName, WebElement element, int index) {
        try {
            highlight(element);
            Select select = new Select(element);
            select.selectByIndex(index);
            log.trace("drop down {} selected index {}", elementName, index);
        } catch (Exception e) {
            log.error("drop down {} failed for index {}", elementName, index, e);
            return false;
        }

        return true;
    }

    default boolean selectDropDownByIndex(WebElement element, int index) {
        return selectDropDownByIndex("element", element, index);
    }

    default boolean selectRadioButtonByValue(List<WebElement> elements, String elementName, String value) {
        try {
            Optional<WebElement> element = elements.stream().filter(e -> e.getAttribute("value").contains(value)).findFirst();
            if (element.isPresent()) {
                return click(elementName, element.get());
            }
        } catch (Exception e) {
            log.error("radio {} select failed for value {}", elementName, value, e);
        }

        return false;
    }

    default boolean selectRadioButtonByValue(List<WebElement> elements, String value) {
        return selectRadioButtonByValue(elements, "element", value);
    }

    default boolean selectRadioButtonByIndex(List<WebElement> elements, String elementName, int index) {
        try {
            highlight(elements.get(index));
            return click(elementName, elements.get(index));
        } catch (Exception e) {
            log.error("radio {} select failed for index {}", elementName, index, e);
        }

        return false;
    }

    default boolean selectRadioButtonByIndex(List<WebElement> elements, int index) {
        return selectRadioButtonByIndex(elements, "element", index);
    }

    default boolean setCheckBox(String elementName, WebElement element, boolean checked) {
        try {
            highlight(element);
            if (element.isSelected() != checked) {
                return click(element);
            } else {
                log.trace("checkbox {} already set to {}", elementName, checked);
                return true;
            }
        } catch (Exception e) {
            log.error("checkbox {} failed", elementName, e);
        }

        return false;
    }

    default boolean setCheckBox(WebElement element, boolean checked) {
        return setCheckBox("element", element, checked);
    }

    default boolean clear(String elementName, WebElement element) {
        try {
            highlight(element);
            element.clear();
            log.trace("cleared {}", elementName);
        } catch (Exception e) {
            log.error("clear {} failed", elementName, e);
            return false;
        }

        return true;
    }

    default boolean clear(WebElement element) {
        return clear("element", element);
    }

    default boolean cleanWriteTextBox(String elementName, WebElement element, String text) {
        clear(element);
        return sendKeys(elementName, element, text);
    }

    default boolean cleanWriteTextBox(WebElement element, String text) {
        return cleanWriteTextBox("element", element, text);
    }

    default boolean hover(String elementName, WebElement element) {
        try {
            highlight(element);
            Actions actions = new Actions(this.getDriver());
            actions.moveToElement(element).build().perform();
            log.trace("hover on {}", elementName);
        } catch (Exception e) {
            log.error("hover over {} failed", elementName, e);
            return false;
        }

        return true;
    }

    default boolean hover(WebElement element) {
        return hover("element", element);
    }

    /**
     * Click on a webelement by using traditional methods, if that fails use JS to click.
     *
     * @param elementName name of the element for logging
     * @param element     web element to be clicked
     * @return boolean if the element was clicked without error
     */
    default boolean clickWithForce(String elementName, WebElement element) {
        if (click(elementName, element)) {
            return true;
        }

        //Try to click with a JS method
        try {
            JavascriptExecutor executor = (JavascriptExecutor) getDriver();
            executor.executeScript("arguments[0].click();", element);
            log.trace("clicked with js on {}", elementName);
        } catch (Exception e) {
            log.error("click with js on {} failed", elementName, e);
            return false;
        }

        return true;
    }

    /**
     * Click on a webelement by using traditional methods, if that fails use JS to click.
     *
     * @param element web element to be clicked
     * @return boolean if the element was clicked without error
     */
    default boolean clickWithForce(WebElement element) {
        return clickWithForce("js-element", element);
    }

    /**
     * Get the name of the current window
     *
     * @return name of current window
     */
    default String getCurrentWindow() {
        return this.getDriver().getWindowHandle();
    }

    /**
     * Get a list of open windows
     *
     * @return list of window names
     */
    default Set<String> getWindows() {
        return this.getDriver().getWindowHandles();
    }

    /**
     * Switch to a window by its index
     *
     * @param windowIndex index of the window
     * @return true is the switch was successful
     */
    default boolean switchWindowByIndex(int windowIndex) {
        int current = 0;
        for (String windowHandle : getWindows()) {
            if (current == windowIndex) {
                return switchWindowByName(windowHandle);
            }
            current++;
        }

        return false;
    }

    /**
     * Switch to a window by its name
     *
     * @param name name of the window
     * @return true is the switch was successful
     */
    default boolean switchWindowByName(String name) {
        try {
            this.getDriver().switchTo().window(name);
            log.trace("switched to window {}", this.getDriver().getTitle());
        } catch (Exception e) {
            log.error("switch window failed for {}", name, e);
            return false;
        }
        return true;
    }

    /**
     * Close all windows except the current one
     *
     * @param openWindowHandle name of the current window
     * @return true if all other windows closed
     */
    default boolean closeAllOtherWindows(String openWindowHandle) {
        Set<String> allWindowHandles = getDriver().getWindowHandles();
        for (String currentWindowHandle : allWindowHandles) {
            if (!currentWindowHandle.equals(openWindowHandle)) {
                getDriver().switchTo().window(currentWindowHandle);
                getDriver().close();
            }
        }

        getDriver().switchTo().window(openWindowHandle);
        if (getDriver().getWindowHandles().size() == 1)
            return true;
        else
            return false;
    }

    /**
     * Close all windows expcet the current one
     *
     * @return
     */
    default boolean closeAllOtherWindows() {
        return this.closeAllOtherWindows(this.getCurrentWindow());
    }

    /**
     * Dismiss a browser level alert
     *
     * @param accept to accept or cancel
     * @return true if dismissed without error
     */
    default boolean handleAlert(boolean accept) {
        try {
            Alert alert = this.getDriver().switchTo().alert();
            if (accept) {
                alert.accept();
            } else {
                alert.dismiss();
            }
        } catch (Exception e) {
            log.error("alert accept failed");
            return false;
        }

        return true;
    }

    /**
     * Refresh current page
     */
    default boolean refreshPage() {
        try {
            getDriver().navigate().refresh();
            log.trace("refreshed page");
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * Creates a new thread to perform the driver navigation in case the driver hangs.
     *
     * @param pageUrl url to navigate to
     * @param timeout timeout before killing navigation attempt
     * @return if the navigation got hung
     */
    default boolean navigateTo(String pageUrl, int timeout) {

        //Create new thread from an anonymous class
        Thread t = new Thread(new Runnable() {
            public void run() {
                try {
                    getDriver().get(Thread.currentThread().getName());
                } catch (Exception e) {

                }
            }
        }, pageUrl);

        //Start the thread
        t.start();

        //Wait for the thread to finish
        try {
            t.join(timeout);
        } catch (InterruptedException e) {
            // ignore
        }

        //Check if thread finished properly
        if (t.isAlive()) {
            // Thread still alive, we need to abort
            log.warn("timeout on loading page {}", pageUrl);
            try {
                t.interrupt();
            } catch (Exception e) {
            }
            pause(5);
            return false;
        }

        return true;
    }

    /**
     * Creates a new thread to perform the driver navigation in case the driver hangs.
     *
     * @param pageUrl url to navigate to
     * @return if the navigation got hung
     */
    default boolean navigateTo(String pageUrl) {
        return navigateTo(pageUrl, 15);
    }

    /**
     * Highlight a webelement with red dashes
     *
     * @param element webelement to highlight
     */
    default void highlight(WebElement element) {
        String orgStyle = element.getAttribute("style");

        setStyle(element, "outline: 1px dashed red;");
        pauseSilent(1);
        setStyle(element, orgStyle);
    }

    /**
     * Set the style of a webelement
     *
     * @param element webelement to change the style
     * @param value   the new style
     */
    default void setStyle(WebElement element, String value) {
        final WebDriver driver = this.getDriver();

        for (int i = 0; i < 3; i++) {
            JavascriptExecutor js = (JavascriptExecutor) driver;
            js.executeScript("arguments[0].setAttribute('style', arguments[1]);", element, value);

        }
    }

    /**
     * Wait for the page to load
     *
     * @param timeout how long to wait
     * @return true if the wait completed without issue
     */
    default boolean waitForPageLoad(int timeout) {
        ExpectedCondition<Boolean> expectJSReadyState = driver -> {
            Assert.assertTrue( driver != null);
            return ((JavascriptExecutor) driver).executeScript("return document.readyState").equals("complete");
        };

        Wait<WebDriver> wait = new WebDriverWait(getDriver(), timeout);
        try {
            wait.until(expectJSReadyState);
        } catch (TimeoutException e) {
            log.error("waited {}s for page to load", timeout);
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

        return true;
    }

    /**
     * Wait for the page to load
     *
     * @return true if the wait completed without issue
     */
    default boolean waitForPageLoad() {
        return waitForPageLoad(15);
    }


    default WebElement findElement(WebDriver driver,String[] elementProperties)
    {
        try
        {
            switch (ElementLocator.valueOf(elementProperties[0].toUpperCase())) {
                case ID:
                    return waitForElementToPresent(driver, By.id(elementProperties[1]));
                case CLASSNAME:
                    return waitForElementToPresent(driver, By.className(elementProperties[1]));
                case LINKTEXT:
                    return waitForElementToPresent(driver, By.linkText(elementProperties[1]));
                case PARTIALLINKTEXT:
                    return waitForElementToPresent(driver, By.partialLinkText(elementProperties[1]));
                case XPATH:
                    return waitForElementToPresent(driver, By.xpath(elementProperties[1]));
                case CSSSELECTOR:
                    return waitForElementToPresent(driver, By.cssSelector(elementProperties[1]));
                case NAME:
                    return waitForElementToPresent(driver, By.name(elementProperties[1]));
                case TAGNAME:
                    return waitForElementToPresent(driver, By.tagName(elementProperties[1]));
            }
        }
        catch(Exception e)
        {
            Assert.fail("Element with locator "+ ElementLocator.valueOf(elementProperties[0].toUpperCase()) + " is not found");
        }
        return null;
    }

    /**
     * This method is similar to explicit wait but without a condition
     * @param by - the element locator with By class
     * @return WebElement if element found within the timeout
     */
    default WebElement waitForElementToPresent(WebDriver driver,final By by)
    {
        try
        {
            //threadSleep(5000);
            WebElement element = (new WebDriverWait(driver, 15))
                    .until(ExpectedConditions.presenceOfElementLocated(by));
            return element;
        }
        catch(Exception e)
        {
            Assert.fail("Element with locator " + by + " is not present.");
        }
        return null;
    }
    default WebElement waitForElementToAppear(WebDriver driver,final By by)
    {
        try
        {
            //threadSleep(5000);
            log.info("Waiting for loader to Appear.");
            WebElement element = (new WebDriverWait(driver, 5))
                    .until(ExpectedConditions.presenceOfElementLocated(by));
            return element;
        }
        catch(Exception e)
        {
            log.info("Waiting for loader to Appear : Failed");
            return null;
        }

    }
    default boolean waitForElementToDissapear(WebDriver driver,WebElement element)
    {
        try
        {
            log.info("Waiting for loader to Disappear.");
            (new WebDriverWait(driver, 10)).until(ExpectedConditions.invisibilityOf(element));
            return true;
        }
        catch(Exception e)
        {
            log.info("Waiting for loader to Disappear : Failed");
            return false;
        }
    }






    default List<WebElement> findElements(WebDriver driver,String[] elementProperties)
    {
        try
        {
            switch (ElementLocator.valueOf(elementProperties[0].toUpperCase())) {
                case ID:
                    return waitForElementsToPresent(driver, By.id(elementProperties[1]));
                case CLASSNAME:
                    return waitForElementsToPresent(driver, By.className(elementProperties[1]));
                case LINKTEXT:
                    return waitForElementsToPresent(driver, By.linkText(elementProperties[1]));
                case PARTIALLINKTEXT:
                    return waitForElementsToPresent(driver, By.partialLinkText(elementProperties[1]));
                case XPATH:
                    return waitForElementsToPresent(driver, By.xpath(elementProperties[1]));
                case CSSSELECTOR:
                    return waitForElementsToPresent(driver, By.cssSelector(elementProperties[1]));
                case NAME:
                    return waitForElementsToPresent(driver, By.name(elementProperties[1]));
                case TAGNAME:
                    return waitForElementsToPresent(driver, By.tagName(elementProperties[1]));
            }
        }
        catch(Exception e)
        {
            Assert.fail("List of Elements with expected locator are not present.");
        }

        return null;
    }

    /**
     * This method is similar to explicit wait but without a condition
     * @param by - the element locator with By class
     * @return WebElement if element found within the timeout
     */
    default List<WebElement> waitForElementsToPresent(WebDriver driver,final By by)
    {
        try
        {
            //threadSleep(5000);
            List<WebElement> elements = (new WebDriverWait(driver, 15))
                    .until(ExpectedConditions.presenceOfAllElementsLocatedBy(by));
            return elements;
        }
        catch(Exception e)
        {
            Assert.fail("List of Elements with locator " + by + " are not present.");
        }
        return null;
    }


    enum ExplicitConditions
    {
        CLICK, VISIBLE, staleness,title, textPresent, INVISIBLE, PRESENCE
    }


    enum ElementLocator {

        ID,
        CLASSNAME,
        LINKTEXT,
        PARTIALLINKTEXT,
        XPATH,
        CSSSELECTOR,
        TAGNAME,
        NAME
    }




}
