package ui_test.page.contractManagement;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by dtimaul on 9/26/18.
 */
public class ActionRequiredPage extends GenericCMPage {
    private static final Logger log = LoggerFactory.getLogger(ActionRequiredPage.class);

    @FindBy(xpath = "//p[contains(.,' There are currently no contracts that require action at this time ')]")
    protected WebElement noActionRequiredMessage;

    /*
    CONSTRUCTOR
     */

    /**
     * Creates the action required page driver and its web elements.
     *
     * @param driver Webdriver currently being used.
     */
    public ActionRequiredPage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    /**
     * Confirms that the current page is the action required page by verifying the URL.
     *
     * @return True if on the in progress page or false otherwise.
     */
    public boolean confirmCurrentPage() {
        return isVisible(buttonBack);
//        return isVisible(buttonBack) && getDriver().getCurrentUrl().matches("^.+reassignment$");
    }

    public boolean confirmNoActionRequiredMessage() {
        return isVisible(noActionRequiredMessage);
    }




}
