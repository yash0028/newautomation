package ui_test.page.cmd.transaction.action;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.cmd.transaction.action.row.ListPCPActionRow;
import ui_test.page.cmd.transaction.action.row.PCPActionRow;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.List;

public class PCPReassignmentTab extends ActionRequiredAbstract implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(PCPReassignmentTab.class);

    private final WebDriver driver;
    private PageElements elements;
    private ListPCPActionRow rows;

    /*
    CONSTRUCTOR
    */

    public PCPReassignmentTab(WebDriver driver) {
        super(driver);
        this.driver = driver;
        this.elements = new PageElements(driver);
        this.rows = new ListPCPActionRow(driver, elements.row_provider);
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

    public PCPActionRow getRow(int index) {
        return this.rows.get(index);
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

        @FindBy(xpath = "//mat-row")
        public List<WebElement> row_provider;

        PageElements(SearchContext context) {
            super(context);
        }
    }


}
