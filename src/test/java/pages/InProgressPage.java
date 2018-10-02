package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import utils.SeleniumHelper;
import java.util.List;
import java.util.logging.Logger;

import static utils.SeleniumHelper.findElements;
import  static  utils.SeleniumHelper.findElement;

/**
 * Created by dtimaul on 10/1/18.
 */
public class InProgressPage {
    private static Logger logger = Logger.getLogger("InProgressPage");
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


    public InProgressPage(WebDriver driver) {
        this.driver = driver;
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(driver, 100);
        //create all web elements on the CMD page
        PageFactory.initElements(factory, this);
    }


    public boolean confirmCurrentPage() {
        return driver.getCurrentUrl().matches("^.+in-progress$");
    }

    public List<WebElement> getTableRows() {
        return this.table.findElements(By.xpath("//tbody/tr[contains(@class, 'example-element-row')]"));
    }

    public List<WebElement> getDateColumn() {
        return this.table.findElements(By.xpath("//tbody/tr/td[contains(@class,'cdk-column-timestamp')]"));
    }

    public boolean selectTableSize25() {
        try {
            this.tableSizeSelectorButton.click();
            WebDriverWait wait = new WebDriverWait(driver, 100);
            wait.until(ExpectedConditions.visibilityOf(tableSize25Button));
            tableSize25Button.click();
        } catch (Exception e){
            return false;
        }
        return true;
    }
}
