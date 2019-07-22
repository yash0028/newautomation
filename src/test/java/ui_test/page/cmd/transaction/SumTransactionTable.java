package ui_test.page.cmd.transaction;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.cmd.transaction.row.InfoRow;
import ui_test.page.cmd.transaction.row.ListActionRow;
import ui_test.page.cmd.transaction.row.ListInfoRow;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class SumTransactionTable implements IFactoryPage, IWebInteract, ITransactionTable {
    private static final Logger log = LoggerFactory.getLogger(SumTransactionTable.class);

    private final WebDriver driver;
    protected PageElements transactionElements;

    /*
    CONSTRUCTOR
    */

    public SumTransactionTable(WebDriver driver) {
        this.driver = driver;
        this.transactionElements = new PageElements(driver);
    }
    
    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(transactionElements.row_header);
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
    
    /*
    PAGE METHODS
     */
    
    /*
    HELPER METHODS
    */
    
    /*
    ELEMENT CLASS
     */

    public static class A extends SumTransactionTable {

        protected final WebDriver driver;
        protected ListInfoRow rows;

        public A(WebDriver driver) {
            super(driver);
            this.driver = driver;
            this.rows = new ListInfoRow(driver, this.transactionElements.row_body);
        }

        @Override
        public Integer getExpectedPageSize() {
            return Integer.valueOf(transactionElements.label_pageSize.getText().trim());
        }

        @Override
        public Integer getFuzzyPageNumber() {
            String line;
            try {
                line = transactionElements.label_range.getText();
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
    }

    public static class B extends SumTransactionTable {

        protected final WebDriver driver;
        protected ListActionRow rows;

        public B(WebDriver driver) {
            super(driver);
            this.driver = driver;
            this.rows = new ListActionRow(driver, this.transactionElements.row_body);
        }

        public boolean changePageSize(int pageSize) {
            log.error("TODO");
            return false;
        }

        @Override
        public Integer getExpectedPageSize() {
            return Integer.valueOf(transactionElements.dropdown_pageSize.getText().trim());
        }

        @Override
        public Integer getFuzzyPageNumber() {
            String line;
            try {
                line = transactionElements.label_range.getText();
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
    }

    /**
     * private class to contain the webelements. This allows us to reload the context as needed and keeps the code clean.
     */
    protected class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//div/thead/tr")
        public WebElement row_header;

        @FindBy(xpath = "//tbody/tr")
        public List<WebElement> row_body;

        @FindBy(xpath = "//div[contains(text(),'Items per page')]/following-sibling::div")
        private WebElement label_pageSize;

        @FindBy(xpath = "//div[contains(text(),'Items per page')]/following-sibling::div")
        private WebElement dropdown_pageSize;

        @FindBy(xpath = "//div[contains(@class,'mat-paginator-range-label') and contains(text(),' of ')]")
        private WebElement label_range;

        PageElements(SearchContext context) {
            super(context);
        }
    }

}
