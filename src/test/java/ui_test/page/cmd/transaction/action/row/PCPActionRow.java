package ui_test.page.cmd.transaction.action.row;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.cmd.transaction.action.modal.PCPReassignmentModal;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class PCPActionRow implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(PCPActionRow.class);

    private final WebDriver driver;
    private final PageElements elements;

    /*
    CONSTRUCTOR
    */

    public PCPActionRow(WebDriver driver, WebElement elementRow) {
        this.driver = driver;
        this.elements = new PageElements(elementRow);
        log.trace("action row created");
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

    public PCPReassignmentModal openPCPReassignmentModal() {
        click(elements.label_state);
        return new PCPReassignmentModal(driver);
    }

    /*
    CLASS METHODS
    */

    public String getState() {
        return this.elements.label_state.getText().trim();
    }

    public String getMarket() {
        return this.elements.label_state.getText().trim();
    }

    public String getMPIN() {
        return this.elements.label_state.getText().trim();
    }

    public String getTIN() {
        return this.elements.label_state.getText().trim();
    }

    public String getProvider() {
        return this.elements.label_state.getText().trim();
    }

    public String getSpecialtyCode() {
        return this.elements.label_state.getText().trim();
    }

    public String getCancelCode() {
        return this.elements.label_state.getText().trim();
    }

    public String getCancelReason() {
        return this.elements.label_state.getText().trim();
    }

    public String getCancelDate() {
        return this.elements.label_state.getText().trim();
    }


    @Override
    public String toString() {
        return getState() + " ----- " + getCancelDate();
    }

    /*
    PAGE METHODS
     */

    /*
    HELPER METHODS
    */

    /*
    ELEMENT CLASS
     */

    private class PageElements extends AbstractPageElements {

        @FindBy(xpath = ".//mat-cell[contains(@class,'State')]")
        public WebElement label_state;

        @FindBy(xpath = ".//mat-cell[contains(@class,'Market')]")
        public WebElement label_market;

        @FindBy(xpath = ".//mat-cell[contains(@class,'Contract-Id')]")
        public WebElement label_details;

        @FindBy(xpath = ".//mat-cell[contains(@class,'MPIN')]")
        public WebElement label_mpin;

        @FindBy(xpath = ".//mat-cell[contains(@class,'TIN')]")
        public WebElement label_tin;

        @FindBy(xpath = ".//mat-cell[contains(@class,'Provider')]")
        public WebElement label_provider;

        @FindBy(xpath = ".//mat-cell[contains(@class,'Specialty')]")
        public WebElement label_specialtyCode;

        @FindBy(xpath = ".//mat-cell[contains(@class,'CancelCode')]")
        public WebElement label_cancelCode;

        @FindBy(xpath = ".//mat-cell[contains(@class,'CancelReason')]")
        public WebElement label_cancelReason;

        @FindBy(xpath = ".//mat-cell[contains(@class,'CancelDate')]")
        public WebElement label_date;


        PageElements(SearchContext context) {
            super(context, 15);
        }
    }
}
