package ui_test.pages;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.Select;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.pages.textFileWriter.TextFileWriter;
import ui_test.step.ExariSteps;
import ui_test.util.AbstractPageElements;
import ui_test.util.IWebInteract;

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
            waitForPageLoad(60);
            Select status = new Select(this.elements.selectStatus);
            status.selectByVisibleText(option);
            pause(1);
            waitForPageLoad(60);
            assert click("Save",this.elements.save);
            //dont give assert for close.
            click("Close",this.elements.close);
            waitForElementToDissapear(driver,waitForElementToAppear(driver,By.xpath(elements.message)));
    }

    public void finalCapture(){
        assert click("Final Capture",this.elements.finalCapture);
        assert waitForPageLoad();
    }

    public void captureContractNumber(HashMap<String,String> hmap,String filepath)
    {
        String contractDetails=elements.contractSummary.getText();
        System.out.println("Contract Details : "+contractDetails);
        hmap.put("Contract Number",contractDetails.substring(contractDetails.lastIndexOf('-') +1));
        System.out.println("Comtract Number is:"+hmap.get("Contract Number"));
        textFileWriter.writeInFile(filepath,hmap);

    }

    public void clickForContractSummary()
    {
    	assert click("Open Contract Summary Page",elements.clickToContractSummary);
        assert click("Initial Transaction", elements.initialTransaction);

    }
    public void makeCorrection(){
        assert click("Make Correction",this.elements.makeCorrection);
        assert waitForPageLoad();
    }

    public void cickToCreateSupportingDocument(HashMap<String,String> hmap)
    {
        assert click("Create Supporting Document",this.elements.createSupportingDocument);
        assert waitForPageLoad();
        selectSupportingDocumentType(hmap);
    }

    private void selectSupportingDocumentType(HashMap<String,String>hmap)
    {
        assert click("Select Supporting Document Type",this.elements.supportingDocumentType);

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
        @FindBy(xpath="//div[contains(@class,'create-transaction-supporting-document')]/a/span")
        private WebElement createSupportingDocument;
        @FindBy(xpath="//a[contains(text(),\"Provider Roster Output.xml\")]")
        private WebElement supportingDocumentType;



        private String message= "//*[@id='message']";
        private String startWorkFlowPath= "//div[@id='onStartExariWorkflowClick']/a";
        private String editDetails= "//select[contains(@id,'ContractDealStatus')]";
        private String editStatusButton= "//div[contains(@class,'edit-status')]/a/span";

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
