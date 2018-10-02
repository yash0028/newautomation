package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
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


    private InProgressPage(WebDriver driver) {
        this.driver = driver;
        //create all web elements on the in progress page
        PageFactory.initElements(driver, this);
    }

    public static InProgressPage getInProgressPage() {
        return (getHeaderContractManagement().getText().equalsIgnoreCase("Contract Management")) ? new InProgressPage(SeleniumHelper.getWebDriver()) : null;
    }

    public static WebElement getHeaderContractManagement() {
        return findElement("tagName", "h3");
    }

    public static List<WebElement> getTableRows() {
        return findElements("className","mat-table");
    }






}
