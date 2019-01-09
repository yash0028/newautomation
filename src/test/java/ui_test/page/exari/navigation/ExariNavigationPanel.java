package ui_test.page.exari.navigation;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.home.site.SiteManager;
import ui_test.page.exari.home.site.subpages.*;
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

    @FindBy(xpath = "//a[@title='West UHN']")
    private WebElement headerTabSiteOptionWestUHN;

    @FindBy(xpath = "//a[@title='Southeast UHN']")
    private WebElement headerTabSiteOptionSouthEastUHN;

    @FindBy(xpath = "//a[@title='National']")
    private WebElement headerTabSiteOptionNationalUHN;

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

    public WestUHNSitePage setSiteEnvironment2WestUHN() {
        click("site tab", headerTabSite);
        click("central uhn", headerTabSiteOptionWestUHN);
        return getSiteManager().getWestUHNSitePage();
    }

    public SouthEastUHNSitePage setSiteEnvironment2SouthEastUHN() {
        click("site tab", headerTabSite);
        click("central uhn", headerTabSiteOptionSouthEastUHN);
        return getSiteManager().getSouthEastUHNSitePage();
    }

    public NationalUHNSitePage setSiteEnvironment2NationalUHN() {
        click("site tab", headerTabSite);
        click("central uhn", headerTabSiteOptionNationalUHN);
        return getSiteManager().getNationalUHNSitePage();
    }

    public GenericSitePage setSiteEnvironment(SiteManager.Site site) {
        switch (site) {
            case CENTRAL:
                return setSiteEnvironment2CentralUHN();
            case NORTHEAST:
                return setSiteEnvironment2NortheastUHN();
            case SOUTHEAST:
                return setSiteEnvironment2SouthEastUHN();
            case WEST:
                return setSiteEnvironment2WestUHN();
            case NATIONAL:
                return setSiteEnvironment2NationalUHN();
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
