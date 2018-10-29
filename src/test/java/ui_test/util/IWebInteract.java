package ui_test.util;

import org.openqa.selenium.Alert;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public interface IWebInteract {
    Logger log = LoggerFactory.getLogger(IWebInteract.class);
    int TIMEOUT = 90;

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
            log.error("click failed for {}", elementName, e);
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
        highlight(element);
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

    default Set<String> getWindows() {
        return this.getDriver().getWindowHandles();
    }

    default boolean switchWindowByIndex(int windowIndex) {
        int current = 0;
        for (String windowHandle : getWindows()) {
            if (current == windowIndex) {
                return switchWindowByName(windowHandle);
            }
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

    default boolean acceptAlert() {
        try {
            Alert alert = this.getDriver().switchTo().alert();
            alert.accept();
        } catch (Exception e) {
            log.error("alert accept failed", e);
            return false;
        }

        return true;
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

}
