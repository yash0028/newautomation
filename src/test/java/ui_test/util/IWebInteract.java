package ui_test.util;

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

    default void pause(int seconds) {
        if (pauseSilent(seconds))
            log.trace("paused for {} seconds", seconds);
    }

    default boolean pauseSilent(int seconds) {
        try {
            TimeUnit.SECONDS.sleep(seconds);
        } catch (InterruptedException e) {
            e.printStackTrace();
            log.error("failed to pause for {} seconds", seconds, e);
            return false;
        }

        return true;
    }

    default boolean isVisible(WebElement element) {
        try {
            return element.isEnabled() && element.isDisplayed();
        } catch (Exception e) {
            return false;
        }
    }

    default boolean waitTillVisible(WebElement element, int timeout) {
        try {
            WebDriverWait wait = new WebDriverWait(this.getDriver(), timeout);
            wait.until(ExpectedConditions.visibilityOf(element));
            return isVisible(element);
        } catch (Exception e) {
            return false;
        }
    }

    default boolean waitTillVisible(WebElement element) {
        return waitTillVisible(element, TIMEOUT);
    }

    default boolean waitTillClickable(WebElement element, int timeout) {
        try {
            WebDriverWait wait = new WebDriverWait(this.getDriver(), timeout);
            wait.until(ExpectedConditions.elementToBeClickable(element));
            return isVisible(element);
        } catch (Exception e) {
            return false;
        }
    }

    default boolean waitTillClickable(WebElement element) {
        return waitTillClickable(element, TIMEOUT);
    }

    /**
     * Clicks a given web element and logs the element name
     *
     * @param elementName The element description name
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

    /**
     * Clicks a given web element.
     *
     * @param element Web element to be clicked
     * @return true if clicked or false otherwise
     */
    default boolean click(WebElement element) {
        return click("element", element);
    }


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

    default boolean submit(WebElement element) {
        return submit("element", element);
    }

    default boolean sendKeys(String elementName, WebElement element, CharSequence... charSequences) {
        try {
            highlight(element);
            element.sendKeys(charSequences);
            log.trace("sent keys {} to {}", Arrays.toString(charSequences), elementName);
        } catch (Exception e) {
            log.error("send keys to {} failed", elementName, e);
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
            log.error("drop down {} failed for value {}", elementName, value, e);
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
        return click(elementName, element) || _CLICK_WITH_JS(elementName, element);
    }

    /**
     * Click on a webelement by using traditional methods, if that fails use JS to click.
     *
     * @param element web element to be clicked
     * @return boolean if the element was clicked without error
     */
    default boolean clickWithForce(WebElement element) {
        return click("js-element", element) || _CLICK_WITH_JS("js-element", element);
    }

    /**
     * DO NOT USE, ONLY HERE TO RESOLVE A BUG. USE 'clickWithForce' IF AND ONLY IF 'click' does not work.
     * Click an element with Javascript.
     *
     * @param elementName name of the element to click
     * @param element     webelement to be clicked
     * @return boolean if the element was clicked without error
     */
    default boolean _CLICK_WITH_JS(String elementName, WebElement element) {
        try {
            highlight(element);
            JavascriptExecutor executor = (JavascriptExecutor) getDriver();
            executor.executeScript("arguments[0].click();", element);
            log.trace("clicked with js on {}", elementName);
        } catch (Exception e) {
            log.error("click with js on {} failed", elementName, e);
            return false;
        }

        return true;
    }

    default String getCurrentWindow() {
        return this.getDriver().getWindowHandle();
    }

    default Set<String> getWindows() {
        return this.getDriver().getWindowHandles();
    }

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

    default boolean closeAllOtherWindows() {
        return this.closeAllOtherWindows(this.getCurrentWindow());
    }

    default boolean handleAlert(boolean accept) {
        try {
            Alert alert = this.getDriver().switchTo().alert();
            if (accept) {
                alert.accept();
            } else {
                alert.dismiss();
            }
        } catch (Exception e) {
            log.error("alert accept failed", e);
            return false;
        }

        return true;
    }

    default void refreshPage() {
        getDriver().navigate().refresh();
        log.trace("refreshed page");
    }

    /**
     * Creates a seperate thread to perform the driver navigation in case the driver hangs.
     *
     * @param pageUrl url to navigate to
     * @param timeout timeout before killing navigation attempt
     * @return if the navigation got hung
     */
    default boolean navigateTo(String pageUrl, int timeout) {
        Thread t = new Thread(new Runnable() {
            public void run() {
                try {
                    getDriver().get(Thread.currentThread().getName());
                } catch (Exception e) {

                }
            }
        }, pageUrl);

        t.start();
        try {
            t.join(timeout);
        } catch (InterruptedException e) {
            // ignore
        }

        if (t.isAlive()) { // Thread still alive, we need to abort
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

    default boolean navigateTo(String pageUrl) {
        return navigateTo(pageUrl, 15);
    }

    default void highlight(WebElement element) {
        String orgStyle = element.getAttribute("style");

        setStyle(element, "outline: 1px dashed red;");
        pauseSilent(1);
        setStyle(element, orgStyle);
    }

    default void setStyle(WebElement element, String value) {
        final WebDriver driver = this.getDriver();

        for (int i = 0; i < 3; i++) {
            JavascriptExecutor js = (JavascriptExecutor) driver;
            js.executeScript("arguments[0].setAttribute('style', arguments[1]);", element, value);

        }
    }

    default void waitForPageLoad() {
        ExpectedCondition<Boolean> expectation = new ExpectedCondition<Boolean>() {
            public Boolean apply(WebDriver driver) {
                return ((JavascriptExecutor) driver).executeScript("return document.readyState").equals("complete");
            }
        };

        Wait<WebDriver> wait = new WebDriverWait(getDriver(), 90);
        try {
            wait.until(expectation);
        } catch (TimeoutException e) {
            log.info(": Timeout (90 seconds) waiting for Page Load Request to complete");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
