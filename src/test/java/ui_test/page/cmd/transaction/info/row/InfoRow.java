package ui_test.page.cmd.transaction.info.row;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.cmd.transaction.info.dialog.DialogContainer;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class InfoRow implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(InfoRow.class);

    private final WebDriver driver;
    private RowElements rowElements;

    /*
    CONSTRUCTOR
    */

    public InfoRow(WebDriver driver, WebElement row) {
        this.driver = driver;
        this.rowElements = new RowElements(row);
    }
    
    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(rowElements.label_site);
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }
    
    /*
    PAGE ACTION METHODS
     */

    public DialogContainer openDialog() {
        click(rowElements.button_status);

        return new DialogContainer(driver);
    }
    
    /*
    CLASS METHODS
    */

    public String getSite() {
        return rowElements.label_site.getText().trim();
    }

    public String getMarket() {
        return rowElements.label_market.getText().trim();
    }

    public String getUser() {
        return rowElements.label_user.getText().trim();
    }

    public String getContractId() {
        return rowElements.label_contractId.getText().trim();
    }

    public String getPaperType() {
        return rowElements.label_paperType.getText().trim();
    }

    public String getContractName() {
        return rowElements.label_contractName.getText().trim();
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

    
    /*
    PAGE METHODS
     */
    
    /*
    HELPER METHODS
    */
    
    /*
    ELEMENT CLASS
     */

    private class RowElements extends AbstractPageElements {

        @FindBy(xpath = ".//td[contains(@class,'Site')]")
        public WebElement label_site;

        @FindBy(xpath = ".//td[contains(@class,'State_Market')]")
        public WebElement label_market;

        @FindBy(xpath = ".//td[contains(@class,'User')]")
        public WebElement label_user;

        @FindBy(xpath = ".//td[contains(@class,'ContractId')]")
        public WebElement label_contractId;

        @FindBy(xpath = ".//td[contains(@class,'PaperType')]")
        public WebElement label_paperType;

        @FindBy(xpath = ".//td[contains(@class,'ContractName')]")
        public WebElement label_contractName;

        @FindBy(xpath = ".//td[contains(@class,'Status')]/span")
        public WebElement button_status;

        @FindBy(xpath = ".//td[contains(@class,'RequestType')]")
        public WebElement label_requestType;

        @FindBy(xpath = ".//td[contains(@class,'timestamp')]")
        public WebElement label_date;


        RowElements(SearchContext context) {
            super(context, 15);
        }
    }


}
