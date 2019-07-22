package ui_test.page.cmd.transaction.row;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class ActionRow implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(ActionRow.class);

    private final WebDriver driver;
    private RowElements rowElements;

    /*
    CONSTRUCTOR
    */

    public ActionRow(WebDriver driver, WebElement row) {
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
    
    /*
    CLASS METHODS
    */

    public String getSite() {
        return rowElements.label_site.getText().trim();
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
