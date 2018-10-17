package ui_test.page.exari.contract;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.wizard.WizardManager;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class ContractPage implements IWebInteract, IFactoryPage {
    private static final Logger log = LoggerFactory.getLogger(ContractPage.class);

    private final WebDriver driver;


    /*
    LOCATORS
     */

    @FindBy(xpath = "//span[contains(text(),'Terminate')]")
    private WebElement buttonTerminate;

    @FindBy(xpath = "//table[contains(@class,'ygtvtable')]/tbody/tr/td[2]/span[1]")
    private WebElement buttonMasterContract;

    @FindBy(xpath = "//h2[contains(text(),'Properties')]")
    private WebElement expandLabelProperties;

    @FindBy(xpath = "//h2[contains(text(),'Documents')]")
    private WebElement labelDocuments;

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
        click("edit status", buttonOpenEditStatus);
        selectDropDownByValue("edit status dialogue option dropdown", dropdownEditStatusDialogue, value);
        return click("edit status dialogue save button", buttonEditStatusDialogueSave);
    }

    public boolean clickFinalCapture() {
        return click("final capture button", buttonOpenFinalCapture);
    }

    public boolean checkActiveStatus() {
        //Check if contract status of active is visibile
        //if not, try to expand properties section and try again
        return isVisible(labelContractStatusActive) || expandProperties() && isVisible(labelContractStatusActive);
    }

    public boolean startAmendment(String amendmentName) {
        if (!isVisible(buttonOpenCreateAmendment)) {
            gotoMasterContract();
        }
        click("create amendment button", buttonOpenCreateAmendment);
        cleanWriteTextBox("create amendment dialogue name textbox", textBoxCreateAmendmentDialogueAmendmentName, amendmentName);
        return click("create amendment dialogue create button", buttonCreateAmendmentDialogueCreate);
    }

    public boolean expandProperties() {
        return click("properties expand", expandLabelProperties);
    }

    public boolean startTerminate() {
        if (!isVisible(buttonTerminate)) {
            gotoMasterContract();
        }
        return click("terminate button", buttonTerminate);
    }

    public boolean gotoMasterContract() {
        return click("master contract", buttonMasterContract);
    }


    /* ********************************  PAGES **************************************** */

    public WizardManager getContractWizard() {
        return new WizardManager(driver);
    }


}
