package ui_test.page.exari;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import ui_test.page.pagehelpers.FunctionalLibrary;
import ui_test.page.pagehelpers.PageObjectBase;

import java.util.List;

public class Contract extends PageObjectBase {

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

    @FindBy(xpath = ".//b[contains(text(),'Contract Effective Date')]")
    public WebElement ContractDetails_Label;

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


    /**
     * Constructor to initialize elements
     */

    public Contract(FunctionalLibrary helper) {
        PageFactory.initElements(driver, this);
        this.helper = helper;
    }

    /* ********************************  METHODS **************************************** */

    public void ClickOnNext() throws InterruptedException {
        helper.highlighter(driver, contract.NEXT);
        helper.Click(driver, test, contract.NEXT, "Next Button");
        helper.pause(5);
    }

    public void ClickOnNext(WebElement element) throws InterruptedException {

        helper.highlighter(driver, contract.NEXT);
        helper.Click(driver, test, contract.NEXT, "Next Button");
        helper.wait(driver, element, 60);
        helper.highlighter(driver, element);
    }

    public void ClickOnWizardCompleteNext(WebElement element) throws InterruptedException {

        helper.highlighter(driver, WizardCompleteNext);
        helper.pause(2);
        helper.Click(driver, test, WizardCompleteNext, "Wizard Next Button");
        helper.wait(driver, element, 60);
        helper.highlighter(driver, element);
    }


    public void select_Yes_NO(String value, WebElement waitElement) throws InterruptedException {
        if (value.equalsIgnoreCase("yes")) {
            YesOption.click();

        } else if (value.equalsIgnoreCase("no")) {
            NoOption.click();
        }

        ClickOnNext();
        helper.wait(driver, waitElement, 60);
        helper.highlighter(driver, waitElement);
    }


    public void EnterMPIN() throws Exception {

        helper.EditBox(contract.MPIN_TextBox, reader.getCellData("SMGA", "MPIN", 2), test, "Enter MPIN");
        contract.MPIN_TextBox.sendKeys(Keys.TAB);
        helper.pause(3);
    }

    public void selectCounterParty() throws InterruptedException {
        //helper.pause(5);
        helper.SelectradioButton(test, driver, contract.optionButton1, "Option 1");
        contract.optionButton1.sendKeys(Keys.TAB);
    }

    public void documentSelection() throws InterruptedException {

        helper.SelectradioButton(test, driver, contract.SMGA, "Option 1");
    }

    /* ********************************  PAGES **************************************** */

}
