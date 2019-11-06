package ui_test.pages;
import org.junit.Assert;
import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.Select;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.page.exari.login.LoginSSOPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IWebInteract;
import ui_test.util.LocalDriverProxy;

import java.util.ArrayList;
import java.util.Set;

public class ContractDetailsDashboard extends GenericInputPage {
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
    public void handleApprovals(String approvalType){
        int count=1;
        boolean foundActiveWorkFlow =false;
        while(count<=20){
            if(CommonMethods.isElementPresent(driver,By.xpath(elements.activeWorkFlow))){
                assert click("Active Work Flow Link",this.elements.activeWorkFlowLink);
                foundActiveWorkFlow=true;
                break;
            }
            assert click("Initial Transaction",this.elements.initialTransaction);
            waitForElementToDissapear(driver,waitForElementToAppear(driver,By.xpath(elements.message)));
            IWebInteract.log.info("Retrying for Active Work Flow, Retry: {}",count);
            count++;
        }
        Assert.assertTrue("Failed to get Active WorkFlow Link", foundActiveWorkFlow);
        pause(5);
        waitForElementToDissapear(driver,waitForElementToAppear(driver,By.xpath(elements.spinner)));
        waitForElementsToPresent(driver,By.xpath(elements.dataTable));
        count=1;
        while (count<=3){
            if(CommonMethods.isElementPresent(driver,By.xpath(elements.notfound))){
                refreshPage();
                IWebInteract.log.info("Retrying for Data in Activity Manager, Retry: {}",count);
                pause(3);
            }else{
                break;
            }
            count++;
        }
        Assert.assertFalse("Failed load tasks in Activity Manager", CommonMethods.isElementPresent(driver,By.xpath(elements.notfound)));
        Assert.assertTrue("Failed to Find "+approvalType+" in Activity Manager", CommonMethods.isElementPresent(driver,By.xpath(taskrow(approvalType))));
        Assert.assertTrue("Status of "+approvalType+" is not Open", CommonMethods.isElementPresent(driver,By.xpath(taskrowstatus(approvalType))));
        String[] title = taskrowelement(approvalType).getAttribute("title").split("-");
        IWebInteract.log.info("Successfully detected {} task",approvalType);
        IWebInteract.log.info("{} task Status : Open",approvalType);
        IWebInteract.log.info("{} task Approver : {}",approvalType,title[1].trim());
        assert click("Back",this.elements.backbutton);
        assert waitForPageLoad();
        pause(5);
        switchLogin(title[1].trim());
        //do approval
        pause(5);
        switchLogin("Centralized");
    }
    public void switchLogin(String approverType){
        String previousURL = getDriver().getCurrentUrl();
        System.out.println(previousURL);
        //LocalDriverProxy.closeDriver();
        //getDriver().close();
        //pause(5);
        //LocalDriverProxy.resetDriver();
        //LocalDriverProxy.getDriver().get(previousURL);
        //getDriver().get(previousURL);
//        driver.get("chrome://settings/clearBrowserData");
//        pause(2);
//        driver.switchTo().activeElement();
//        driver.findElement(By.cssSelector("* /deep/ #clearBrowsingDataConfirm")).click();
//        pause(2);

        //driver.findElement(By.xpath()).click();
        ////cr-button[contains(@id,'clearBrowsingDataConfirm')]
        Set<Cookie> allCookies = driver.manage().getCookies();
        for (Cookie cookie : allCookies) {
            driver.manage().deleteCookieNamed(cookie.getName());
        }
        pause(3);
//        ArrayList<String> tabs = new ArrayList<String> (driver.getWindowHandles());
//        driver.switchTo().window(tabs.get(1));
        driver.get(previousURL);
        //driver.switchTo().window(tabs.get(0)).close();

        LoginSSOPage loginPage = new LoginSSOPage(getDriver());
        assert loginPage.confirmCurrentPage();
        assert loginPage.login(approverType.toLowerCase());
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
    public void makeCorrection(){
        assert click("Make Correction",this.elements.makeCorrection);
        assert waitForPageLoad();
    }

    public String taskrow(String answer){
        return "//span[contains(@title,'"+answer+"')]";
    }
    public String taskrowstatus(String answer){
        return "//div[contains(@filename,'"+answer+"')][4]/div/div[contains(.,'Open')]";
    }
    public WebElement taskrowelement(String answer){
        return findElement(getDriver(), new String[]{"xpath","//span[contains(@title,'"+answer+"')]"});
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
        @FindBy(xpath = "//div[contains(@class,'workflows')]/div/div[contains(@class,'workflows')]/div[contains(@class,'workflow-last')]/a")
        private WebElement activeWorkFlowLink;
        @FindBy(xpath = "//mat-icon[@id='backButton']")
        private WebElement backbutton;


        private String spinner= "//mat-progress-spinner";
        private String message= "//*[@id='message']";
        private String notfound= "//p[contains(.,'No Tasks Found')]";
        private String dataTable= "//adf-datatable";
        private String startWorkFlowPath= "//div[@id='onStartExariWorkflowClick']/a";
        private String editDetails= "//select[contains(@id,'ContractDealStatus')]";
        private String editStatusButton= "//div[contains(@class,'edit-status')]/a/span";
        private String activeWorkFlow="//div[contains(@class,'workflows')]/div/div[contains(@class,'workflows')]/div[contains(@class,'workflow-last')]";


        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
