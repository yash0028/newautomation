package ui_test.page.exari.contract;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.navigation.ExariNavigationPanel;
import ui_test.page.exari.navigation.IExariNavigation;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class ContractPage implements IWebInteract, IFactoryPage, IExariNavigation {
    private static final Logger log = LoggerFactory.getLogger(ContractPage.class);

    private final WebDriver driver;
    private final PageElements elements;
    private final ExariNavigationPanel navigationPanel;


    /*
    LOCATORS
     */



    /*
    CONSTRUCTOR
     */

    public ContractPage(WebDriver driver) {
        this.driver = driver;
        elements = new PageElements(driver);
        this.navigationPanel = new ExariNavigationPanel(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(elements.expandLabelProperties) && isVisible(elements.labelDocuments);
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    EXARI NAVIGATION METHODS
     */

    @Override
    public ExariNavigationPanel getNavigationPanel() {
        return this.navigationPanel;
    }

    /*
    ACTION METHODS
     */

    public boolean setEditStatus(String value) {
        click("edit status", elements.buttonOpenEditStatus);
        selectDropDownByValue("edit status dialogue option dropdown", elements.dropdownEditStatusDialogue, value);
        return click("edit status dialogue save button", elements.buttonEditStatusDialogueSave);
    }

    public boolean clickFinalCapture() {
        return click("final capture button", elements.buttonOpenFinalCapture);
    }

    public boolean checkActiveStatus() {
        //Check if contract status of active is visibile
        //if not, try to expand properties section and try again
        return isVisible(elements.labelContractStatusActive) || expandProperties() && isVisible(elements.labelContractStatusActive);
    }

    public boolean startAmendment(String amendmentName) {
        if (!isVisible(elements.buttonOpenCreateAmendment)) {
            gotoMasterContract();
        }
        click("create amendment button", elements.buttonOpenCreateAmendment);
        cleanWriteTextBox("create amendment dialogue name textbox", elements.textBoxCreateAmendmentDialogueAmendmentName, amendmentName);
        return click("create amendment dialogue create button", elements.buttonCreateAmendmentDialogueCreate);
    }

    public boolean expandProperties() {
        return click("properties expand", elements.expandLabelProperties);
    }

    public boolean startTerminate() {
        if (!isVisible(elements.buttonTerminate)) {
            gotoMasterContract();
        }
        return click("terminate button", elements.buttonTerminate);
    }

    public boolean gotoMasterContract() {
        return click("master contract", elements.buttonMasterContract);
    }

    /*
    CLASS METHODS
     */

    public String getContractNumber() {
        String[] arr = elements.headerContract.getText().split("\\s");
        if (arr.length == 0) {
            return "";
        }
        return arr[arr.length - 1];
    }

    /*
    ELEMENT CLASS
     */

    /**
     * private class to contain the webelements. This allows us to reload the context as needed and keeps the code clean.
     */
    private class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//div[contains(@class, 'contract-header')]//h1")
        private WebElement headerContract;

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

        PageElements(SearchContext context) {
            super(context);
        }
    }


}
