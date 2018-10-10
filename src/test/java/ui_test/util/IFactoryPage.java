package ui_test.util;

import org.openqa.selenium.WebDriver;

/**
 * Interface for all page objects that forces implementing common methods
 */
public interface IFactoryPage {
    int TIMEOUT = 100;

    /**
     * Confirm that the current page is this one. Implement with validating web elements and/or current url regex
     *
     * @return if this page is the page the driver is on
     */
    boolean confirmCurrentPage();

    WebDriver getDriver();
}
