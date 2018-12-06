package ui_test.step;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.contractManagement.ActionRequiredPage;
import ui_test.page.contractManagement.CMDPage;
import ui_test.util.IUiStep;

import java.util.List;

/**
 * Created by dtimaul on 9/26/18.
 */
public class CMDActionRequiredSteps implements IUiStep {
    private static Logger log = LoggerFactory.getLogger(CMDSteps.class);
    private String CMD_DASHBOARD_URL = "http://contract-admin-ui-clm-test.ocp-ctc-dmz-nonprod.optum.com/contract-status";
    private CMDPage cmdPage = null;
    private ActionRequiredPage actionRequiredPage = null;
    private WebDriver driver;
    private List<WebElement> tableRows = null;

    /*
    US1301880: CMD - User Input Required Page - Populate rows of data
     */

    @Given("^I have clicked on Action Required button on the CMD dashboard$")
    public void ClickActionRequiredButtonOnCMDDashboard() throws Throwable {
        getDriver().get(CMD_DASHBOARD_URL);
        log.info(getDriver().getTitle());
        cmdPage = new CMDPage(getDriver());

        Assert.assertTrue("CMD page could not be displayed", cmdPage.confirmCurrentPage());
        Assert.assertTrue("Action required link could not be clicked", cmdPage.clickActionRequiredLink());
        log.info("Successfully clicked action required page.");

        actionRequiredPage = new ActionRequiredPage(getDriver());
        //Assert.assertTrue("URL for in progress page does not match", actionRequiredPage.confirmCurrentPage());
    }

    @When("^there are Action Required transactions$")
    public void thereAreActionRequiredTransactions() throws Throwable {
        tableRows = actionRequiredPage.getTableRows();

        if (tableRows.size() > 10) {
            //expand table to show 25 rows
            actionRequiredPage.selectTableSize25();
        }
    }

    @Then("^the default sort of the data should be oldest submission date to newest submission date$")
    public void verifyRowDateSortOrder() throws Throwable {
        if (tableRows.size() > 0) {
            Assert.assertTrue(actionRequiredPage.verifyTableDateSordOrder(true));
        }
    }

    @Then("^for each transaction that requires input I can see data populated for each one of the fields$")
    public void verifyRowColumnData() throws Throwable {
        if (tableRows.size() > 0) {
            actionRequiredPage.verifyAllTableRowFieldContents();
        }
    }

    @When("^there are no Action required transactions$")
    public void thereAreNoActionRequiredTransactions() throws Throwable {
        tableRows = actionRequiredPage.getTableRows();
    }

    @Then("^display the following message: There are currently no contracts that require user review and input at this time$")
    public void displayNoActionRequiredMessage() throws Throwable {
        if (tableRows.isEmpty()) {
            Assert.assertTrue(actionRequiredPage.confirmNoActionRequiredMessage());
        }
    }

    /*
    US1303750: CMD - User Input Required Page - View & Edit contract detail information (no search results found)
     */


}
