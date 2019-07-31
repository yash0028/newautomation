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

public class DownstreamErrorModal implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(DownstreamErrorModal.class);

    private final WebDriver driver;
    private PageElements elements;

    /*
    CONSTRUCTOR
    */

    public DownstreamErrorModal(WebDriver driver) {
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

    public boolean enterResolutionText(String text) {
        return sendKeys("contract master number", elements.textarea_resolutionText, text);
    }

    public boolean selectResolutionResend() {
        return click("load system", elements.dropdown_resolutionType) && click("both option", elements.option_resend);
    }

    public boolean selectResolutionManual() {
        return click("usage", elements.dropdown_resolutionType) && click("once", elements.option_manual);
    }

    public boolean selectResolutionCancelled() {
        return click("usage", elements.dropdown_resolutionType) && click("always", elements.option_cancelled);
    }

    public boolean clickSubmit() {
        return click("submit", elements.button_submit);
    }

    public boolean clickCancel() {
        return click("cancel", elements.button_cancel);
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

        @FindBy(xpath = "//div[contains(@class,'modal-body')]//textarea")
        public WebElement textarea_resolutionText;

        @FindBy(xpath = "//div[contains(@class,'modal-body')]//mat-select[@formcontrolname='selectFormControl']")
        public WebElement dropdown_resolutionType;

        @FindBy(xpath = "//mat-option/span[contains(text(),'Resend Coresystem')]")
        public WebElement option_resend;

        @FindBy(xpath = "//mat-option/span[contains(text(),'Manually Installed')]")
        public WebElement option_manual;

        @FindBy(xpath = "//mat-option/span[contains(text(),'Install Cancelled')]")
        public WebElement option_cancelled;

        @FindBy(xpath = "//button[contains(text(),'Submit')]")
        public WebElement button_submit;

        @FindBy(xpath = "//button[contains(text(),'Cancel')]")
        public WebElement button_cancel;

        PageElements(SearchContext context) {
            super(context);
        }
    }


}