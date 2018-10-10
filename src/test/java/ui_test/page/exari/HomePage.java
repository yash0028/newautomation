package ui_test.page.exari;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class HomePage implements IFactoryPage, IWebInteract {

    /* ********************************  LOCATORS **************************************** */

    @FindBy(xpath = "//span[text()='Sites']")
    public WebElement Site;

    @FindBy(xpath = "//a[@title='Test']")
    public WebElement Test;

    @FindBy(xpath = "//a[@title='My Sites']")
    public WebElement SiteFinder;

	/*@FindBy(xpath = "//a[contains(@title,'TEST')]")
	public WebElement StageTest;*/

    @FindBy(xpath = "//div[@class='title' and contains(text(),'My Contracts')]")
    public WebElement MyContract_title;

    @FindBy(xpath = "//td/span[text()='Click to start']")
    public WebElement Clicktostart;

    @FindBy(xpath = "//h3[@title='SPA - PAT ' and text()='SPA PAT.xml']//following-sibling::div/span[@title='Create New']/a")
    public WebElement SPA_PATTemplate;

    @FindBy(xpath = "//h3[@title='SMGA' and text()='SMGA.xml']//following-sibling::div/span[@title='Create New']/a")
    public WebElement SMGATemplate;


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

    //SMGAAmendment
    @FindBy(xpath = "//div[@class='toolbar flat-button']/div/span[3]")
    public WebElement AnySmartTemplate;

    @FindBy(xpath = "//div[@class='bd yui-menu-body-scrolled']/ul/li")
    public WebElement AnySmartTemplate_DropDown;

    @FindBy(xpath = ".//div[@class='ft bottomscrollbar']")
    public WebElement bottomScroll;

    public String xpath = "//div[@class='bd yui-menu-body-scrolled']/ul/li";

    @FindBy(xpath = ".//div[@class='bd yui-menu-body-scrolled']/ul/li/a[(text()='SMGA')]")
    public WebElement Smga;
    ////li[@id='yui-gen95']/a[@class='yuimenuitemlabel' and text()='SMGA']

    @FindBy(xpath = "//div[@class='toolbar flat-button']/div/span[6]")
    public WebElement AnyStatus;

    public String AnyStatusXpath = "//div[@class='bd']/ul/li";

    @FindBy(xpath = ".//table[contains(@id,'yuievtautoid')]//tbody[2]/tr[1]//h4")
    public WebElement FirstRow;

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

    public void ClickOnSitecontract() {
//        helper.highlighter(driver, Site);
//        helper.Click(driver, test, Site, "Site Menu");
//        helper.wait(driver, Test, 20);
        //helper.pause(5);
        click(Site);
    }

    public void ClickOnEnv(String environment, WebElement element) {
//        if (environment.equalsIgnoreCase("Test")) {
//            helper.highlighter(driver, Test);
//            helper.Click(driver, test, Test, "Test Menu");
//            helper.wait(driver, element, 30);
//        }
        //helper.pause(6);
        if (environment.equalsIgnoreCase("test")) {
            click(Test);
        }
    }

    public void ClickOnClickonStart() {
//        helper.highlighter(driver, Clicktostart);
//        helper.Click(driver, test, Clicktostart, "Click to start");
//        helper.wait(driver, SPA_PATTemplate, 20);
        //helper.pause(3);
        click(Clicktostart);
    }

    @Deprecated
    public void ClickOnTemplate(WebElement element, String desc) {
//        helper.highlighter(driver, element);
//        helper.Click(driver, test, element, desc);
//        helper.wait(driver, homePage.TitleBar, 60);
        //helper.pause(3);
        click(element);
    }

    public void setEditStatus(String value, WebElement waitelement) {
//        helper.highlighter(driver, editStatus);
//        helper.Click(driver, test, editStatus, "Edit Status");
//        helper.wait(driver, editStatus_DropDown, 60);
//
//        helper.highlighter(driver, editStatus_DropDown);
//        helper.selectfromDropDown(driver, test, editStatus_DropDown, value, value);
//
//        helper.highlighter(driver, SAVE);
//        helper.Click(driver, test, SAVE, "Save");
//        helper.wait(driver, waitelement, 60);
//        helper.highlighter(driver, waitelement);
        click(editStatus);
        selectDropDownByValue(editStatus_DropDown, value);
        click(SAVE);
    }

    public void clickFinalCapture(WebElement element) {
//        helper.highlighter(driver, finalCapture);
//        helper.Click(driver, test, finalCapture, "Final Capture");
//        helper.wait(driver, element, 60);
        click(finalCapture);
    }

    public void clickonAnySmartTemplate() {
//        helper.highlighter(driver, AnySmartTemplate);
//        helper.Click(driver, test, AnySmartTemplate, "AnySmartTemplate");
//
//        helper.highlighter(driver, homePage.bottomScroll);
//        homePage.bottomScroll.click();
//        helper.pause(7);
        click(AnySmartTemplate);
        click(bottomScroll);
        pause(7);
    }





    /* ********************************  PAGES **************************************** */

    /**
     * Switching on Contract_SPA Page
     *
     * @throws Exception
     */
    @Deprecated
    public ContractPage ContractPage() {
        //helper.highlighter(driver,homePage.TitleBar );
        return new ContractPage(driver);
    }

}// End of class
