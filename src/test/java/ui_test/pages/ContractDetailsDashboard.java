package ui_test.pages;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.Select;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.pages.textFileWriter.TextFileWriter;
import ui_test.util.AbstractPageElements;
import ui_test.util.IWebInteract;

import java.awt.*;
import java.io.*;
import java.util.HashMap;

public class ContractDetailsDashboard extends GenericInputPage {
    public TextFileWriter textFileWriter=new TextFileWriter();
    private PageElements elements;
    public ContractDetailsDashboard(WebDriver driver) {
        super(driver);
        this.elements = new PageElements(driver);
    }
    public void startWorkFlow(){
        refreshPage();
        assert waitTillClickable(elements.startWorkFlow,20);
        assert click("Start WorkFlow",elements.startWorkFlow);
        assert waitForPageLoad();
    }
    public void editStatus(String option){
        int count=1;
        boolean foundEditStatus =false;
        while(count<=20){
            if(CommonMethods.isElementPresent(driver,By.xpath(elements.editStatusButton))){
                assert click("Edit Status",this.elements.editStatus);
                foundEditStatus=true;
                break;
            }
            assert click("Initial Transaction",this.elements.initialTransaction);
            waitForElementToDissapear(driver,waitForElementToAppear(driver,By.xpath(elements.message)));
            IWebInteract.log.info("Retrying for Edit Status Option, Retry: {}",count);
            count++;
        }
        Assert.assertTrue("Contract is not Approved", foundEditStatus);
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

    public void captureContractNumber(HashMap<String,String> hmap)
    {
        String contractDetails=elements.contractSummary.getText();
        System.out.println("Contract Details : "+contractDetails);
        hmap.put("Contract Number",contractDetails.substring(contractDetails.lastIndexOf('-') +1));
        System.out.println("Comtract Number is:"+hmap.get("Contract Number"));
        String filepath="C:\\Users\\asomani1\\Desktop\\finalPom\\acceptance-testing\\src\\test\\resources\\support\\hive\\textFiles\\contractDetails.txt";
        textFileWriter.writeInFile(filepath,hmap);
    }

    public void clickForContractSummary()
    {
        click("Open Contract Summary Page",elements.clickToContractSummary);

    }
    public void makeCorrection(){
        assert click("Make Correction",this.elements.makeCorrection);
        assert waitForPageLoad();
    }

    public void goToContractSummaryPage() {
        assert click("Contract Summary Page",elements.contractSummaryButton);
        assert waitForPageLoad();
    }

    public void startAmendmentProcess(HashMap<String, String> hmap) {
        assert click("Start Amendment Process",elements.createAmendmentButton);
        assert waitForPageLoad();
        pause(5);
    }

    public void enterAmendmentTitle(HashMap<String, String> hmap) {
        Actions actions=new Actions(getDriver());
//        actions.dragAndDropBy(elements.amendmentsWindow,0,0);

        actions.clickAndHold(elements.amendmentsWindow).pause(5000).moveToElement(elements.fullWindow).release().build().perform();
        pause(3);
        assert sendKeys("Entering amendment Title",elements.amendentTitleBar,hmap.get("Amendment Title"));
        pause(2);
//        getDriver().findElement(By.xpath("//button[contains(@name,'create')]")).click();
        assert click("Create Amendment Button",elements.getCreateAmendmentButton);
        assert waitForPageLoad();
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath="//h1[contains(text(),\"Agreement\")]")
        private WebElement contractSummary;
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
        @FindBy(xpath = "//*[@id=\"ygtvlabelel1\"]")
        private WebElement clickToContractSummary;
        @FindBy(xpath = "//span[contains(text(),'Agreement')]")
        private WebElement contractSummaryButton;
        @FindBy(xpath = "//a[contains(@title,'Create Amendment')]")
        private WebElement createAmendmentButton;
        @FindBy(xpath = "//input[contains(@name,'amendmentId')]")
        private WebElement amendentTitleBar;
        @FindBy(xpath = "//*[@id=\"template_x002e_amend-popup_x002e_contract-details_x0023_default-createButton\"]")
        private WebElement getCreateAmendmentButton;
        @FindBy(xpath = "//div[text()=\"Create Amendment\"]")
        private WebElement amendmentsWindow;
        @FindBy(xpath = "//body[@id='Share']")
        private WebElement fullWindow;


        private String message= "//*[@id='message']";
        private String startWorkFlowPath= "//div[@id='onStartExariWorkflowClick']/a";
        private String editDetails= "//select[contains(@id,'ContractDealStatus')]";
        private String editStatusButton= "//div[contains(@class,'edit-status')]/a/span";

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
