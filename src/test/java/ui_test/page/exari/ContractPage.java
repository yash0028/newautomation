package ui_test.page.exari;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.List;

public class ContractPage implements IWebInteract, IFactoryPage {

    /* ********************************  LOCATORS **************************************** */
    //PES INPUT
    @FindBy(xpath = "//input[contains(@name,'MPIN')]")
    public WebElement MPIN_TextBox;

    @FindBy(xpath = "//input[contains(@name,'TIN')]")
    public WebElement TIN_TextBox;

    @FindBy(xpath = "//input[contains(@name,'Firstname')]")
    public WebElement ProviderFN_TextBox;

    @FindBy(xpath = "//input[contains(@name,'Lastname')]")
    public WebElement ProviderLN_TextBox;

    @FindBy(xpath = "//input[contains(@name,'City')]")
    public WebElement City_TextBox;

    @FindBy(xpath = "//input[contains(@name,'State')]")
    public WebElement State_TextBox;

    @FindBy(xpath = "//input[contains(@name,'ZIP')]")
    public WebElement ZipCode_TextBox;

    @FindBy(xpath = "//input[contains(@name,'NPI')]")
    public WebElement NPI_TextBox;

    @FindBy(xpath = "//input[contains(@value,'0_Y')]")
    public WebElement Y_optionButton;

    @FindBy(xpath = "//input[contains(@value,'1_N')]")
    public WebElement N_optionButton;

    @FindBy(xpath = "//div/a[contains(text(),'quit')]")
    public WebElement QUIT;

    @FindBy(xpath = "//button[contains(text(),'save')]")
    public WebElement SAVE;

    @FindBy(xpath = "//button[contains(text(),'ffwd')]")
    public WebElement FORWARD;

    @FindBy(xpath = "//button[contains(text(),'next')]")
    public WebElement NEXT;

    @FindBy(xpath = "//div/a[contains(text(),'back')]")
    public WebElement Back;

    @FindBy(xpath = "//a[contains(text(),'next')]")
    public WebElement WizardCompleteNext;


    //PES RESPONSE

    /* *********SMGA******* */

    public String optionButton = "//input[@type='radio']";

    @FindBy(xpath = "//b[contains(text(),'Select the Counterparty')]")
    public WebElement TheCounterparty_Label;

    @FindBy(xpath = "//input[@type='radio']/preceding::span/input")
    public WebElement optionButton1;

    @FindBy(xpath = "(.//input[@type='radio'])[2]")
    public WebElement optionButton2;

    @FindBy(xpath = ".//b[contains(text(),'Paper Types available')]")
    public WebElement DocumentSelection_Label;


    @FindBy(xpath = "//input[@value='0_SPA']")
    public WebElement SPA;

    @FindBy(xpath = "//input[@value='2_SMGA']")
    public WebElement SMGA;

    @FindBy(xpath = "//span[@class='select2-selection__arrow']")
    public WebElement dropdown_arrow;

    @FindBy(xpath = "html/body/span[2]/span/span[1]/input")
    public WebElement dropdown_text;

    @FindBy(xpath = "html/body/span[2]/span/span[1]/input/following::span[@class='select2-results']")
    public WebElement dropdown_result;

    @FindBy(xpath = "//label/b[contains(text(),'Select the Arbitration County')]")
    public WebElement Question;

    @FindBy(xpath = "//span/label[contains(text(),'San Diego County, CA')]/parent::span/input[@value='2_San Diego County']")
    public WebElement optionArbitarycountry;

    @FindBy(xpath = "//*[@id='interviewRoundQuestions']/div/p")
    public WebElement ProviderDetails;

    @FindBy(xpath = ".//input[@class='Answer']")
    public WebElement ProviderFullName;

    @FindBy(xpath = "//b[contains(text(),'State Code for RFP')]")
    public WebElement RFPResponseState_Label;

    @FindBy(xpath = "//b[contains(text(),'Credentialing Required')]")
    public WebElement RFPResponse_Label;

    @FindBy(xpath = "//p[contains(text(),'HBPs Red Door')]")
    public WebElement HBSRedDoor;

    @FindBy(xpath = "//input[@value='0_Yes']")
    public WebElement YesOption;

    @FindBy(xpath = "//input[@value='1_No']")
    public WebElement NoOption;

    @FindBy(xpath = "//b[contains(text(),'Will additional manuals apply')]")
    public WebElement Appendix1_Label;

    @FindBy(xpath = "//b[contains(text(),'Hospital Based')]")
    public WebElement HBPsRedDoor_Label;

    @FindBy(xpath = "//b[contains(text(),'included in Appendix 2')]")
    public WebElement Appendix2_Label;

    @FindBy(xpath = ".//b[contains(text(),'Payment Appendice')]")
    public WebElement PaymentAppendice_Label;

    @FindBy(xpath = ".//b[contains(text(),'additional service locations')]")
    public WebElement Appendix3_Label;

    @FindBy(xpath = ".//b[contains(text(),'Clinic Name')]")
    public WebElement Appendix4_Label;

    private final WebDriver driver;

    @FindBy(xpath = ".//*[@class='AnswerSideBySide interview-item__answer']/span[1]/input")
    public WebElement ContractEffectiveDate_TextBox;

    @FindBy(xpath = ".//div[@class='AnswerSideBySide interview-item__answer']/span[2]/input")
    public WebElement ContractEffectiveDate_Checkbox;

    @FindBy(xpath = "//li[contains(text(),'When you are happy')]")
    public WebElement interviewsummary_label;

    @FindBy(xpath = "//h1[contains(text(),'Wizard Complete')]")
    public WebElement wizardComplete_label;

    @FindBy(xpath = ".//div[@id='HEADER_SITE_DASHBOARD']")
    public WebElement siteDashboard_label;

    @FindAll({
            @FindBy(xpath = ".//*[@id='MCQAnswerBlock91_XRI_FOLLOWUP']//div[1]/p/label/b")
    })
    public List<WebElement> allElementsInList;


    /* *********SPA******* */

    @FindBy(xpath = "//input[@type='checkbox']")
    public WebElement CheckBox;
    @FindBy(xpath = ".//b[contains(text(),'ContractPage Effective Date')]")
    public WebElement ContractDetails_Label;

    /*
    CONSTRUCTOR
     */

    public ContractPage(WebDriver driver) {
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

    /* ********************************  METHODS **************************************** */

    public void clickOnNext() {
//        helper.highlighter(driver, contractPage.NEXT);
//        helper.Click(driver, test, contractPage.NEXT, "Next Button");
//        helper.pause(5);
        click(NEXT);
    }

    @Deprecated
    public void clickOnNextAndWait(WebElement waitElement) {
//        helper.highlighter(driver, contractPage.NEXT);
//        helper.Click(driver, test, contractPage.NEXT, "Next Button");
//        helper.wait(driver, element, 60);
//        helper.highlighter(driver, element);
        click(NEXT);
        waitTillVisible(waitElement);
    }

    public void clickWizardCompleteNext() {
        click(WizardCompleteNext);
    }

    @Deprecated
    public void ClickOnWizardCompleteNext(WebElement waitElement) {
//        helper.highlighter(driver, WizardCompleteNext);
//        helper.pause(2);
//        helper.Click(driver, test, WizardCompleteNext, "Wizard Next Button");
//        helper.wait(driver, element, 60);
//        helper.highlighter(driver, element);
        click(WizardCompleteNext);
        waitTillVisible(waitElement);
    }

    @Deprecated
    public void select_Yes_NO(String value, WebElement waitElement) {
        if (value.equalsIgnoreCase("yes")) {
            YesOption.click();

        } else if (value.equalsIgnoreCase("no")) {
            NoOption.click();
        }

        clickOnNext();
//        helper.wait(driver, waitElement, 60);
//        helper.highlighter(driver, waitElement);
        waitTillVisible(waitElement);
    }

    public void selectYes() {
        click(YesOption);
        clickOnNext();
    }

    public void selectNo() {
        click(NoOption);
        clickOnNext();
    }

    public void enterMPIN() {
//        helper.EditBox(contractPage.MPIN_TextBox, reader.getCellData("SMGA", "MPIN", 2), test, "Enter MPIN");
//        contractPage.MPIN_TextBox.sendKeys(Keys.TAB);
//        helper.pause(3);
        String value2Select = ""; //reader.getCellData("SMGA", "MPIN", 2);
        selectDropDownByValue(MPIN_TextBox, value2Select);
        sendKeys(MPIN_TextBox, Keys.TAB);
    }


    public void selectCounterParty() {
        //helper.pause(5);
//        helper.SelectradioButton(test, driver, contractPage.optionButton1, "Option 1");
//        contractPage.optionButton1.sendKeys(Keys.TAB);
        click(optionButton1);
        sendKeys(optionButton1, Keys.TAB);
    }

    public void documentSelection() throws InterruptedException {
//        helper.SelectradioButton(test, driver, contractPage.SMGA, "Option 1");
        click(SMGA);
    }

    public void enterDropDown(String partialValue) {
        highlight(dropdown_arrow);
        click(dropdown_arrow);
        pause(1);

        highlight(dropdown_text);
        sendKeys(dropdown_text, partialValue);
        pause(1);

        highlight(dropdown_result);
        click(dropdown_result);
    }

    /* ********************************  PAGES **************************************** */

}
