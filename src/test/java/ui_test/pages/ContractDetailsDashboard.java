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
import ui_test.page.exari.login.LoginSSOPage;
import ui_test.pages.textFileWriter.TextFileWriter;
import ui_test.util.AbstractPageElements;
import ui_test.util.IUiStep;
import ui_test.util.IWebInteract;
import java.util.List;
import java.util.HashMap;

public class ContractDetailsDashboard extends GenericInputPage implements IUiStep {
    public PageElements elements;
    public TextFileWriter textFileWriter=new TextFileWriter();
    private static Boolean CHECK_APPROVAL_ALREADY_COMPLETED =true;
    private static String DASHBOARD_URL;
    private static String USER="";
    public ContractDetailsDashboard(WebDriver driver) {
        this.elements = new PageElements(driver);
    }
    public void startWorkFlow(){
        refreshPage();
        assert waitTillClickable(elements.startWorkFlow,20);
        assert click("Start WorkFlow",elements.startWorkFlow);
        assert waitForPageLoad();
    }
    public void getActivityManager(boolean refresh,boolean tierApproval){
        int count=1;
        waitTillVisible(elements.inTaskApp);
        while (count<=3){
            pause(3);
            waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(),By.xpath(elements.spinner)));
            waitForElementsToPresent(getDriver(),By.xpath(elements.dataTable));
            if(CommonMethods.isElementPresent(getDriver(),By.xpath(elements.notfound))){
                refreshPage();
                IWebInteract.log.info("Retrying for Data in Activity Manager, Retry: {}",count);
            }else{
                break;
            }
            count++;
        }
        if(!tierApproval){
            Assert.assertFalse("Failed load tasks in Activity Manager", CommonMethods.isElementPresent(getDriver(),By.xpath(elements.notfound)));
        }
        if(refresh){
            refreshPage();
            getActivityManager(false, tierApproval);
        }
    }
    public boolean getActiveWorkFlow(boolean tierApproval,String location,HashMap<String,String> hmap) {
        int count=1;
        boolean foundActiveWorkFlow =false;
        boolean dontSkip = true;
        while(count<=20){
            if(CommonMethods.isElementPresent(getDriver(),By.xpath(getStatus("Approval Complete")))){
                dontSkip=false;
                break;
            }
            if(CommonMethods.isElementPresent(getDriver(),By.xpath(elements.activeWorkFlow))){
                if(click("Active Work Flow Link",elements.activeWorkFlowLink)){
                    foundActiveWorkFlow=true;
                    break;
                }
            }
            if(CommonMethods.isElementPresent(getDriver(),By.xpath(elements.error))){
                Assert.fail("We may have hit an error or something might have been removed or deleted, so check that the URL is correct. Alternatively you might not have permission to view the page (it could be on a private site) or there could have been an internal error. Try checking with your IT team.");
            }
            if(location.equals("Draft")){
                waitTillClickable(this.elements.initialTransaction);
                assert click("Initial Transaction",this.elements.initialTransaction);
            }else if(location.equals("Amendment")){
                waitTillClickable(getAmendmentLink(hmap.get("Amendment Title")));
                assert click("Amendment",getAmendmentLink(hmap.get("Amendment Title")));
            }
            waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(),By.xpath(elements.message)));
            IWebInteract.log.info("Retrying for Active Work Flow, Retry: {}",count);
            count++;
        }
        if(dontSkip){
            Assert.assertTrue("Failed to get Active WorkFlow Link", foundActiveWorkFlow);
            getActivityManager(false,tierApproval);
        }else{
            IWebInteract.log.info("[SKIPPED] Approvals, Status : Approval Complete");
        }
        return foundActiveWorkFlow;
    }
    public String getApproverType(String approvalType,boolean tierApproval){
        boolean foundApprovalType = false;
        boolean completedApprovalType = false;
        String approverType=null;
        for(int count=1;count<=taskrows();count++){
            if(CommonMethods.isElementPresent(getDriver(),By.xpath(getTilteXpath(count,approvalType)))){
                String[] title = getTilte(count,approvalType).getAttribute("title").split("-");
                if(getStatus(count,approvalType).getAttribute("title").equals("Completed")){
                    IWebInteract.log.info("[Task {}] : Discarded, Type : {}, Approver : {}, Status : Completed",count,approvalType,title[1].trim());
                    completedApprovalType = true;
                    continue;
                }else if(getStatus(count,approvalType).getAttribute("title").equals("Open")){
                    IWebInteract.log.info("[Task {}] : Queued, Type : {}, Approver : {}, Status : Open",count,approvalType,title[1].trim());
                    approverType = title[1].trim();
                    foundApprovalType = true;
                    break;
                }
            }
        }
        if(!tierApproval){
            Assert.assertTrue("Failed to Find "+approvalType+" in Activity Manager", foundApprovalType || completedApprovalType);
        }else if(tierApproval && !(foundApprovalType || completedApprovalType)){
            approverType="TierApprovalNotRequired";
        }
        if(completedApprovalType && CHECK_APPROVAL_ALREADY_COMPLETED){
            Assert.assertTrue(approvalType+" is already Completed",foundApprovalType);
        }else if(completedApprovalType){
            IWebInteract.log.info("[COMPLETED] {} Approval",approvalType);
        }
        CHECK_APPROVAL_ALREADY_COMPLETED = false;
        return approverType;
    }
    public boolean switchLogin(String approverType){
        if(!USER.equals(approverType)){
            USER = approverType;
            IWebInteract.log.info("[LOGIN]  {}",approverType);
            relaunchDriver(approverType);
            getDriver().get(DASHBOARD_URL);
            LoginSSOPage loginPage = new LoginSSOPage(getDriver());
            assert loginPage.confirmCurrentPage();
            if(approverType.equals(configGetOptionalString("exari.username").orElse(""))){
                assert loginPage.login();
            }else{
                assert loginPage.login(approverType.toLowerCase());
            }
            this.elements = new PageElements(getDriver());
            return true;
        }else{
            return false;
        }

    }
    public void doCaim(String approvalType, String approverType){
        assert click("Open Task",getMenu(approvalType,approverType));
        assert click("View Task",elements.viewtask);
        waitTillClickable(elements.claimtask);
        assert click("Claim Task",elements.claimtask);
        waitTillVisible(elements.comments);
        if(elements.comments.getAttribute("value").equals("")){
            assert sendKeys("Comments",elements.comments,"Approved");
        }
        assert click("Approve",elements.approve);
        waitTillVisible(elements.detectapproval);
        assert waitTillVisible(elements.confirmApproval);
        IWebInteract.log.info("[APPROVED]  {}",approvalType+" - "+approverType);
        assert waitForPageLoad();
    }
    public String startApprovalFlow(String approvalType,boolean tierApproval,String location,HashMap<String,String> hmap){
        String approverType = getApproverType(approvalType,tierApproval);
        while(approverType!=null && !approverType.equals("TierApprovalNotRequired")){
            if(switchLogin(approverType)){
                if(CommonMethods.isElementPresent(getDriver(),By.xpath(elements.prompt))){
                    click("Banner messages",elements.okbutton);
                }
                getActiveWorkFlow(tierApproval,location,hmap);
            }
            doCaim(approvalType,approverType);
            assert click("Back",this.elements.backbutton);
            assert waitForPageLoad();
            getActivityManager(false,tierApproval);
            approverType = getApproverType(approvalType,tierApproval);
        }
        return approverType;
    }
    public void handleApprovals(String approvalType,boolean tierApproval,String location,HashMap<String,String> hmap) {
        DASHBOARD_URL = getDriver().getCurrentUrl();
        if(getActiveWorkFlow(tierApproval,location,hmap)){
            if(startApprovalFlow(approvalType,tierApproval,location,hmap)==null){
                switchLogin(configGetOptionalString("exari.username").orElse(""));
            }else{
                IWebInteract.log.info("[SKIPPED] {}",approvalType);
                assert click("Back",this.elements.backbutton);
                assert waitForPageLoad();
            }
            CHECK_APPROVAL_ALREADY_COMPLETED = true;
        }
    }

    public void editStatus(String option,String Location,HashMap<String,String> hmap){
        int count=1;
        boolean foundEditStatus =false;
        while(count<=20){
            if(CommonMethods.isElementPresent(getDriver(),By.xpath(elements.editStatusButton))){
                assert click("Edit Status",this.elements.editStatus);
                foundEditStatus=true;
                break;
            }
            if(Location.equals("Draft")){
                waitTillClickable(this.elements.initialTransaction);
                assert click("Initial Transaction",this.elements.initialTransaction);
            }else if(Location.equals("Amendment")){
                waitTillClickable(getAmendmentLink(hmap.get("Amendment Title")));
                assert click("Amendment",getAmendmentLink(hmap.get("Amendment Title")));
            }

            waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(),By.xpath(elements.message)));
            IWebInteract.log.info("Retrying for Edit Status Option, Retry: {}",count);
            count++;
        }
        Assert.assertTrue("Contract is not Approved", foundEditStatus);
            waitForElementsToPresent(getDriver(),By.xpath(elements.editDetails));
            pause(1);
            waitForPageLoad(60);
            Select status = new Select(this.elements.selectStatus);
            status.selectByVisibleText(option);
            pause(1);
            waitForPageLoad(60);
            assert click("Save",this.elements.save);
            //dont give assert for close.
            click("Close",this.elements.close);
            waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(),By.xpath(elements.message)));
    }
    public void finalCapture(){
        click("Final Capture",this.elements.finalCapture);
        assert waitForPageLoad(60);
    }

    public void captureContractNumber(HashMap<String,String> hmap,String filepath)
    {
        String contractDetails=elements.contractSummary.getText();
        IWebInteract.log.info("Contract Details : {}",contractDetails);
        hmap.put("Contract Number",contractDetails.substring(contractDetails.lastIndexOf('-') +1));
        IWebInteract.log.info("Contract Number is: {}",hmap.get("Contract Number"));
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
        actions.clickAndHold(elements.amendmentsWindow).pause(1).moveToElement(elements.fullWindow).release().build().perform();
        elements.amendentTitleBar.clear();
        assert sendKeys("Entering amendment Title",elements.amendentTitleBar,hmap.get("Amendment Title"));
        assert click("Create Amendment Button",elements.getCreateAmendmentButton);
        assert waitForPageLoad();
    }



    public String taskrow(String answer){
        return "//span[contains(@title,'"+answer+"')]";
    }
    public String taskrowstatus(String task, String status){
        return "//div[contains(@filename,'"+task+"')][4]/div/div[contains(.,'"+status+"')]";
    }
    public int taskrows(){
        List<WebElement> tasks = findElements(getDriver(), new String[]{"xpath","//div[contains(@class,'adf-datatable-row')]"});
        return tasks.size()-1;
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
    public String getStatus(String answer){
        return "//span[contains(.,'Status')]/following-sibling::span/div[contains(.,'"+answer+"')]";
    }
    public WebElement getAmendmentLink(String answer){
        return findElement(getDriver(), new String[]{"xpath","//span[contains(.,'"+answer+"')]"});
    }
    public WebElement taskrowelement(String answer){
        return findElement(getDriver(), new String[]{"xpath","//span[contains(@title,'"+answer+"')]"});
    }
    public WebElement getTilte(int count,String approvalType){
        return findElement(getDriver(), new String[]{"xpath","//div[contains(@class,'adf-datatable-row')]["+count+"]//span[contains(@title,'"+approvalType+"')]"});
    }
    public String getTilteXpath(int count,String approvalType){
        return "//div[contains(@class,'adf-datatable-row')]["+count+"]//span[contains(@title,'"+approvalType+"')]";
    }
    public WebElement getStatus(int count,String approvalType){
        return findElement(getDriver(), new String[]{"xpath","//div[contains(@class,'adf-datatable-row')]["+count+"]//div[contains(@filename,'"+approvalType+"')][4]/div/div"});
    }
    public WebElement getMenu(String approvalType,String approver){
        return findElement(getDriver(), new String[]{"xpath","//div[contains(@class,'adf-datatable-row')]//div[contains(@filename,'"+approvalType+" - "+approver+"')][6]/div/button"});

    }
    public static class PageElements extends AbstractPageElements {
        @FindBy(xpath="//h1[contains(text(),'Agreement')]")
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
        @FindBy(xpath = "//td/span[contains(.,'Amendment')]")
        private WebElement Amendment;

        @FindBy(xpath = "//select[contains(@id,'ContractDealStatus')]")
        private WebElement selectStatus;

        @FindBy(xpath = "//button[contains(@id,'form-submit-button')]")
        private WebElement save;
        @FindBy(xpath = "//div[contains(@id,'editDetails')]/a")
        private WebElement close;
        @FindBy(xpath = "//div[contains(@class,'workflows')]/div/div[contains(@class,'workflows')]/div[1][contains(@class,'workflow')]/a")
        private WebElement activeWorkFlowLink;
        @FindBy(xpath = "//mat-icon[@id='backButton']")
        private WebElement backbutton;
        @FindBy(xpath = "//*[@id='prompt']//button[contains(.,'OK')]")
        private WebElement okbutton;
        @FindBy(xpath = "//button[contains(.,'View Task')]")
        private WebElement viewtask;
        @FindBy(xpath = "//button[contains(.,'Claim')]")
        private WebElement claimtask;
        @FindBy(xpath = "//textarea[contains(@id,'comments')]")
        private WebElement comments;
        @FindBy(xpath = "//button[contains(.,'APPROVE')]")
        private WebElement approve;
        @FindBy(xpath = "//button[contains(.,'SAVE')]")
        private WebElement saveclaim;
        @FindBy(xpath = "//div[contains(@class,'outcome-approved')]")
        private WebElement confirmApproval;
        @FindBy(xpath = "//multiline-text-widget[@class='ng-star-inserted']/div[contains(@class,'adf-readonly')]")
        private WebElement detectapproval;
        @FindBy(xpath = "//*[@id='ygtvlabelel1']")
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
        @FindBy(xpath="//div[contains(@class,'create-transaction-supporting-document')]/a/span")
        private WebElement createSupportingDocument;
        @FindBy(xpath="//a[contains(text(),'Provider Roster Output.xml')]")
        private WebElement supportingDocumentType;
        @FindBy(xpath="//div/span[contains(.,' in Task App')]")
        private WebElement inTaskApp;

        private String error= "//div[contains(@class,'alf-error-header')]";
        private String spinner= "//mat-progress-spinner";
        private String message= "//*[@id='message']";
        private String prompt= "//*[@id='prompt']";
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
