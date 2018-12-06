package ui_test.page.contractManagement;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.stream.Collectors;

/**
 * Represents a generic page on the Contract Management web application. Can use generic methods on completed page,
 * in-progress page, action required page, and errors page.
 * Created by dtimaul on 10/18/18.
 */
public abstract class GenericCMPage implements IFactoryPage, IWebInteract {

    /*
    PROTECTED VARIABLES
     */

    protected final WebDriver driver;

    /*
    LOCATORS
     */


    @FindBy(how = How.XPATH, using = "//table[@class='mat-table']")
    protected WebElement table;

    @FindBy(xpath = "//table[1 and @class='mat-table']/tbody/tr[contains(@class, 'example-element-row')]")
    protected List<WebElement> primeTableRows;

    @FindBy(xpath = "//table[1 and @class='mat-table']/tbody/tr[contains(@class, 'example-detail-row')]//*[contains(@class, 'example-element-row')]")
    protected List<WebElement> secondaryTableRows;

    @FindBy(xpath = "//table[@class='mat-table']/tbody/tr[contains(@class, 'example-detail-row')][1]//*[contains(@class, 'example-element-row')]")
    protected List<WebElement> firstRowProductGroups;

    @FindBy(xpath = "//table[1 and @class='mat-table']/tbody/tr[contains(@class, 'example-element-row')]/td[contains(@class,'cdk-column-timestamp')]")
    protected List<WebElement> dateColumnList;

    @FindBy(xpath = "//div[@class = 'mat-select-arrow']")
    protected WebElement tableSizeSelectorButton;

    @FindBy(xpath = "//span[@class = 'mat-option-text' and text()='5']")
    protected WebElement tableSize5Button;

    @FindBy(xpath = "//span[@class = 'mat-option-text' and text()='10']")
    protected WebElement tableSize10Button;

    @FindBy(xpath = "//span[@class='mat-option-text' and text()='25']")
    protected WebElement tableSize25Button;

    @FindBy(xpath = "//button[contains(text(),'Back')]")
    protected WebElement buttonBack;

    /*
    CONSTRUCTOR
     */

    /**
     * Creates the action required page driver and its web elements.
     *
     * @param driver Webdriver currently being used.
     */
    public GenericCMPage(WebDriver driver) {
        this.driver = driver;
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(driver, IWebInteract.TIMEOUT);
        //create all web elements on the CMD page
        PageFactory.initElements(factory, this);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    CLASS METHODS
     */

    /**
     * Gets all of the rows in the table.
     * @return A list of WebElements with the rows in the table.
     */
    public List<WebElement> getTableRows() {
        return primeTableRows;

    }

    /**
     * Verify that all fields in a single row in the table contains data and is not empty.
     *
     * @param element A WebElement containing the row data for a table row.
     * @return True if the all of the fields contain data in the table row or false otherwise.
     */
    public Boolean verifySingleRow(WebElement element) {
        return element.findElements(By.xpath("//td")).stream().noneMatch(element1 -> element1.getText().isEmpty());
    }

    /**
     * Verify that for a single row in the table contains data for each field specified by the list of indexes.
     *
     * @param element      A WebElement containing the row data for a table row.
     * @param confirmIndex list containing the indexes that we want to verify its contents.
     * @return True if the specified fields contain data in the table row of false otherwise.
     */
    public Boolean verifySingleRow(WebElement element, List<Integer> confirmIndex) {
        Boolean result = true;
        List<WebElement> tableRowData = element.findElements(By.xpath("//td"));

        // check if text is found at the specified index
        for (Integer i : confirmIndex) {
            if (tableRowData.get(i).getText().isEmpty()) ;
            result = false;
        }
        return result;
    }

    public boolean verifyAllTableRowFieldContents() {
        return primeTableRows.stream().allMatch(this::verifySingleRow);
    }

    /**
     * Get the date column in the table.
     *
     * @return A list of WebElements with the dates from the date column.
     */
    public List<WebElement> getDateColumn() {
        return this.dateColumnList;
    }

    /**
     * Selects the option to view 25 rows at a time on the table.
     *
     * @return True if the 25 button was clicked or false otherwise.
     */
    public boolean selectTableSize25() {
        try {
            this.tableSizeSelectorButton.click();
            WebDriverWait wait = new WebDriverWait(driver, 100);
            wait.until(ExpectedConditions.visibilityOf(tableSize25Button));
            tableSize25Button.click();
        } catch (Exception e) {
            return false;
        }
        return true;
    }

    /**
     * Verifies that the rows in the table are sorted in ascending order or descending order by date.
     *
     * @param sortAccending True if verifying that the rows are sorted by date in ascending order or false if descending order.
     * @return true if dates
     */
    public boolean verifyTableDateSordOrder(Boolean sortAccending) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MMM d, yyyy", Locale.ENGLISH);

        // Create list of strings with the date from each row in the table
        List<LocalDate> dates = this.getDateColumn().stream() //get table data
                .map(webElement -> webElement.getText()) // convert Web element to string
                .map(s -> LocalDate.parse(s, formatter)) // convert string to date
                .collect(Collectors.toList()); // put all dates back into a list

        if (sortAccending) {
            // Verify that the rows in the table are sorted by date from oldest to newest
            return dates.stream().sorted().collect(Collectors.toList()).equals(dates);
        } else {
            // Verify that the rows in the table are sorted by date from newest to oldest
            return dates.stream().sorted(Comparator.reverseOrder()).collect(Collectors.toList()).equals(dates);
        }
    }
//
//    /**
//     * Gets the count of product groups for a single contract ID row.
//     *
//     * @param rowNumber The row number of the contract ID.
//     * @return The count of product groups.
//     */
//    public int getProductGroupCount(int rowNumber) {
//        return firstRowProductGroups.size();
//    }

    /**
     * Gets the count of product groups for the first contract ID row.
     *
     * @return The count of product groups.
     */
    public int getFirstRowProductGroupCount() {
        return firstRowProductGroups.size();
    }
//
//    /**
//     *
//     * @param rowNumber
//     * @return
//     */
//    public List<WebElement> getProductGroups(int rowNumber) {
//        WebElement row = getTableRows().get(rowNumber);
//
//        click("click table row", row);
//
//        //find by element and find table and count the number of tr in the table.
//        WebElement tableInRow = row.findElement(By.xpath("//table[@class='mat-table']"));
//        List<WebElement> productGroups = tableInRow.findElements(By.xpath("//tbody/tr[contains(@class, 'example-element-row')]"));
//
//        return productGroups;
//    }

    /**
     * Clicks a single row on the table.
     *
     * @param rowNumber The row number to click.
     * @return True if the row was clicked or false otherwise.
     */
    public boolean clickTableRow(int rowNumber) {
        return click("click table row: " + rowNumber, primeTableRows.get(rowNumber));
    }

//    public boolean clickBackButton() {
//
//    }


}
