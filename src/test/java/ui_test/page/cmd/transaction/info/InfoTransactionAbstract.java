package ui_test.page.cmd.transaction.info;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.cmd.transaction.info.row.InfoRow;
import ui_test.page.cmd.transaction.info.row.ListInfoRow;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class InfoTransactionAbstract implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(InfoTransactionAbstract.class);

    protected final WebDriver driver;
    protected PageElements pageElements;
    protected ListInfoRow rows;

    /*
    CONSTRUCTOR
    */

    public InfoTransactionAbstract(WebDriver driver) {
        this.driver = driver;
        this.pageElements = new PageElements(driver);
        this.rows = new ListInfoRow(driver, this.pageElements.row_body);

    }
    
    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(pageElements.row_header);
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }
    
    /*
    PAGE ACTION METHODS
     */

    public boolean clickToLastPage() {
        return click("last page", pageElements.button_lastPage);
    }

    public boolean clickToFirstPage() {
        return click("first page", pageElements.button_firstPage);
    }

    public boolean clickToNextPage() {
        return click("next page", pageElements.button_nextPage);
    }

    public boolean clickToPreviousPage() {
        return click("previous page", pageElements.button_previousPage);
    }
    
    /*
    CLASS METHODS
    */

    public Integer getExpectedPageSize() {
        return Integer.valueOf(pageElements.label_pageSize.getText().trim());
    }

    public Integer getFuzzyPageNumber() {
        String line;
        try {
            line = pageElements.label_range.getText();
        } catch (Exception e) {
            return -1;
        }

        Matcher m = Pattern.compile("(\\d+) - (\\d+) of (\\d+)").matcher(line.trim());

        Integer size, start, end, total;
        size = this.getExpectedPageSize();
        if (size == null) {
            return -1;
        }
        try {
            start = Integer.valueOf(m.group(0));
            end = Integer.valueOf(m.group(0));
            total = Integer.valueOf(m.group(0));
        } catch (Exception e) {
            return -1;
        }


        return end / size;
    }

    public InfoRow getRow(int index) {
        if (index >= this.rows.size()) {
            return null;
        }
        return this.rows.get(index);
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
    protected class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//div/thead/tr")
        public WebElement row_header;

        @FindBy(xpath = "//tbody/tr")
        public List<WebElement> row_body;

        @FindBy(xpath = "//div[contains(text(),'Items per page')]/following-sibling::div")
        public WebElement label_pageSize;

        @FindBy(xpath = "//div[contains(text(),'Items per page')]/following-sibling::div")
        public WebElement dropdown_pageSize;

        @FindBy(xpath = "//div[contains(@class,'mat-paginator-range-label') and contains(text(),' of ')]")
        public WebElement label_range;

        @FindBy(xpath = "//button[contains(@ aria-label,'Next')]")
        public WebElement button_nextPage;

        @FindBy(xpath = "//button[contains(@ aria-label,'Previous')]")
        public WebElement button_previousPage;

        @FindBy(xpath = "//button[contains(@ aria-label,'Last')]")
        public WebElement button_lastPage;

        @FindBy(xpath = "//button[contains(@ aria-label,'First')]")
        public WebElement button_firstPage;

        PageElements(SearchContext context) {
            super(context);
        }
    }

}
