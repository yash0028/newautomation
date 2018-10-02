package ui_test.util;

import org.openqa.selenium.WebDriver;

public interface IUiStep {

    default WebDriver getWebDriver() {
        return SauceLabs.getInstance() != null ? SauceLabs.getInstance().getDriver() : null;
    }
}
