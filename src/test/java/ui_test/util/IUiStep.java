package ui_test.util;

import org.openqa.selenium.WebDriver;
import util.configuration.IConfigurable;

/**
 * Interface for all UI Cucumber steps created with several default methods that allows any class that
 * implements it to safely access SauceLabs.
 */
public interface IUiStep extends IConfigurable {

    default WebDriver getDriver() {
        if (isRunningLocalDriver()) {
            return SauceLabs.getInstance() != null ? SauceLabs.getInstance().getDriver() : null;
        } else {
            return LocalDriver.getInstance() != null ? LocalDriver.getInstance().getDriver() : null;
        }
    }

    default boolean isRunningLocalDriver() {
        return configGetBoolean("runLocalBrowser") && !configGetOptionalString("BUILD_NUMBER").isPresent();
    }
}
