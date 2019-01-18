package ui_test.page.contractManagement;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.List;

public class CMDPage implements IFactoryPage, IWebInteract {
    private static Logger log = LoggerFactory.getLogger(CMDPage.class);
    @FindBy(xpath = "//a[contains(@href,'/contract-summary/in-progress')]")
    WebElement inProgressLink;

    @FindBy(xpath = "//h3[contains(text(),'Action')]/ancestor::mat-card/p/a")
    WebElement actionRequiredLink;

    @FindBy(xpath = "//a[contains(@href,'/contract-summary/failed')]")
    WebElement errorsLink;

    @FindBy(xpath = "//a[contains(@href,'/contract-summary/success')]")
    WebElement completedLink;

    @FindBy(className = "navbar-brand")
    WebElement headerContractManagemet;

    @FindBy(tagName = "h3")
    List<WebElement> actionItems;

    @FindBy(className = "nav-item")
    List<WebElement> navHeaders;

    @FindBy(className = "statnumber")
    List<WebElement> transCount;

    private WebDriver driver;

    /*
    CONSTRUCTOR
     */

    public CMDPage(WebDriver driver) {
        this.driver = driver;
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(driver, 100);
        //create all web elements on the CMD page
        PageFactory.initElements(factory, this);
    }

    /*
    FACTORY PAGE METHODS
     */

    /**
     * Verifies that we are on the contractPage management homepage by confirming that the url
     * is correct.
     *
     * @return True if current page is the contractPage management homepage.
     */
    @Override
    public boolean confirmCurrentPage() {
        return isVisible(inProgressLink) && driver.getCurrentUrl().matches("^.+contract-status$");
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    CLASS METHODS
     */

    public String getHeaderContractManagement(){return headerContractManagemet.getText();}

    public List<WebElement> getActionItems() {
        return actionItems;
    }

    public List<WebElement> getNavHeaders() {
        return navHeaders;
    }

    public int getTransactionsCount(String actionItem) {
        switch(actionItem){
            case "completed":
                return Integer.parseInt(transCount.get(0).getText());
            case "in-progress":
                return Integer.parseInt(transCount.get(1).getText());
            case "action required":
                return Integer.parseInt(transCount.get(2).getText());
            case "errors":
                return Integer.parseInt(transCount.get(3).getText());
            default:
                return 0;
        }
    }

    public ActionRequiredPage getActionRequiredPage() {
        return new ActionRequiredPage(driver);
    }

    /**
     * Click in progress link on contractPage management homepage.
     *
     * @return True if the link was clicked or false otherwise.
     */
    public boolean clickInProgressLink() {
        return click("in progress button", inProgressLink);
    }

    /**
     * Click action required link on contractPage management homepage.
     *
     * @return True if the link was clicked or false otherwise.
     */
    public boolean clickActionRequiredLink() {
        return click("action required button", actionRequiredLink);
    }

    /**
     * Click in errors link on contractPage management homepage.
     *
     * @return True if the link was clicked or false otherwise.
     */
    public boolean clickErrorsLink() {
        return click("errors button", errorsLink);
    }

    /**
     * Click in completed link on contractPage management homepage.
     *
     * @return True if the link was clicked or false otherwise.
     */
    public boolean clickCompletedLink() {
        return click("completed button", completedLink);
    }
}
