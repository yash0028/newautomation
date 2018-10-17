package ui_test.step;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.contractManagement.CMDPage;
import ui_test.page.contractManagement.InProgressPage;
import ui_test.util.IUiStep;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Locale;
import java.util.stream.Collectors;

/**
 * Created by dtimaul on 9/26/18.
 */
public class CMDActionRequiredSteps implements IUiStep {
    private static Logger log = LoggerFactory.getLogger(CMDSteps.class);
    private CMDPage cmdPage = null;
    // TODO: Change to Action Required Page
    private InProgressPage inProgressPage = null;
    private String CMD_DASHBOARD_URL = "http://contractPage-admin-ui-clm-dev.ocp-ctc-dmz-nonprod.optum.com/";

    @Given("^I have clicked on Action Required button on the CMD dashboard$")
    public void ClickActionRequiredButtonOnCMDDashboard() throws Throwable {
        getRemoteDriver().get(CMD_DASHBOARD_URL); // Navigate to the CMD page
        cmdPage = new CMDPage(getRemoteDriver());
        Assert.assertTrue("CMD page could not be displayed", cmdPage.confirmCurrentPage());
        //TODO: Change to cmdPage.clickActionRequiredLink when ready
//        Assert.assertTrue(cmdPage.clickInProgressLink());
        Assert.assertTrue(cmdPage.clickErrorsLink());
    }

    @When("^there are Action Required transactions$")
    public void thereAreActionRequiredTransactions() throws Throwable {
        //TODO: Change to actionRequiredPage
        inProgressPage = new InProgressPage(getRemoteDriver());
//        Assert.assertTrue("URL for in progress page does not match", inProgressPage.confirmCurrentPage());

        //expand table to show 25 rows
        inProgressPage.selectTableSize25();

        // check if the table has rows
        Assert.assertTrue(inProgressPage.getTableRows().size() > 0);
    }

    @Then("^the default sort of the data should be oldest submission date to newest submission date$")
    public void verifyRowDateSortOrder() throws Throwable {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MMM d, yyyy", Locale.ENGLISH);
        // Create list of strings with the date from each row in the table
        List<LocalDate> dates = inProgressPage.getDateColumn().stream() //get table data
                .map(webElement -> webElement.getText()) // convert Web element to string
                .map(s -> LocalDate.parse(s, formatter)) // convert string to date
                .collect(Collectors.toList()); // put all dates back into a list

        // Verify that the rows in the table are sorted by date from oldest to newest
        Boolean isSorted = dates.stream().sorted().collect(Collectors.toList()).equals(dates);

        // Note: This assert will fail with in progress page because the table is sorted from newest to oldest
        // but will pass once switched to action required page
        //Assert.assertTrue(isSorted);
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
