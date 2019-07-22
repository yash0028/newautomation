package ui_test.page.cmd.navigation;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class CMDNavigationPanel implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(CMDNavigationPanel.class);

    private final WebDriver driver;
    private PageElements elements;

    /*
    CONSTRUCTOR
    */

    public CMDNavigationPanel(WebDriver driver) {
        this.driver = driver;
        this.elements = new PageElements(driver);
    }
    
    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(elements.buttonCurrentTransaction);
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }
    
    /*
    PAGE ACTION METHODS
     */

    public boolean clickCurrentTransaction() {
        return click("current transaction button", elements.buttonCurrentTransaction);
    }

    public boolean clickMassActions() {
        return click("current transaction button", elements.buttonMassActions);
    }

    public boolean clickReferenceData() {
        return click("current transaction button", elements.buttonReferenceData);
    }
    
    /*
    CLASS METHODS
    */
    
    /*
    PAGE METHODS
     */
    
    /*
    HELPER METHODS
    */
    
    /*
    ELEMENT CLASS
     */

    /**
     * private class to contain the webelements. This allows us to reload the context as needed and keeps the code clean.
     */
    private class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//app-navbar//a[@href='/transaction-status']")
        public WebElement buttonCurrentTransaction;

        @FindBy(xpath = "//app-navbar//a[@href='/transaction-status']")
        public WebElement buttonMassActions;

        @FindBy(xpath = "//app-navbar//a[@href='/transaction-status']")
        public WebElement buttonReferenceData;

        PageElements(SearchContext context) {
            super(context);
        }
    }


}
