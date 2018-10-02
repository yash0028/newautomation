package ui_test.step;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.junit.Assert;
import org.openqa.selenium.WebElement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.RestHelper;
import ui_test.page.CMDPage;
import ui_test.util.SeleniumHelper;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class CMDSteps {

    private static Logger log = LoggerFactory.getLogger(CMDSteps.class);

    private CMDPage cmdPage = null;
    private String CMD_DASHBOARD_URL = "http://contract-admin-ui-clm-dev.ocp-ctc-dmz-nonprod.optum.com/";
    private String END_POINT = "http://transaction-status-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private String RESOURCE = "/v1.0/contract-summaries/";
    private int totalElements = 0;

    @Given("^I have entered the CMD dashboard URL$")
    public void navigateToCMDdashboardUrl() {
        SeleniumHelper.getWebDriver().get(CMD_DASHBOARD_URL);
        cmdPage = CMDPage.getCMDPage();
        Assert.assertNotNull("CMD page not displayed", cmdPage);
    }

    @Given("^I am on the CMD dashboard$")
    public void navigateToCMDdashboardPage() {
        navigateToCMDdashboardUrl();
        isDashboardPageDisplayed();
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
        Assert.assertEquals("Dashboard page not displayed", true, cmdPage.getSubHeaders().size() == 4);
    }

    @Then("^I can see the following buttons \"(.*)\"$")
    public void verifyButtons(String allButtons) {
        List<WebElement> listOfSubHeaders = cmdPage.getSubHeaders();
        listOfSubHeaders.stream().forEach(element -> Assert.assertEquals("SubHeader :" + element.getText() + ": should not be displayed", true, allButtons.contains(element.getText())));
    }

    @Then("^I can see the following as a heading on the CMD page \"(.*)\"$")
    public void verifyNavHeaders(String allNavHeaders) {
        Set<String> setOfInputHeaders = Arrays.stream(allNavHeaders.split(",")).map(String::trim).collect(Collectors.toSet());
        Set<String> setOfNavHeaders = new HashSet<>();
        List<WebElement> listOfNavHeaders = cmdPage.getNavHeaders();
        listOfNavHeaders.stream().forEach(value -> setOfNavHeaders.add(value.getText()));
        setOfNavHeaders.add(CMDPage.getHeaderContractMetadata().getText());
        setOfNavHeaders.removeIf(value -> value.contains("more_vert"));
        Assert.assertEquals("All navigation headers are not displayed", true, setOfInputHeaders.containsAll(setOfNavHeaders));
    }

    @When("^There are no completed contract requests$")
    public void getCompletedTransactions() {
        totalElements = 0;
        Response response = RestAssured.given().baseUri(END_POINT).get(RESOURCE + "success");
        totalElements = RestHelper.getInstance().parseJsonResponse(response).get("totalElements").getAsInt();
    }

    @When("^There are no In Progress transactions$")
    public void getInProgressTransactions() {
        totalElements = 0;
        Response response = RestAssured.given().baseUri(END_POINT).get(RESOURCE + "in-progress");
        totalElements = RestHelper.getInstance().parseJsonResponse(response).get("totalElements").getAsInt();
    }

    @When("^There are no Action Required Required transactions$")
    public void getActionRequiredTransactions() {
        totalElements = 0;
        Response response = RestAssured.given().baseUri(END_POINT).get(RESOURCE + "partial-success");
        totalElements = RestHelper.getInstance().parseJsonResponse(response).get("totalElements").getAsInt();
    }

    @When("^There are no PCP reassignment transactions$")
    public void getPcpReassignTransactions() {
        Response response = RestAssured.given().baseUri(END_POINT).get(RESOURCE + "manual-input");
        totalElements = RestHelper.getInstance().parseJsonResponse(response).get("totalElements").getAsInt();
    }

    @When("^There are no Error transactions$")
    public void getErrorTransactions() {
        totalElements = 0;
        Response response = RestAssured.given().baseUri(END_POINT).get(RESOURCE + "failed");
        totalElements = RestHelper.getInstance().parseJsonResponse(response).get("totalElements").getAsInt();
    }

    @When("^There are completed contracts$")
    public void verifyCompletedTransactions() {
        getCompletedTransactions();
    }

    @When("^There are In Progress contracts$")
    public void verifyInProgressTransactions() {
        getInProgressTransactions();
    }

    @When("^There are Action Required contracts$")
    public void verifyActionRequiredTransactions() {
        getActionRequiredTransactions();
    }

    @When("^There are PCP Reassignment transactions$")
    public void verifyPcpReassignTransactions() {
        getPcpReassignTransactions();
    }

    @When("^There are Errors for contract requests$")
    public void verifyErrorTransactions() {
        getErrorTransactions();
    }

    @Then("^On the Completed button display 0 completed$")
    public void verifyCompletedCount() {
        verifyActionCountEqualTo0("Completed", 0);
    }

    @Then("^On the In Progress button display 0 In Progress$")
    public void verifyInProgressCountEqualTo0() {
        verifyActionCountEqualTo0("In-Progress", 1);
    }

    @Then("^On the Action Required Button button display 0 In Progress$")
    public void verifyActionRequiredCountEqualTo0() {
        verifyActionCountEqualTo0("Action Required", 2);
    }

    @Then("^On the Failed button display 0 Errors$")
    public void verifyErrorsCountEqualTo0() {
        verifyActionCountEqualTo0("Error", 3);
    }

    @Then("^On the Completed button display the number of completed requests returned from the search$")
    public void verifyCompletedCountGreaterThan0() {
        verifyActionCountGreaterThan0("Completed", 0);
    }

    @Then("^On the In Progress button display the number of In Progress requests returned from the search$")
    public void verifyInProgressCountGreaterThan0() {
        verifyActionCountGreaterThan0("In-Progress", 1);
    }

    @Then("^On the Action Required button display the number of Action Required requests returned from the search$")
    public void verifyActionRequiredCountGreaterThan0() {
        verifyActionCountGreaterThan0("Action Required", 2);
    }

    @Then("^On the Error button display the number of Error requests returned from the search$")
    public void verifyErrorCountGreaterThan0() {
        verifyActionCountGreaterThan0("Errors", 3);
    }

    public void verifyActionCountEqualTo0(String action, int elementIndex) {
        if (totalElements == 0)
            Assert.assertEquals("Count should not be more than 0 for " + action, 0, Integer.valueOf(cmdPage.getTransactionsCount().get(elementIndex).getText()).intValue());
    }

    public void verifyActionCountGreaterThan0(String action, int elementIndex) {
        if (totalElements != 0)
            Assert.assertEquals("Count should not be equal to 0 for " + action, totalElements, Integer.valueOf(cmdPage.getTransactionsCount().get(elementIndex).getText()).intValue());
    }
}
