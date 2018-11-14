package ui_test.page.exari.navigation;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.home.site.SiteManager;
import ui_test.page.exari.home.site.subpages.CentralUHNSitePage;
import ui_test.page.exari.home.site.subpages.GenericSitePage;
import ui_test.page.exari.home.site.subpages.NortheastUHNSitePage;
import ui_test.page.exari.home.site.subpages.TestSitePage;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class ExariNavigationPanel implements IWebInteract, IFactoryPage {
    private static final Logger log = LoggerFactory.getLogger(ExariNavigationPanel.class);

    private final WebDriver driver;

    /*
    LOCATORS - HEADER TABS
     */

    @FindBy(xpath = "//span[text()='Sites']")
    private WebElement headerTabSite;

    /*
    LOCATORS - SITE OPTION
     */

    @FindBy(xpath = "//a[@title='Test']")
    private WebElement headerTabSiteOptionTest;

    @FindBy(xpath = "//a[@title='Northeast UHN']")
    private WebElement headerTabSiteOptionNortheastUHN;

    @FindBy(xpath = "//a[@title='Central UHN']")
    private WebElement headerTabSiteOptionCentralUHN;



    /*
    CONSTRUCTOR
     */

    public ExariNavigationPanel(WebDriver driver) {
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(driver, IWebInteract.TIMEOUT);
        PageFactory.initElements(factory, this);
        this.driver = driver;
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(headerTabSite);
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    CLASS METHODS
     */

    public TestSitePage setSiteEnvironment2Test() {
        click("site tab", headerTabSite);
        click("test site", headerTabSiteOptionTest);
        return getSiteManager().getTestSitePage();
    }

    public NortheastUHNSitePage setSiteEnvironment2NortheastUHN() {
        click("site tab", headerTabSite);
        click("northeast uhn", headerTabSiteOptionNortheastUHN);
        return getSiteManager().getNortheastUHNSitePage();
    }

    public CentralUHNSitePage setSiteEnvironment2CentralUHN() {
        click("site tab", headerTabSite);
        click("central uhn", headerTabSiteOptionCentralUHN);
        return getSiteManager().getCentralUHNSitePage();
    }

    public GenericSitePage setSiteEnvironment(SiteManager.Site site) {
        switch (site) {
            case CENTRAL:
                return setSiteEnvironment2CentralUHN();
            case NORTHEAST:
                return setSiteEnvironment2NortheastUHN();
            default:
                return setSiteEnvironment2Test();
        }
    }

    public GenericSitePage setSiteEnvironment(String site) {
        return setSiteEnvironment(SiteManager.Site.string2Site(site));
    }

    /*
    PAGE METHODS
     */

    public SiteManager getSiteManager() {
        return new SiteManager(driver);
    }


}
