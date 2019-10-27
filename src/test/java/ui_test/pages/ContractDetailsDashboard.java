package ui_test.pages;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.Select;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IWebInteract;

public class ContractDetailsDashboard extends GenericInputPage {
    private PageElements elements;
    public ContractDetailsDashboard(WebDriver driver) {
        super(driver);
        this.elements = new PageElements(driver);
    }
    public void startWorkFlow(){
        waitForElementToAppear(driver,By.xpath(elements.startWorkFlowPath));
        assert click("Start WorkFlow",this.elements.startWorkFlow);
        assert waitForPageLoad();
    }
    public void editStatus(String option){
        int count=1;
        while(true){
            if(CommonMethods.isElementPresent(driver,By.xpath(elements.editStatusButton))){
                assert click("Edit Status",this.elements.editStatus);
                break;
            }
            assert click("Initial Transaction",this.elements.initialTransaction);
            waitForElementToDissapear(driver,waitForElementToAppear(driver,By.xpath(elements.message)));
            IWebInteract.log.info("Retrying for Edit Status Option, Retry: {}",count);
            count++;
        }
        waitForElementsToPresent(driver,By.xpath(elements.editDetails));
        pause(1);
        Select status = new Select(this.elements.selectStatus);
        status.selectByVisibleText(option);
        pause(1);
        assert click("Save",this.elements.save);
        //dont give assert for close.
        click("Close",this.elements.close);

        waitForElementToDissapear(driver,waitForElementToAppear(driver,By.xpath(elements.message)));
    }

    public void finalCapture(){
        assert click("Final Capture",this.elements.finalCapture);
        assert waitForPageLoad();
    }
    public void makeCorrection(){
        assert click("Make Correction",this.elements.makeCorrection);
        assert waitForPageLoad();
    }
    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//div[@id='onStartExariWorkflowClick']/a")
        private WebElement startWorkFlow;
        @FindBy(xpath = "//div[contains(@class,'edit-status')]/a/span")
        private WebElement editStatus;
        @FindBy(xpath = "//div[@class='yui-panel-container yui-dialog shadow']")
        private WebElement editStatusPopup;
        @FindBy(xpath = "//div[@id='onPrepFinalCaptureClick']/a")
        private WebElement finalCapture;
        @FindBy(xpath = "//div[contains(@class,'correction')]/a/span")
        private WebElement makeCorrection;
        @FindBy(xpath = "//table/tbody/tr/td[3]/span[1][contains(.,'Initial Transaction')]")
        private WebElement initialTransaction;
        @FindBy(xpath = "//select[contains(@id,'ContractDealStatus')]")
        private WebElement selectStatus;
        @FindBy(xpath = "//button[contains(@id,'form-submit-button')]")
        private WebElement save;
        @FindBy(xpath = "//div[contains(@id,'editDetails')]/a")
        private WebElement close;


        private String message= "//*[@id='message']";
        private String startWorkFlowPath= "//div[@id='onStartExariWorkflowClick']/a";
        private String editDetails= "//select[contains(@id,'ContractDealStatus')]";
        private String editStatusButton= "//div[contains(@class,'edit-status')]/a/span";

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
