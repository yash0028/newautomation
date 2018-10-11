package ui_test.page.exari;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.wizard.ContractWizard;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.List;

public class ContractPage implements IWebInteract, IFactoryPage {
    private static final Logger log = LoggerFactory.getLogger(ContractPage.class);


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
        return false;
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /* ********************************  METHODS **************************************** */


    @Deprecated
    public void clickOnNextAndWait(WebElement waitElement) {
//        helper.highlighter(driver, contractPage.navigationNext);
//        helper.Click(driver, test, contractPage.navigationNext, "Next Button");
//        helper.wait(driver, element, 60);
//        helper.highlighter(driver, element);
        getContractWizard().getGenericInputPage().clickNext();
        waitTillVisible(waitElement);
    }

    @Deprecated
    public void clickWizardCompleteNext() {
        getContractWizard().getWizardCompletePage().clickNext();
    }

    @Deprecated
    public void ClickOnWizardCompleteNext(WebElement waitElement) {
//        helper.highlighter(driver, navigationWizardNext);
//        helper.pause(2);
//        helper.Click(driver, test, navigationWizardNext, "Wizard Next Button");
//        helper.wait(driver, element, 60);
//        helper.highlighter(driver, element);
        clickWizardCompleteNext();
        waitTillVisible(waitElement);
    }

    /*
    CLASS METHODS
     */



    /* ********************************  PAGES **************************************** */

    public ContractWizard getContractWizard() {
        return new ContractWizard(driver);
    }


}
