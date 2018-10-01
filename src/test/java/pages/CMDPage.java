package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import utils.SeleniumHelper;

import static utils.SeleniumHelper.findElements;

import java.util.List;
import java.util.logging.Logger;

import static utils.SeleniumHelper.findElement;

public class CMDPage {

    private static Logger logger = Logger.getLogger("CMDPage");
    private WebDriver driver;
    private By inProgressLink = By.xpath("//a[contains(@href,'/contract-summary/in-progress')]");
    private By actionRequiredLink;
    private By errorsLink = By.xpath("//a[contains(@href,'/contract-summary/failed')]");


    private CMDPage(WebDriver driver) {
        this.driver = driver;
    }

    public static CMDPage getCMDPage() {
        return (getHeaderContractMetadata().getText().equalsIgnoreCase("Contract Management")) ? new CMDPage(SeleniumHelper.getWebDriver()) : null;
    }

    public static WebElement getHeaderContractMetadata() {
        return findElement("className", "navbar-brand");
    }

    public List<WebElement> getSubHeaders() {
        return findElements("tagName", "h3");
    }

    public List<WebElement> getNavHeaders() {
        return findElements("className", "nav-item");
    }

    public List<WebElement> getTransactionsCount() {
        return findElements("className", "statnumber");
    }

    public boolean clickInProgressButton() {
        try {
            driver.findElement(inProgressLink).click();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
}
