package ui_test.page.contractManagement;

import general_test.util.ISharedValuePoster;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.home.site.SiteManager;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.List;
import java.util.Map;

public class CMDPage implements IFactoryPage, IWebInteract, ISharedValuePoster{
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

    @FindBy(xpath = "//div[contains(@class, 'search-bar row')]/input[contains(@class, 'w-25 ng-untouched ng-pristine ng-valid')]")
    WebElement searchTransactionsTextBox;

    @FindBy(xpath = "//button[contains(text(),'Search')]")
    WebElement searchButton;

    @FindBy(xpath = "//tr[contains(@class, 'mat-row')]/td[contains(@class,'Site')]")
    WebElement site;

    @FindBy(xpath = "//tr[contains(@class, 'mat-row')]/td[contains(@class,'State_Market')]")
    WebElement state_market;

    @FindBy(xpath = "//tr[contains(@class, 'mat-row')]/td[contains(@class,'ContractId')]")
    WebElement contractId;

    @FindBy(xpath = "//tr[contains(@class, 'mat-row')]/td[contains(@class,'PaperType')]")
    WebElement paperType;

    @FindBy(xpath = "//tr[contains(@class, 'mat-row')]/td[contains(@class,'ContractName')]")
    WebElement contractName;

    @FindBy(xpath = "//tr[contains(@class, 'mat-row')]/td[contains(@class,'Status')]")
    WebElement status;

    @FindBy(xpath = "//tr[contains(@class, 'mat-row')]/td[contains(@class,'RequestType')]")
    WebElement requestType;

    @FindBy(xpath = "//tr[contains(@class, 'mat-row')]/td[contains(@class,'User')]")
    WebElement user;

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
//        waitForPageLoad(this.driver);
        log.info(driver.getCurrentUrl());
        return isVisible(searchTransactionsTextBox) && driver.getCurrentUrl().contains("contract-status");
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

    /**
     * Click on Search Button in contractPage management homepage.
     *
     * @return True if the link was clicked or false otherwise.
     */
    public boolean clickSearchButton() {
        return click("Search button", searchButton);
    }

    /**
     * Enter Contract Number in Search Transactions TextBox in contractPage management homepage.
     *
     * @return True if the link was clicked or false otherwise.
     */
    public boolean enterContractNumber(){
        return sendKeys(searchTransactionsTextBox, getSharedObject("contractNumber"));
    }

    public void searchContract(){
        enterContractNumber();
        assert clickSearchButton();
    }

    public void validateContractDetails(Map<String, String> params){
        Assert.assertTrue("Contract Id value didn't match", contractId.getText().contains(getSharedObject("contractNumber")));
        for (String paramKey : params.keySet()) {
            switch(paramKey.toUpperCase())
            {
                case "SITE":
                    String siteName = SiteManager.Site.string2Site(params.get(paramKey)).toString();
                    Assert.assertTrue(paramKey+" value didn't match", site.getText().equalsIgnoreCase(siteName));
                    break;
                case "STATE/MARKET":
                    Assert.assertTrue(paramKey+" value didn't match", state_market.getText().equalsIgnoreCase(params.get(paramKey)));
                    break;
                case "USER":
                    Assert.assertTrue(paramKey+" value didn't match", user.getText().equalsIgnoreCase(params.get(paramKey)));
                    break;
                case "PAPERTYPE":
                    Assert.assertTrue(paramKey+" value didn't match", paperType.getText().equalsIgnoreCase(params.get(paramKey)));
                    break;
                case "CONTRACTNAME":
                    Assert.assertTrue(paramKey+" value didn't match", contractName.getText().contains(params.get(paramKey)));
                    break;
                case "STATUS":
                    Assert.assertTrue(paramKey+" value didn't match", status.getText().equalsIgnoreCase(params.get(paramKey)));
                    break;
                case "REQUEST TYPE":
                    Assert.assertTrue(paramKey+" value didn't match", requestType.getText().equalsIgnoreCase(params.get(paramKey)));
                    break;
                default:
                    log.info("Missing Validation Item");
                    break;
            }
        }
    }
}
