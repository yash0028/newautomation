package ui_test.util;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface IWebInteract {
    Logger log = LoggerFactory.getLogger(IWebInteract.class);
    int TIMEOUT = 100;

    default boolean waitTillVisible(WebElement element) {
        WebDriverWait wait = new WebDriverWait(SauceLabs.getInstance().getDriver(), TIMEOUT);
        wait.until(ExpectedConditions.visibilityOf(element));
        return element.isDisplayed();
    }

    default boolean click(WebElement element) {
        try {
            element.click();
            log.trace("clicked on {}", element.getText());
        } catch (Exception e) {
            return false;
        }

        return true;
    }

    default boolean submit(WebElement element) {
        try {
            element.submit();
            log.trace("submitted {}", element.getText());
        } catch (Exception e) {
            return false;
        }

        return true;
    }

    default boolean sendKeys(WebElement element, CharSequence... charSequences) {
        try {
            element.sendKeys(charSequences);
            log.trace("sent keys {}", charSequences);
        } catch (Exception e) {
            return false;
        }

        return true;
    }

    default boolean clear(WebElement element) {
        try {
            element.clear();
            log.trace("cleared");
        } catch (Exception e) {
            return false;
        }

        return true;
    }
}
