package step_definitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import pages.ActionRequiredPage;
import pages.CMDPage;
import pages.InProgressPage;
import utils.SeleniumHelper;

import java.util.logging.Logger;

/**
 * Created by dtimaul on 9/26/18.
 */
public class CMDActionRequiredSteps {
    private WebDriver driver = null;
    private CMDPage cmdPage = null;
    // TODO: Change to Action Required Page
    private InProgressPage inProgressPage = null;
    private String CMD_DASHBOARD_URL = "http://contract-admin-ui-clm-dev.ocp-ctc-dmz-nonprod.optum.com/";
    //TODO: Change to CMD_ACTION_REQUIRED_PAGE_URL when ready
    private String IN_PROGRESS_PAGE_URL = "http://contract-admin-ui-clm-test.ocp-ctc-dmz-nonprod.optum.com/contract-summary/in-progress";

    @Given("^I have clicked on Action Required button on the CMD dashboard$")
    public void ClickActionRequiredButtonOnCMDDashboard() throws Throwable {
        SeleniumHelper.launchBrowser("chrome");
        driver = SeleniumHelper.getWebDriver();
        driver.navigate().to(CMD_DASHBOARD_URL);
        cmdPage = CMDPage.getCMDPage();
        Assert.assertNotNull("CMD page could not be displayed", cmdPage);
        //TODO: Change to cmdPage.clickActionRequiredLink when ready
        Assert.assertTrue(cmdPage.clickInProgressLink());
    }

    @When("^there are Action Required transactions$")
    public void thereAreActionRequiredTransactions() throws Throwable {
        // Get all table rows
        //TODO: Change to
        inProgressPage.

    }

    @Then("^the default sort of the data should be oldest submission date to newest submission date$")
    public void theDefaultSortOfTheDataShouldBeOldestSubmissionDateToNewestSubmissionDate() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^for each transaction that requires input I can see data populated for each one of the fields$")
    public void forEachTransactionThatRequiresInputICanSeeDataPopulatedForEachOneOfTheFields() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^there are no Action required transactions$")
    public void thereAreNoActionRequiredTransactions() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^the following message \"([^\"]*)\" appears on the page$")
    public void theFollowingMessageAppearsOnThePage(String arg0) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }


}
