package ui_test.page.cmd.transaction.action.row;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.cmd.transaction.action.modal.ContractMasterOverrideModal;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class ProductRow implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(ProductRow.class);

    private final WebDriver driver;
    private RowElements rowElements;
    private DetailElements detailElements;

    /*
    CONSTRUCTOR
    */

    ProductRow(WebDriver driver) {
        this.driver = driver;
//        this.rowElements = new RowElements(elementRow);
//        this.detailElements = new DetailElements(detailRow);
        log.trace("product row created");
    }
    
    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        highlight(rowElements.button_expand);
        return true;
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }
    
    /*
    PAGE ACTION METHODS
     */

    public ContractMasterOverrideModal openEdit() {
        click("edit button", detailElements.button_edit);
        return new ContractMasterOverrideModal(driver);
    }
    
    /*
    CLASS METHODS
    */

    public String getFeeSchedule() {
        return detailElements.label_feeSchedule.getText().trim();
    }

    public String getProductGroup() {
        return detailElements.label_productGroup.getText().trim();
    }

    public String getType() {
        return detailElements.label_type.getText().trim();
    }

    public String getStatus() {
        return detailElements.label_status.getText().trim();
    }

    /*
    PAGE METHODS
     */
    
    /*
    HELPER METHODS
    */

    boolean expandDetails() {
        return click("expand", rowElements.button_expand);
    }

    void initRowElements(WebElement elementRow) {
        this.rowElements = new RowElements(elementRow);
    }

    void initDetailElements(WebElement detailRow) {
        this.detailElements = new DetailElements(detailRow);
    }
    
    /*
    ELEMENT CLASS
     */

    private class RowElements extends AbstractPageElements {

        @FindBy(xpath = ".//span[text()='+']")
        public WebElement button_expand;


        RowElements(SearchContext context) {
            super(context, 15);
        }
    }

    private class DetailElements extends AbstractPageElements {

        @FindBy(xpath = ".//span[contains(text(),'NDB Fee Schedule')]")
        public WebElement label_feeSchedule;

        @FindBy(xpath = ".//span[contains(text(),'NDB Product Group')]")
        public WebElement label_productGroup;

        @FindBy(xpath = ".//td[contains(@class,'Type')]")
        public WebElement label_type;

        @FindBy(xpath = ".//td[contains(@class,'Status')]")
        public WebElement label_status;

        @FindBy(xpath = ".//button[contains(text(),'Edit')]")
        public WebElement button_edit;

        @FindBy(xpath = ".//button[contains(text(),'Load')]")
        public WebElement button_load;


        DetailElements(SearchContext context) {
            super(context, 15);
        }
    }


}
