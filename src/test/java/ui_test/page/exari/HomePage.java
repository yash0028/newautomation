package ui_test.page.exari;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class HomePage implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(HomePage.class);



    /*
    LOCATORS
     */

    @FindBy(xpath = "//span[text()='Sites']")
    public WebElement headerTabSite;

    @FindBy(xpath = "//a[@title='Test']")
    public WebElement headerTabSiteOptionTest;

    @FindBy(xpath = "//img[@alt='Logo image']")
    public WebElement safeClickPoint;

    @FindBy(xpath = "//div[contains(@class,'hd topscrollbar')]")
    public WebElement filterScrollUp;

    @FindBy(xpath = "//div[contains(@class, 'ft bottomscrollbar')]")
    public WebElement filterScrollDown;

    //SMGAAmendment
    @FindBy(xpath = "//div[@class='toolbar flat-button']/div/span[3]")
    public WebElement filterSmartTemplate;

    @FindBy(xpath = "//li[@index='61']/a[contains(text(),'SMGA')]")
    public WebElement filterSmartTemplateOptionSMGA;

    @FindBy(xpath = "//div[@class='toolbar flat-button']/div/span[6]")
    public WebElement filterStatus;

    @FindBy(xpath = "//li[@index='10']/a[contains(text(),'Active')]")
    public WebElement filterStatusOptionActive;

    //    @FindBy(xpath = ".//table[contains(@id,'yuievtautoid')]//tbody[2]/tr[1]//h4")
    @FindBy(xpath = "//table[contains(@id, 'yuievtautoid')]/tbody[@class='yui-dt-data']/tr[1 and contains(@class, 'yui-dt-first')]//h4/a")
    public WebElement tableContractsFirstRow;


    @FindBy(xpath = "//td/span[text()='Click to start']")
    public WebElement contractCreateStart;

    @FindBy(xpath = "//h3[@title='SMGA' and text()='SMGA.xml']//following-sibling::div/span[@title='Create New']/a")
    public WebElement contractCreateSMGATemplate;


    /* ********************************  LOCATORS **************************************** */

    @FindBy(xpath = "//a[@title='My Sites']")
    public WebElement SiteFinder;

	/*@FindBy(xpath = "//a[contains(@title,'TEST')]")
	public WebElement StageTest;*/

    @FindBy(xpath = "//div[@class='title' and contains(text(),'My Contracts')]")
    public WebElement MyContract_title;

    @FindBy(xpath = "//h3[@title='SPA - PAT ' and text()='SPA PAT.xml']//following-sibling::div/span[@title='Create New']/a")
    public WebElement SPA_PATTemplate;




    @FindBy(xpath = "//div[@class='title-bar']")
    public WebElement TitleBar;

    @FindBy(xpath = "//span[contains(text(),'Edit Status')]")
    public WebElement editStatus;

    @FindBy(xpath = "//span[contains(text(),'Final Capture')]")
    public WebElement finalCapture;

    @FindBy(xpath = ".//select[@name='prop_exari_ContractDealStatus']")
    public WebElement editStatus_DropDown;

    @FindBy(xpath = "//button[contains(text(),'Save')]")
    public WebElement SAVE;

    @FindBy(xpath = "//div[contains(text(),'Active')]")
    public WebElement status_active;

    @FindBy(xpath = "//div[@class='bd yui-menu-body-scrolled']/ul/li")
    public WebElement AnySmartTemplate_DropDown;

    public String xpath = "//div[@class='bd yui-menu-body-scrolled']/ul/li";

    @FindBy(xpath = ".//div[@class='bd yui-menu-body-scrolled']/ul/li/a[(text()='SMGA')]")
    public WebElement Smga;
    ////li[@id='yui-gen95']/a[@class='yuimenuitemlabel' and text()='SMGA']


    @Deprecated
    @FindBy(xpath = "//div[@class='toolbar flat-button']/div/span[6]")
    public WebElement AnyStatus;

    @Deprecated
    public String AnyStatusXpath = "//div[@class='bd']/ul/li";


    @FindBy(xpath = "//span[contains(text(),'Create Amendment')]")
    public WebElement CreateAmendment;

    @FindBy(xpath = "//div[text()='Create Amendment']")
    public WebElement CreateAmendment_title;

    @FindBy(xpath = "//div[(text()='Amendment title:')]/following-sibling::div/input")
    public WebElement AmendmentTitle_TextBox;

    @FindBy(xpath = "//button[text()='Create ']")
    public WebElement Create;

    // SMGA Terminate

    @FindBy(xpath = "//span[contains(text(),'Terminate')]")
    public WebElement Terminate;

    private final WebDriver driver;

    /*
    CONSTRUCTOR
     */

    public HomePage(WebDriver driver) {
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(driver, IWebInteract.TIMEOUT);
        PageFactory.initElements(factory, this);
        this.driver = driver;
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return false;
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    CLASS METHODS
     */


    @Deprecated
    public void ClickOnSitecontract() {
//        helper.highlighter(driver, headerTabSite);
//        helper.Click(driver, test, headerTabSite, "headerTabSite Menu");
//        helper.wait(driver, headerTabSiteOptionTest, 20);
        //helper.pause(5);
        click(headerTabSite);
    }

    @Deprecated
    public void ClickOnEnv(String environment) {
//        if (environment.equalsIgnoreCase("headerTabSiteOptionTest")) {
//            helper.highlighter(driver, headerTabSiteOptionTest);
//            helper.Click(driver, test, headerTabSiteOptionTest, "headerTabSiteOptionTest Menu");
//            helper.wait(driver, element, 30);
//        }
        //helper.pause(6);
        if (environment.equalsIgnoreCase("test")) {
            click(headerTabSiteOptionTest);
        }
    }

    @Deprecated
    public void ClickOnClickonStart() {
//        helper.highlighter(driver, contractCreateStart);
//        helper.Click(driver, test, contractCreateStart, "Click to start");
//        helper.wait(driver, SPA_PATTemplate, 20);
        //helper.pause(3);
        click(contractCreateStart);
    }

    @Deprecated
    public void ClickOnTemplate(WebElement element, String desc) {
//        helper.highlighter(driver, element);
//        helper.Click(driver, test, element, desc);
//        helper.wait(driver, homePage.TitleBar, 60);
        //helper.pause(3);
        click(element);
    }


    public void clickFinalCapture() {
//        helper.highlighter(driver, finalCapture);
//        helper.Click(driver, test, finalCapture, "Final Capture");
//        helper.wait(driver, element, 60);
        click(finalCapture);
    }

    @Deprecated
    public void clickonAnySmartTemplate() {
//        helper.highlighter(driver, filterSmartTemplate);
//        helper.Click(driver, test, filterSmartTemplate, "filterSmartTemplate");
//
//        helper.highlighter(driver, homePage.filterScrollDown);
//        homePage.filterScrollDown.click();
//        helper.pause(7);
        click(filterSmartTemplate);
        click(filterScrollDown);
        pause(7);
    }

    /*
    CLASS METHODS
     */

    public boolean setSiteEnvironment2Test() {
        click(headerTabSite);
        click(headerTabSiteOptionTest);
        //TODO add a dynamic wait
        pause(10);
        return getDriver().getCurrentUrl().matches("^.+test/dashboard$");
    }

    public boolean selectSmartTemplateSMGA() {
        click(filterSmartTemplate);
        click(filterScrollDown);

        //Scroll down for about 10 seconds
        pause(10);

        hover(safeClickPoint);
        return click(filterSmartTemplateOptionSMGA);
    }

    public boolean selectStatusActive() {
        click(filterStatus);
        hover(safeClickPoint);
        return click(filterStatusOptionActive);
    }

    public boolean clickContractsTableFirstRow() {
        return click(tableContractsFirstRow);
    }

    public boolean startContractWithSMGATemplate() {
        click(contractCreateStart);
        return click(contractCreateSMGATemplate);
    }

    public void setEditStatus(String value) {
//        helper.highlighter(driver, editStatus);
//        helper.Click(driver, test, editStatus, "Edit Status");
//        helper.wait(driver, editStatus_DropDown, 60);
//
//        helper.highlighter(driver, editStatus_DropDown);
//        helper.selectfromDropDown(driver, test, editStatus_DropDown, value, value);
//
//        helper.highlighter(driver, navigationSave);
//        helper.Click(driver, test, navigationSave, "Save");
//        helper.wait(driver, waitelement, 60);
//        helper.highlighter(driver, waitelement);
        click(editStatus);
        selectDropDownByValue(editStatus_DropDown, value);
        click(SAVE);
    }

    public boolean checkActiveStatus() {
        return isVisible(status_active);
    }



    /* ********************************  PAGES **************************************** */

    public ContractPage getContractPage() {
        return new ContractPage(driver);
    }

}// End of class
