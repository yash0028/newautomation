package ui_test.util;

import org.openqa.selenium.WebDriver;

/**
 * Interface for all UI Cucumber steps created with several default methods that allows any class that
 * implements it to safely access SauceLabs.
 */
public interface IUiStep {

    default WebDriver getWebDriver() {
        return SauceLabs.getInstance() != null ? SauceLabs.getInstance().getDriver() : null;
    }
}
