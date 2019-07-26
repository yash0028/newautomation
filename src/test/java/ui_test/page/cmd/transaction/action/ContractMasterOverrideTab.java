package ui_test.page.cmd.transaction.action;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.cmd.transaction.action.row.ActionRow;
import ui_test.page.cmd.transaction.action.row.ListActionRow;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.List;

public class ContractMasterOverrideTab extends ActionRequiredAbstract implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(ContractMasterOverrideTab.class);

    private final WebDriver driver;
    private PageElements elements;
    private ListActionRow rows;

    /*
    CONSTRUCTOR
    */

    public ContractMasterOverrideTab(WebDriver driver) {
        super(driver);
        this.driver = driver;
        this.elements = new PageElements(driver);
        this.rows = new ListActionRow(driver, this.elements.row_element, this.elements.row_detail);
        log.trace("contract master override page created");
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
    
    /*
    CLASS METHODS
    */

    public ActionRow getRow(int index) {
        return rows.get(index);
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

    /**
     * private class to contain the webelements. This allows us to reload the context as needed and keeps the code clean.
     */
    private class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//tbody/tr[contains(@class,'example-element-row')]")
        public List<WebElement> row_element;

        @FindBy(xpath = "//tbody/tr[contains(@class,'example-detail-row')]/td[contains(@class,'levelTwo')]")
        public List<WebElement> row_detail;

        PageElements(SearchContext context) {
            super(context);
        }
    }


}
