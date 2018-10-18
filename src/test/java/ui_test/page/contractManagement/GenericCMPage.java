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
     * Gets the rows in the table.
     *
     * @return A list of WebElements with the rows in the table.
     */
    public List<WebElement> getTableRows() {
        return this.table.findElements(By.xpath("//tbody/tr[contains(@class, 'example-element-row')]"));
    }

    public boolean verifyRandomRowContent() {
        List<WebElement> allRows = getTableRows();

        //select rows 1, 2, 3, 5, 8 in the table and verify that each row has data in each column.
        //select the first row and verify its columns

        return false;
    }

    /**
     * Get the date column in the table.
     *
     * @return A list of WebElements with the dates from the date column.
     */
    public List<WebElement> getDateColumn() {
        return this.table.findElements(By.xpath("//tbody/tr/td[contains(@class,'cdk-column-timestamp')]"));
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
     * @return
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

//    public boolean clickBackButton() {
//
//    }


}
