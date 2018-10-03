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
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
 * Created by dtimaul on 9/26/18.
 */
public class ActionRequiredPage {
    private static Logger log = LoggerFactory.getLogger(ActionRequiredPage.class);
    private WebDriver driver;

    @FindBy(how = How.XPATH, using = "//table[@class='mat-table']")
    private WebElement table;

    @FindBy(xpath = "//div[@class = 'mat-select-arrow']")
    private WebElement tableSizeSelectorButton;

    @FindBy(xpath = "//span[@class = 'mat-option-text' and text()='5']")
    private WebElement tableSize5Button;

    @FindBy(xpath = "//span[@class = 'mat-option-text' and text()='10']")
    private WebElement tableSize10Button;

    @FindBy(xpath = "//span[@class='mat-option-text' and text()='25']")
    private WebElement tableSize25Button;

    /**
     * Creates the action required page driver and its web elements.
     *
     * @param driver Webdriver currently being used.
     */
    public ActionRequiredPage(WebDriver driver) {
        this.driver = driver;
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(driver, 100);
        //create all web elements on the CMD page
        PageFactory.initElements(factory, this);
    }

    /**
     * Confirms that the current page is the in progress page by verifying the URL.
     *
     * @return True if on the in progress page or false otherwise.
     */
    public boolean confirmCurrentPage() {
        return driver.getCurrentUrl().matches("^.+in-progress$");
    }

    /**
     * Gets the rows in the table.
     *
     * @return A list of WebElements with the rows in the table.
     */
    public List<WebElement> getTableRows() {
        return this.table.findElements(By.xpath("//tbody/tr[contains(@class, 'example-element-row')]"));
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


}
