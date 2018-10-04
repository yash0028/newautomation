package ui_test.util;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface IWebInteract {
    Logger log = LoggerFactory.getLogger(IWebInteract.class);

    default boolean waitTillVisible(WebElement element) {
        WebDriverWait wait = new WebDriverWait(SauceLabs.getInstance().getDriver(), 100);
        wait.until(ExpectedConditions.visibilityOf(element));
        return element.isDisplayed();
    }

    default boolean click(WebElement element) {
        try {
            element.click();
        } catch (Exception e) {
            return false;
        }

        return true;
    }

    default boolean submit(WebElement element) {
        try {
            element.submit();
        } catch (Exception e) {
            return false;
        }

        return true;
    }

    default boolean sendKeys(WebElement element, CharSequence... charSequences) {
        try {
            element.sendKeys(charSequences);
        } catch (Exception e) {
            return false;
        }

        return true;
    }

    default boolean clear(WebElement element) {
        try {
            element.clear();
        } catch (Exception e) {
            return false;
        }

        return true;
    }
}
