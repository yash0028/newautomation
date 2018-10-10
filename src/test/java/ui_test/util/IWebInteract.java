package ui_test.util;

import org.openqa.selenium.Alert;
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
import java.util.Set;

public interface IWebInteract {
    Logger log = LoggerFactory.getLogger(IWebInteract.class);
    int TIMEOUT = 100;

    /*
    INTERFACE METHODS
     */

    WebDriver getDriver();

    /*
    DEFAULT METHODS
     */

    default void pause(int seconds) {
        WebFunction.getInstance().pause(seconds);
    }

    default boolean isVisible(WebElement element) {
        highlight(element);
        return element.isEnabled() && element.isDisplayed();
    }

    default boolean waitTillVisible(WebElement element) {
        highlight(element);
        WebDriverWait wait = new WebDriverWait(this.getDriver(), TIMEOUT);
        wait.until(ExpectedConditions.visibilityOf(element));
        return element.isDisplayed();
    }

    default boolean click(WebElement element) {
        try {
            highlight(element);
            element.click();
            log.trace("clicked on {}", element.getText());
        } catch (Exception e) {
            log.error(e.getMessage());
            return false;
        }

        return true;
    }

    default boolean submit(WebElement element) {
        try {
            highlight(element);
            element.submit();
            log.trace("submitted {}", element.getText());
        } catch (Exception e) {
            log.error(e.getMessage());

            return false;
        }

        return true;
    }

    default boolean sendKeys(WebElement element, CharSequence... charSequences) {
        try {
            highlight(element);
            element.sendKeys(charSequences);
            log.trace("sent keys {}", Arrays.toString(charSequences));
        } catch (Exception e) {
            log.error(e.getMessage());
            return false;
        }

        return true;
    }

    default boolean selectDropDownByValue(WebElement element, String value) {
        try {
            highlight(element);
            Select select = new Select(element);
            select.selectByVisibleText(value);
            log.trace("drop down selected {}", value);
        } catch (Exception e) {
            log.error(e.getMessage());
            return false;
        }

        return true;
    }

    default boolean selectDropDownByIndex(WebElement element, int index) {
        try {
            highlight(element);
            Select select = new Select(element);
            select.selectByIndex(index);
            log.trace("drop down selected index {}", index);
        } catch (Exception e) {
            log.error(e.getMessage());
            return false;
        }

        return true;
    }

    default boolean selectRadioButtonByValue(List<WebElement> elements, String value) {
        try {
            for (WebElement element : elements) {
                highlight(element);
                if (element.getAttribute("value").contains(value)) {
                    return click(element);
                }
            }
        } catch (Exception e) {
            log.error(e.getMessage());
        }

        return false;

    }

    default boolean selectRadioButtonByIndex(List<WebElement> elements, int index) {
        try {
            highlight(elements.get(index));
            return click(elements.get(index));
        } catch (Exception e) {
            log.error(e.getMessage());
        }

        return false;
    }

    default boolean setCheckBox(WebElement element, boolean checked) {
        try {
            highlight(element);
            if (element.isSelected() != checked) {
                return click(element);
            } else {
                log.trace("checkbox already set to {}", checked);
            }
        } catch (Exception e) {
            log.error(e.getMessage());
        }

        return false;
    }

    default boolean clear(WebElement element) {
        try {
            highlight(element);
            element.clear();
            log.trace("cleared");
        } catch (Exception e) {
            log.error(e.getMessage());
            return false;
        }

        return true;
    }

    default boolean hover(WebElement element) {
        try {
            highlight(element);
            Actions actions = new Actions(this.getDriver());
            actions.moveToElement(element).build().perform();
        } catch (Exception e) {
            log.error(e.getMessage());
            return false;
        }

        return true;
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
            log.error(e.getMessage());
            return false;
        }
        return true;
    }

    default boolean acceptAlert() {
        try {
            Alert alert = this.getDriver().switchTo().alert();
            alert.accept();
        } catch (Exception e) {
            log.error(e.getMessage());
            return false;
        }

        return true;
    }

    default void highlight(WebElement element) {
        WebFunction.getInstance().highlight(element);
    }


}
