package ui_test.page.contractManagement;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.SeleniumHelper;

import java.util.List;

import static ui_test.util.SeleniumHelper.findElement;
import static ui_test.util.SeleniumHelper.findElements;

public class CMDPage {
    private static Logger log = LoggerFactory.getLogger(CMDPage.class);
    @FindBy(xpath = "//a[contains(@href,'/contract-summary/in-progress')]")
    WebElement inProgressLink;
    @FindBy(xpath = "//a[contains(@href,'/contract-summary/failed')]")
    WebElement actionRequiredLink;
    @FindBy(xpath = "//a[contains(@href,'/contract-summary/failed')]")
    WebElement errorsLink;
    @FindBy(xpath = "//a[contains(@href,'/contract-summary/success')]")
    WebElement completedLink;
    private WebDriver driver;


    public CMDPage(WebDriver driver) {
        this.driver = driver;
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(driver, 100);
        //create all web elements on the CMD page
        PageFactory.initElements(factory, this);
    }

    public static CMDPage getCMDPage() {
        return (getHeaderContractMetadata().getText().equalsIgnoreCase("Contract Management")) ? new CMDPage(SeleniumHelper.getWebDriver()) : null;
    }

    public static WebElement getHeaderContractMetadata() {
        return findElement("className", "navbar-brand");
    }

    /**
     * Verifies that we are on the contract management homepage by confirming that the url
     * is correct.
     * @return True if current page is the contract management homepage.
     */
    public boolean confirmCurrentPage() {
        return driver.getCurrentUrl().matches("^.+contract-status$");
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

    /**
     * Click in progress link on contract management homepage.
     * @return True if the link was clicked or false otherwise.
     */
    public boolean clickInProgressLink() {
        try {
            inProgressLink.click();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    /**
     * Click action required link on contract management homepage.
     * @return True if the link was clicked or false otherwise.
     */
    public boolean clickActionRequiredLink() {
        try {
            actionRequiredLink.click();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    /**
     * Click in progress link on contract management homepage.
     * @return True if the link was clicked or false otherwise.
     */
    public boolean clickErrorsLink() {
        try {
            errorsLink.click();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    /**
     * Click in progress link on contract management homepage.
     * @return True if the link was clicked or false otherwise.
     */
    public boolean clickCompletedLink() {
        try {
            completedLink.click();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
}
