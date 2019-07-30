package ui_test.page.cmd.transaction.action.modal;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class PCPReassignmentModal implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(PCPReassignmentModal.class);

    private final WebDriver driver;
    private PageElements elements;

    /*
    CONSTRUCTOR
    */

    public PCPReassignmentModal(WebDriver driver) {
        this.driver = driver;
        this.elements = new PageElements(driver);
    }
    
    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return true;
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }
    
    /*
    PAGE ACTION METHODS
     */

    public boolean enterMPIN(String text) {
        return sendKeys("mpin", elements.input_mpin, text);
    }

    public boolean enterAddressSequence(String text) {
        return sendKeys("address sequence", elements.input_mpin, text);
    }

    public boolean clickSave() {
        return click("contract master number", elements.button_save);
    }

    public boolean clickBack() {
        return click("back", elements.button_back);
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

        @FindBy(xpath = "//input[contains(@formcontrolname,'reassignMpin')]")
        public WebElement input_mpin;

        @FindBy(xpath = "//input[contains(@formcontrolname,'reassignMarketAddressSeq')]")
        public WebElement input_address;

        @FindBy(xpath = "//button[@type='submit']")
        public WebElement button_save;

        @FindBy(xpath = "//button[contains(text(),'Back')]")
        public WebElement button_back;

        PageElements(SearchContext context) {
            super(context);
        }
    }


}
