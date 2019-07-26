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

public class ContractMasterOverrideModal implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(ContractMasterOverrideModal.class);

    private final WebDriver driver;
    private PageElements elements;

    /*
    CONSTRUCTOR
    */

    public ContractMasterOverrideModal(WebDriver driver) {
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

    public boolean enterContractMasterNumber(String contractMasterNumer) {
        return sendKeys("contract master number", elements.input_contractMasterNumber, contractMasterNumer);
    }

    public boolean selectLoadOptionNDB() {
        return click("load system", elements.dropdown_loadSystem) && click("ndb option", elements.option_ndb);
    }

    public boolean selectLoadOptionCosmos() {
        return click("load system", elements.dropdown_loadSystem) && click("cosmos option", elements.option_cosmos);
    }

    public boolean selectLoadOptionBoth() {
        return click("load system", elements.dropdown_loadSystem) && click("both option", elements.option_both);
    }

    public boolean selectUsageOnce() {
        return click("usage", elements.dropdown_loadSystem) && click("once", elements.option_once);
    }

    public boolean selectUsageAlways() {
        return click("usage", elements.dropdown_loadSystem) && click("always", elements.option_always);
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

        @FindBy(xpath = "//div[contains(@class,'modal-body')]//input")
        public WebElement input_contractMasterNumber;

        @FindBy(xpath = "//div[contains(@class,'modal-body')]//mat-select[@formcontrolname='system']")
        public WebElement dropdown_loadSystem;

        @FindBy(xpath = "//mat-option/span[contains(text(),'NDB')]")
        public WebElement option_ndb;

        @FindBy(xpath = "//mat-option/span[contains(text(),'COSMOS')]")
        public WebElement option_cosmos;

        @FindBy(xpath = "//mat-option/span[contains(text(),'BOTH')]")
        public WebElement option_both;

        @FindBy(xpath = "//div[contains(@class,'modal-body')]//mat-select[@formcontrolname='usage']")
        public WebElement dropdown_useContractMaster;

        @FindBy(xpath = "//mat-option/span[contains(text(),'Once')]")
        public WebElement option_once;

        @FindBy(xpath = "Always")
        public WebElement option_always;

        @FindBy(xpath = "//div[contains(@class,'modal-body')]//button[contains(text(),'Submit')]")
        public WebElement button_submit;

        @FindBy(xpath = "//div[contains(@class,'modal-body')]//button[contains(text(),'Cancel')]")
        public WebElement button_cancel;

        PageElements(SearchContext context) {
            super(context);
        }
    }


}
