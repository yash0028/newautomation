package ui_test.page.exari.home;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.home.site.SiteManager;
import ui_test.page.exari.home.site.subpages.GenericSitePage;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class DashboardPage implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(DashboardPage.class);

    /*
    LOCATORS
     */
    private final WebDriver driver;
    @FindBy(xpath = "//a[@title='My Sites']")
    public WebElement SiteFinder;
    @FindBy(xpath = "//div[@class='title' and contains(text(),'My Contracts')]")
    public WebElement MyContract_title;
    @FindBy(xpath = "//h3[@title='SPA - PAT ' and text()='SPA PAT.xml']//following-sibling::div/span[@title='Create New']/a")
    public WebElement SPA_PATTemplate;
    @FindBy(xpath = "//div[@class='bd yui-menu-body-scrolled']/ul/li")
    public WebElement AnySmartTemplate_DropDown;


    /* ********************************  LOCATORS **************************************** */
    public String xpath = "//div[@class='bd yui-menu-body-scrolled']/ul/li";

    /*@FindBy(xpath = "//a[contains(@title,'TEST')]")
    public WebElement StageTest;*/
    @FindBy(xpath = ".//div[@class='bd yui-menu-body-scrolled']/ul/li/a[(text()='SMGA')]")
    public WebElement Smga;
    @Deprecated
    @FindBy(xpath = "//div[@class='toolbar flat-button']/div/span[6]")
    public WebElement AnyStatus;
    @Deprecated
    public String AnyStatusXpath = "//div[@class='bd']/ul/li";

    @FindBy(xpath = "//span[contains(@title,'Dashboard')]")
    private WebElement labelDashboard;
    ////li[@id='yui-gen95']/a[@class='yuimenuitemlabel' and text()='SMGA']
    @FindBy(xpath = "//span[text()='Sites']")
    private WebElement headerTabSite;
    @FindBy(xpath = "//a[@title='Test']")
    private WebElement headerTabSiteOptionTest;


    // SMGA buttonTerminate
    @FindBy(xpath = "//a[@title='Northeast UHN']")
    private WebElement headerTabSiteOptionNortheastUHN;
    @FindBy(xpath = "//a[@title='Central UHN']")
    private WebElement headerTabSiteOptionCentralUHN;

    // Site value
    private GenericSitePage sitePage;

    /*
    CONSTRUCTOR
     */

    public DashboardPage(WebDriver driver) {
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(driver, IWebInteract.TIMEOUT);
        PageFactory.initElements(factory, this);
        this.driver = driver;
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelDashboard);
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    CLASS METHODS
     */

    public boolean setSiteEnvironment2Test() {
        click("site tab", headerTabSite);
        click("test site", headerTabSiteOptionTest);
        sitePage = getSiteManager().getTestSitePage();
        return sitePage.confirmCurrentPage();
    }

    public boolean setSiteEnvironment2NortheastUHN() {
        click("site tab", headerTabSite);
        click("northeast uhn", headerTabSiteOptionNortheastUHN);
        sitePage = getSiteManager().getNortheastUHNSitePage();
        return sitePage.confirmCurrentPage();
    }

    public boolean setSiteEnvironment2CentralUHN() {
        click("site tab", headerTabSite);
        click("central uhn", headerTabSiteOptionCentralUHN);
        sitePage = getSiteManager().getCentralUHNSitePage();
        return sitePage.confirmCurrentPage();
    }

    public boolean setSiteEnvironmentByString(String env) {
        if (env.toLowerCase().contains("northeast")) {
            return setSiteEnvironment2NortheastUHN();
        }

        if (env.toLowerCase().contains("central")) {
            return setSiteEnvironment2CentralUHN();
        }

        return setSiteEnvironment2Test();
    }

    /* ********************************  PAGES **************************************** */


    public SiteManager getSiteManager() {
        return new SiteManager(driver);
    }

    public GenericSitePage getSitePage() {
        return sitePage;
    }

}// End of class
