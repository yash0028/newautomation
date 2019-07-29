package ui_test.page.cmd.transaction.action.row;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.cmd.transaction.action.modal.DownstreamErrorModal;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class ProviderRow implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(ProviderRow.class);

    private final WebDriver driver;
    private RowElements rowElements;
    private DetailElements detailElements;

    /*
    CONSTRUCTOR
    */

    ProviderRow(WebDriver driver) {
        this.driver = driver;
//        this.rowElements = new RowElements(elementRow);
//        this.detailElements = new DetailElements(detailRow);
        log.trace("provider row created");
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

    public DownstreamErrorModal openResolveModal() {
        return click("resolve button", detailElements.button_resolve)
                ? new DownstreamErrorModal(driver)
                : null;
    }
    
    /*
    CLASS METHODS
    */

    public String getName() {
        return detailElements.label_name.getText().trim();
    }

    public String getMPIN() {
        return detailElements.label_mpin.getText().trim();
    }

    public String getTIN() {
        return detailElements.label_tin.getText().trim();
    }

    public String getStatus() {
        return detailElements.label_status.getText().trim();
    }

    public String getRetryCount() {
        return detailElements.label_retry.getText().trim();
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

        @FindBy(xpath = ".//td[contains(@class,'Name')]")
        public WebElement label_name;

        @FindBy(xpath = ".//td[contains(@class,'MPIN')]")
        public WebElement label_mpin;

        @FindBy(xpath = ".//td[contains(@class,'TIN')]")
        public WebElement label_tin;

        @FindBy(xpath = ".//td[contains(@class,'Status')]")
        public WebElement label_status;

        @FindBy(xpath = ".//td[contains(@class,'retry')]")
        public WebElement label_retry;

        @FindBy(xpath = ".//button[contains(text(),'Resolve')]")
        public WebElement button_resolve;


        DetailElements(SearchContext context) {
            super(context, 15);
        }
    }


}
