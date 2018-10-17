package ui_test.page.exari.home.site.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.ContractPage;
import ui_test.page.exari.contract.wizard.WizardManager;
import ui_test.page.exari.contract.wizard.subpages.GenericInputPage;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public abstract class GenericSitePage implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(GenericInputPage.class);

    /*
    PROTECTED VARIABLES
     */

    protected final WebDriver driver;

    /*
    LOCATORS
     */

    @FindBy(xpath = "//img[@alt='Logo image']")
    protected WebElement safeClickPoint;

    @FindBy(xpath = "//div[contains(@class,'hd topscrollbar')]")
    protected WebElement filterScrollUp;

    @FindBy(xpath = "//div[contains(@class, 'ft bottomscrollbar')]")
    protected WebElement filterScrollDown;

    //SMGAAmendment
    @FindBy(xpath = "//div[@class='toolbar flat-button']/div/span[3]")
    protected WebElement filterSmartTemplate;

    @FindBy(xpath = "//li[@index='61']/a[contains(text(),'SMGA')]")
    protected WebElement filterSmartTemplateOptionSMGA;

    @FindBy(xpath = "//div[@class='toolbar flat-button']/div/span[6]")
    protected WebElement filterStatus;

    @FindBy(xpath = "//li[@index='10']/a[contains(text(),'Active')]")
    protected WebElement filterStatusOptionActive;

    //    @FindBy(xpath = ".//table[contains(@id,'yuievtautoid')]//tbody[2]/tr[1]//h4")
    @FindBy(xpath = "//table[contains(@id, 'yuievtautoid')]/tbody[@class='yui-dt-data']/tr[1 and contains(@class, 'yui-dt-first')]//h4/a")
    protected WebElement tableContractsFirstRow;

    @FindBy(xpath = "//td/span[text()='Click to start']")
    protected WebElement contractCreateStart;

    @FindBy(xpath = "//h3[@title='SMGA' and text()='SMGA.xml']//following-sibling::div/span[@title='Create New']/a")
    protected WebElement contractCreateSMGATemplate;

    /*
    CONSTRUCTOR
     */

    public GenericSitePage(WebDriver driver) {
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(driver, IWebInteract.TIMEOUT);
        PageFactory.initElements(factory, this);
        this.driver = driver;
    }

    /*
    PAGE FACTORY METHODS
     */

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    CLASS METHODS
     */

    public boolean selectSmartTemplateFilterOptionSMGA() {
        click("smart template filter", filterSmartTemplate);
        click("filter scroll down", filterScrollDown);

        //Scroll down for about 10 seconds
        pause(10);

        hover("safe click point", safeClickPoint);
        return click("smart template smga option", filterSmartTemplateOptionSMGA);
    }

    public boolean selectStatusFilterOptionActive() {
        click("status filter", filterStatus);
        hover("safe click point", safeClickPoint);
        return click("status filter active option", filterStatusOptionActive);
    }

    public boolean clickContractsTableFirstRow() {
        return click("contract in first row", tableContractsFirstRow);
    }

    public boolean startContractWithSMGATemplate() {
        click("contract start button", contractCreateStart);
        return click("smga template", contractCreateSMGATemplate);
    }

    /*
    PAGES
     */

    public ContractPage getContractPage() {
        return new ContractPage(driver);
    }

    public WizardManager getContractWizard() {
        return new WizardManager(driver);
    }
}
