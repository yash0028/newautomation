package ui_test.page.exari.contract;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.wizard.WizardManager;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.List;

public class ContractPage implements IWebInteract, IFactoryPage {
    private static final Logger log = LoggerFactory.getLogger(ContractPage.class);

    /*
    LOCATORS
     */

    @FindBy(xpath = "//h2[contains(text(),'Properties')]")
    private WebElement expandLabelProperties;

    @FindBy(xpath = "//h2[contains(text(),'Documents')]")
    private WebElement labelDocuments;

    @FindBy(xpath = "//div[@class='title-bar']")
    private WebElement TitleBar;

    @FindBy(xpath = "//span[contains(text(),'Edit Status')]")
    private WebElement buttonOpenEditStatus;

    @FindBy(xpath = "//span[contains(text(),'Final Capture')]")
    private WebElement buttonOpenFinalCapture;

    @FindBy(xpath = ".//select[@name='prop_exari_ContractDealStatus']")
    private WebElement dropdownEditStatusDialogue;

    @FindBy(xpath = "//button[contains(text(),'Save')]")
    private WebElement buttonEditStatusDialogueSave;

    @FindBy(xpath = "//div[contains(text(),'Final Pending QA')]")
    private WebElement labelContractStatusFinalPendingQA;

    @FindBy(xpath = "//div[contains(text(),'Active')]")
    private WebElement labelContractStatusActive;

    @FindBy(xpath = "//span[contains(text(),'Create Amendment')]")
    private WebElement buttonOpenCreateAmendment;

    @FindBy(xpath = "//div[text()='Create Amendment']")
    private WebElement labelCreateAmendmentDialogueTitle;

    @FindBy(xpath = "//div[(text()='Amendment title:')]/following-sibling::div/input")
    private WebElement textBoxCreateAmendmentDialogueAmendmentName;

    @FindBy(xpath = "//button[contains(text(),'Create')]")
    private WebElement buttonCreateAmendmentDialogueCreate;

    //PES RESPONSE

    /* *********SMGA******* */
    private final WebDriver driver;
    public String optionButton = "//input[@type='radio']";
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







    @FindBy(xpath = ".//div[@id='HEADER_SITE_DASHBOARD']")
    public WebElement siteDashboard_label;

    @FindAll({
            @FindBy(xpath = ".//*[@id='MCQAnswerBlock91_XRI_FOLLOWUP']//div[1]/p/label/b")
    })
    public List<WebElement> allElementsInList;


    /* *********SPA******* */

    @FindBy(xpath = "//input[@type='checkbox']")
    public WebElement CheckBox;


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
        return isVisible(expandLabelProperties) && isVisible(labelDocuments);
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /* ********************************  METHODS **************************************** */


    /*
    CLASS METHODS
     */

    public boolean setEditStatus(String value) {
        click(buttonOpenEditStatus);
        selectDropDownByValue(dropdownEditStatusDialogue, value);
        return click(buttonEditStatusDialogueSave);
    }

    public boolean clickFinalCapture() {
        return click(buttonOpenFinalCapture);
    }

    public boolean checkActiveStatus() {
        return isVisible(labelContractStatusActive) || expandProperties() && isVisible(labelContractStatusActive);
    }

    public boolean createAmendment(String amendmentName) {
        click(buttonOpenCreateAmendment);
        cleanWriteTextBox(textBoxCreateAmendmentDialogueAmendmentName, amendmentName);
        return click(buttonCreateAmendmentDialogueCreate);
    }

    public boolean expandProperties() {
        return click("Properties expand", expandLabelProperties);
    }


    /* ********************************  PAGES **************************************** */

    public WizardManager getContractWizard() {
        return new WizardManager(driver);
    }


}
