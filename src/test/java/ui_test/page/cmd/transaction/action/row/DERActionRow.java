package ui_test.page.cmd.transaction.action.row;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.List;

public class DERActionRow implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(DERActionRow.class);

    private final WebDriver driver;
    private final RowElements rowElements;
    private final DetailElements detailElements;
    private final MapProviderRow rows;

    /*
    CONSTRUCTOR
    */

    public DERActionRow(WebDriver driver, WebElement elementRow, WebElement detailRow) {
        this.driver = driver;
        this.rowElements = new RowElements(elementRow);
        this.detailElements = new DetailElements(detailRow);
        this.rows = new MapProviderRow();
        log.trace("action row created");
    }
    
    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
//        log.info("action size {}", this.detailElements.row_all.size());
        return true;
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }
    
    /*
    PAGE ACTION METHODS
     */

    public boolean expandDetails() {
        return click("expand", rowElements.button_expand);
    }
    
    /*
    CLASS METHODS
    */

    public String getState() {
        return rowElements.label_state.getText().trim();
    }

    public String getMarket() {
        return rowElements.label_market.getText().trim();
    }

    public String getContractDetails() {
        return rowElements.label_details.getText().trim();
    }

    public String getStatus() {
        return rowElements.button_status.getText().trim();
    }

    public String getRequestType() {
        return rowElements.label_requestType.getText().trim();
    }

    public String getDate() {
        return rowElements.label_date.getText().trim();
    }

    public ProviderRow getRow(int index) {
        return loadRow(index);
    }

    @Override
    public String toString() {
        return getState() + " ----- " + getDate();
    }

    /*
    PAGE METHODS
     */
    
    /*
    HELPER METHODS
    */

    private ProviderRow loadRow(int index) {

        if (index >= detailElements.row_productGroup.size()) {
            return null;
        }

        if (rows.containsKey(index)) {
            ProviderRow r = rows.get(index);
            r.expandDetails();
            return r;
        }

        ProviderRow r = new ProviderRow(driver);
        r.initRowElements(detailElements.row_productGroup.get(index));
        r.expandDetails();
        r.initDetailElements(detailElements.row_detail.get(index));

        rows.put(index, r);

        return r;
    }
    
    /*
    ELEMENT CLASS
     */

    private class RowElements extends AbstractPageElements {

        @FindBy(xpath = ".//span[text()='+']")
        public WebElement button_expand;

        @FindBy(xpath = ".//td[contains(@class,'State')]")
        public WebElement label_state;

        @FindBy(xpath = ".//td[contains(@class,'Market')]")
        public WebElement label_market;

        @FindBy(xpath = ".//td[contains(@class,'ContractDetails')]")
        public WebElement label_details;

        @FindBy(xpath = ".//td[contains(@class,'Status')]/span")
        public WebElement button_status;

        @FindBy(xpath = ".//td[contains(@class,'RequestType')]")
        public WebElement label_requestType;

        @FindBy(xpath = ".//td[contains(@class,'Timestamp')]")
        public WebElement label_date;


        RowElements(SearchContext context) {
            super(context, 15);
        }
    }

    private class DetailElements extends AbstractPageElements {


        @FindBy(xpath = ".//tr/td[contains(@class,'ProductGroup')]")
        public List<WebElement> row_productGroup;

        @FindBy(xpath = ".//td[contains(@class,'levelThree')]//tbody/tr")
        public List<WebElement> row_detail;


        DetailElements(SearchContext context) {
            super(context, 15);
        }
    }


}
