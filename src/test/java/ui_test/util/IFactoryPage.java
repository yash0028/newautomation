package ui_test.util;

/**
 * Interface for all page objects that forces implementing common methods
 */
public interface IFactoryPage {

    /**
     * Confirm that the current page is this one. Implement with validating web elements and/or current url regex
     *
     * @return if this page is the page the driver is on
     */
    boolean confirmCurrentPage();
}
