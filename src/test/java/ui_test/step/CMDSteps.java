package ui_test.step;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;
import ui_test.page.cmd.transaction.action.ActionRequiredAbstract;
import ui_test.page.cmd.transaction.action.DownstreamErrorTab;
import ui_test.page.cmd.transaction.action.modal.ContractMasterOverrideModal;
import ui_test.page.cmd.transaction.action.modal.DownstreamErrorModal;
import ui_test.page.contractManagement.CMDLoginSSOPage;
import ui_test.page.contractManagement.CMDPage;
import ui_test.util.IUiStep;

import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

public class CMDSteps implements IRestStep, IUiStep {
    private final static String ENDPOINT_TRANSACTION = "https://transaction-status-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private final static String RESOURCE_CONTRACT_SUMMARIES = "/v1.0/transactions/tx/counts-contract";
    private final static String ENDPOINT_ACTIONREQUIRED = "https://fallout-service-clm-test.ocp-ctc-dmz-nonprod.optum.com";
    private final static String RESOURCE_OPENCOUNT = "/v1.0/workobjects/open-count";
    //private final static String CMD_DASHBOARD_URL = "https://contract-management-test.optum.com";
    private static Logger log = LoggerFactory.getLogger(CMDSteps.class);
    private CMDPage cmdPage = null;
    // private ProtoStep protoStep = new ProtoStep(getDriver());
    private int totalElements = 0;

    @Given("^I have entered the CMD dashboard URL$")
    public void navigateToCMDdashboardUrl() {
        String url = configGetOptionalString("CMD.DASHBOARD_URL").orElse("");
        getDriver().get(url);
        getDriver().navigate().to(url);
        getDriver().navigate().to(url);
        cmdPage = new CMDPage(getDriver());


        Assert.assertNotNull("CMD page not displayed", cmdPage);
        CMDLoginSSOPage obj = new CMDLoginSSOPage(getDriver());

        obj.checklogin();


    }






    //@Given("^I am logged into cmd$")
   //public void loginSitePage(String siteOption) {
       //this.protoStep.loginHome();


   // }
    @Given("^I am on the CMD dashboard$")
    public void navigateToCMDdashboardPage() throws InterruptedException {
        navigateToCMDdashboardUrl();
        isDashboardPageDisplayed();
        TimeUnit.SECONDS.sleep(5);
    }

    @And("^I am recognized as a contract administrator with access to CMD$")
    public void verifyAdminUser() {
        //Need to implement code to identify a user is administrator
        /*Recognition of an administrative user is not the highest priority for the current sprint and on hold.
        Per stand up call, it is decided to have User story for this functionality in the future sprints.
         */
    }

    @When("^The dashboard page loads$")
    public void isDashboardPageDisplayed() {

        Assert.assertEquals("Dashboard page not displayed", true, cmdPage.getActionItems().size() == 4);
    }

    @Then("^I can see the following buttons \"(.*)\"$")
    public void verifyButtons(String allButtons) {
        List<WebElement> listOfSubHeaders = cmdPage.getActionItems();
        listOfSubHeaders.stream().forEach(element -> Assert.assertEquals("SubHeader :" + element.getText() + ": should not be displayed", true, allButtons.contains(element.getText())));
    }

    @Then("^I can see the following as a heading on the CMD page \"(.*)\"$")
    public void verifyNavHeaders(String allNavHeaders) {
        Set<String> setOfInputHeaders = Arrays.stream(allNavHeaders.split(",")).map(String::trim).collect(Collectors.toSet());
        Set<String> setOfNavHeaders = new HashSet<>();
        List<WebElement> listOfNavHeaders = cmdPage.getNavHeaders();
        listOfNavHeaders.stream().forEach(value -> setOfNavHeaders.add(value.getText()));
        setOfNavHeaders.add(cmdPage.getHeaderContractManagement());
        setOfNavHeaders.removeIf(value -> value.contains("more_vert"));
        Assert.assertEquals("All navigation headers are not displayed", true, setOfInputHeaders.containsAll(setOfNavHeaders));
    }

    @When("^There are no completed contract requests$")
    public void getCompletedTransactions() {
        int transCountApp = cmdPage.getTransactionsCount("completed");
        Assert.assertTrue("Transaction count is not 0", transCountApp == 0);
    }

    @When("^There are no In Progress transactions$")
    public void getInProgressTransactions() {
        int transCountApp = cmdPage.getTransactionsCount("in-progress");
        Assert.assertTrue("Transaction count is not 0", transCountApp == 0);
    }

    @When("^There are no Action Required Required transactions$")
    public void getActionRequiredTransactions() {
        int transCountApp = cmdPage.getTransactionsCount("action required");
        Assert.assertTrue("Transaction count is not 0", transCountApp == 0);
    }

    @When("^There are no PCP reassignment transactions$")
    public void getPcpReassignTransactions() {
        //Out of scope for now or deferred
    }

    @When("^There are no Error transactions$")
    public void getErrorTransactions() {
        int transCountApp = cmdPage.getTransactionsCount("errors");
        Assert.assertTrue("Transaction count is not 0", transCountApp == 0);
    }

    @When("^There are completed contracts$")
    public void verifyCompletedTransactions() {
        int transCountApp = cmdPage.getTransactionsCount("completed");
        Assert.assertTrue("Transaction count is 0", transCountApp != 0);
    }

    @When("^There are In Progress contracts$")
    public void verifyInProgressTransactions() {
        int transCountApp = cmdPage.getTransactionsCount("in-progress");
        Assert.assertTrue("Transaction count is 0", transCountApp != 0);
    }

    @When("^There are Action Required contracts$")
    public void verifyActionRequiredTransactions() {
        int transCountApp = cmdPage.getTransactionsCount("action required");
        Assert.assertTrue("Transaction count is 0", transCountApp != 0);

    }
    @When("^There are PCP Reassignment transactions$")
    public void verifyPcpReassignTransactions() {
        //Out of scope for now or deferred
    }

    @When("^There are Errors for contract requests$")
    public void verifyErrorTransactions() {

        int transCountApp = cmdPage.getTransactionsCount("errors");
        Assert.assertTrue("Transaction count is 0", transCountApp != 0);
    }

    @Then("^On the Completed button display 0 completed$")
    public void verifyCompletedCount() {
        Assert.assertTrue("Transaction count doesn't match", 0 == getTransactionsCountService("SUCCESS"));
    }

    @Then("^On the In Progress button display 0 In Progress$")
    public void verifyInProgressCountEqualTo0() {
        Assert.assertTrue("Transaction count doesn't match", 0 == getTransactionsCountService("in-progress"));
    }

    @Then("^On the Action Required Button button display 0 In Progress$")
    public void verifyActionRequiredCountEqualTo0() {
        Response response = RestAssured.given().baseUri(ENDPOINT_ACTIONREQUIRED).get(RESOURCE_OPENCOUNT);
        Assert.assertTrue("Transaction count doesn't match", 0 == parseJsonElementResponse(response).getAsJsonObject().get("count").getAsInt());
    }

    @Then("^On the Failed button display 0 Errors$")
    public void verifyErrorsCountEqualTo0() {
        Assert.assertTrue("Transaction count doesn't match", 0 == getTransactionsCountService("FAILED"));
    }

    @Then("^On the Completed button display the number of completed requests returned from the search$")
    public void verifyCompletedCountGreaterThan0() {
        int transCountApp = cmdPage.getTransactionsCount("completed");
        Assert.assertTrue("Transaction count doesn't match", transCountApp == getTransactionsCountService("SUCCESS"));
    }

    @Then("^On the In Progress button display the number of In Progress requests returned from the search$")
    public void verifyInProgressCountGreaterThan0() {
        int transCountApp = cmdPage.getTransactionsCount("in-progress");
        Assert.assertTrue("Transaction count doesn't match", transCountApp == getTransactionsCountService("PENDING"));
    }

    @Then("^On the Action Required button display the number of Action Required requests returned from the search$")
    public void verifyActionRequiredCountGreaterThan0() {
        int transCountApp = cmdPage.getTransactionsCount("action required");
        Response response = RestAssured.given().baseUri(ENDPOINT_ACTIONREQUIRED).get(RESOURCE_OPENCOUNT);
        Assert.assertTrue("Transaction count doesn't match", transCountApp == parseJsonElementResponse(response).getAsJsonObject().get("count").getAsInt());
    }

    @Then("^On the Error button display the number of Error requests returned from the search$")
    public void verifyErrorCountGreaterThan0() {
        int transCountApp = cmdPage.getTransactionsCount("errors");
        Assert.assertTrue("Transaction count doesn't match", transCountApp == (getTransactionsCountService("FAILED") + getTransactionsCountService("PARTIAL_SUCCESS")));
    }

    @When("^I search for Contract$")
    public void searchForContract() throws Throwable{
        cmdPage.searchContract();
    }

    @Then("^Validate Contract details$")
    public void validateContractDetails(DataTable contractDataTable) throws Throwable{
        Map<String, String> contractParam = contractDataTable.asMap(String.class, String.class);
        cmdPage.validateContractDetails(contractParam);
    }
    @Then("^Validate Contract status and request type$")
    public void validateContracttype() throws Throwable {

        cmdPage.ValidateConract();
    }
    @Then("I clicked on Action Required")
    public void validateactionrequired() throws Throwable {

        cmdPage.clickActionRequiredLink();

    }
    @Then("I am in contract master override page")
    public void ContractMasterOverrideTab() throws Throwable {
        ContractMasterOverrideModal overrideModal = new  ContractMasterOverrideModal(getDriver());
        overrideModal.openTabContractMasterOverride();

    }
    @Then("I click on contract sort button")
    public void clickcontractsortbutton() throws Throwable {
        ContractMasterOverrideModal overrideModal = new  ContractMasterOverrideModal(getDriver());
        overrideModal.clickcontractsortbutton();

    }
    @Then("I click site in contract master override")
    public void cclickcontractsite() throws Throwable {
        ContractMasterOverrideModal overrideModal = new  ContractMasterOverrideModal(getDriver());
        overrideModal.clickcontractsite();

    }
    @Then("I click to expand product group")
    public void clickproductgroup() throws Throwable {
        ContractMasterOverrideModal overrideModal = new  ContractMasterOverrideModal(getDriver());
        overrideModal.clickproductgroup();

    }
    @Then("I click edit tab in product group")
    public void clickeditinproductgroup() throws Throwable {
        ContractMasterOverrideModal overrideModal = new  ContractMasterOverrideModal(getDriver());
        overrideModal.clickeditinproductgroup();

    }

    @Then("I click Downstream Error Resolution")
    public void DownstreamErrorTab() throws Throwable {

        DownstreamErrorModal errorModal = new  DownstreamErrorModal(getDriver());
        errorModal.selectDownstreamErrorResolution();
    }
    @Then("I click site in Downstream Error Resolution")
    public void clickDownstreamSite() throws Throwable {

        DownstreamErrorModal errorModal = new  DownstreamErrorModal(getDriver());
        errorModal.clickDownstreamSite();
    }
    @Then("I click to expand Error Code")
    public void clickDownstreamErrorCode() throws Throwable {

        DownstreamErrorModal errorModal = new  DownstreamErrorModal(getDriver());
        errorModal.clickDownstreamSite();
    }
    @Then("I click the Resolve Multiple Tab")
    public void clickResolveMultiple() throws Throwable {

        DownstreamErrorModal errorModal = new  DownstreamErrorModal(getDriver());
        errorModal.clickResolveMultiple();
    }

    @Then("I Enter Resolution Text")
    public void enterResolveMultipleText() throws Throwable {

        DownstreamErrorModal errorModal = new  DownstreamErrorModal(getDriver());
        errorModal.enterResolutionText("Manually Installed");
    }
    @Then("I select Resolution Type Manually Installed")
    public void selectResolveMultipleManuallyInstalled() throws Throwable {

        DownstreamErrorModal errorModal = new  DownstreamErrorModal(getDriver());
        errorModal.selectResolutionManual();
    }

    @Then("I check box to select all rows")
    public void selectCheckBoxMultiple() throws Throwable {

        DownstreamErrorModal errorModal = new  DownstreamErrorModal(getDriver());
        errorModal.clickDownstreamSite();
    }
    @Then("I click submit button")
    public void clickSubmitButton() throws Throwable {

        DownstreamErrorModal errorModal = new  DownstreamErrorModal(getDriver());
        errorModal.clickSubmit();
    }


    public int getTransactionsCountService(String transactionStatus){
        Response response = RestAssured.given().baseUri(ENDPOINT_TRANSACTION).get(RESOURCE_CONTRACT_SUMMARIES);
        JsonArray jsonArray = parseJsonElementResponse(response).getAsJsonArray();
        for(JsonElement element : jsonArray) {
            if (element.getAsJsonObject().get("result").getAsString().equalsIgnoreCase(transactionStatus))
                return element.getAsJsonObject().get("count").getAsInt();
        }
        return 0;
    }
}
