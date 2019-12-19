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
    FACTORY PAGE METHODSok
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
    public boolean selectDownstreamErrorResolution() {
        return click("Downstream Error Resolution tab", elements.tab_downstreamErrorResolution);

    }
    public boolean enterContractId(String text) {
        return sendKeys("Contract Id ", elements.contract_id, text);

    }
    public boolean clickSearchButton() {
        return click(" Search Button ", elements.search_button);

    }
    public boolean clickDownstreamSite() {
        return click("Downstream site", elements.sitetab);

    }
    public boolean clickErrorCodeToExpand() {
        return click("Error Code Tab", elements.errorcode_tab);

    }
    public boolean clickResolveMultiple() {
        return click("Resolve Multiple", elements.resolve_multiple);

    }
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
    public boolean clickCheckboxAll() {
        return setCheckBox(" checkbox all", elements.checkbox_all,true);
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

        @FindBy(xpath = "//div[contains(@class,'mat-tab-labels')]/div//span[contains(text(),'Downstream Error Resolution')]")
        public WebElement tab_downstreamErrorResolution;

        @FindBy(xpath = "//*[@id=\"contractIdValue\"]")
        public WebElement contract_id;

        @FindBy(xpath = "//button[contains(@id,'searchResultButton')]")
        public WebElement search_button;

        @FindBy(xpath = "//table[@class='mat-table']//tr[1]/td[1]/div[1]/span[1]")
        public WebElement sitetab;

        @FindBy(xpath = "//*[@id=\"mat-tab-content-0-1\"]/div/app-type-two-errors/div[3]/table/tbody/tr[2]/td/div/div/table/tbody/tr[1]/td/div/span[1]")
        public WebElement errorcode_tab;

        @FindBy(xpath = "//button[contains(text(),'Resolve Multiple')]")
        public WebElement resolve_multiple;

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

        @FindBy(xpath = "//tr[contains(@class,'mat-header-row ng-star-inserted')]//th[1]//div")
        public WebElement checkbox_all;

        @FindBy(xpath = "//button[contains(text(),'Submit')]")
        public WebElement button_submit;

        @FindBy(xpath = "//button[contains(text(),'Cancel')]")
        public WebElement button_cancel;

        PageElements(SearchContext context) {
            super(context);
        }
    }


}
