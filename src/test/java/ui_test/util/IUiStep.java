package ui_test.util;

import org.openqa.selenium.WebDriver;
import util.configuration.IConfigurable;

import java.util.Optional;

/**
 * Interface for all UI Cucumber steps created with several default methods that allows any class that
 * implements it to safely access SauceLabs.
 */
public interface IUiStep extends IConfigurable {

    default WebDriver getDriver() {
        if (isRemoteDriver()) {
            return SauceLabs.getInstance() != null ? SauceLabs.getInstance().getDriver() : null;
        } else {
            return LocalDriver.getInstance() != null ? LocalDriver.getInstance().getDriver() : null;
        }
    }

    default boolean isRemoteDriver() {
        Optional<String> buildNum = configGetOptionalString("BUILD_NUMBER");
        boolean isOnJenkins = buildNum.isPresent() && !buildNum.get().isEmpty();
        return isOnJenkins || !configGetBoolean("runLocalBrowser");
    }
}
