package ui_test.step;

import cucumber.api.PendingException;
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
import ui_test.util.SeleniumHelper;

import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * Created by dtimaul on 9/26/18.
 */
public class CMDActionRequiredSteps implements IUiStep {
    private static Logger log = LoggerFactory.getLogger(CMDSteps.class);
    private String CMD_DASHBOARD_URL = "http://localhost:4200/contract-status";
    private CMDPage cmdPage = null;
    private ActionRequiredPage actionRequiredPage = null;
    private WebDriver driver;
    private List<WebElement> tableRows = null;

    @Given("^I have clicked on Action Required button on the CMD dashboard$")
    public void ClickActionRequiredButtonOnCMDDashboard() throws Throwable {
        driver = SeleniumHelper.launchBrowser();
        driver.get(CMD_DASHBOARD_URL);
        driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
        cmdPage = new CMDPage(driver);
        Assert.assertTrue("CMD page could not be displayed", cmdPage.confirmCurrentPage());
        Assert.assertTrue("Action required link could not be clicked", cmdPage.clickActionRequiredLink());

//        getRemoteDriver().get(CMD_DASHBOARD_URL); // Navigate to the CMD page
//        cmdPage = new CMDPage(getRemoteDriver());
    }

    @When("^there are Action Required transactions$")
    public void thereAreActionRequiredTransactions() throws Throwable {
        // actionRequiredPage = new actionRequiredPage(getRemoteDriver());
        actionRequiredPage = new ActionRequiredPage(driver);
        Assert.assertTrue("URL for in progress page does not match", actionRequiredPage.confirmCurrentPage());

        //expand table to show 25 rows
        actionRequiredPage.selectTableSize25();

        tableRows = actionRequiredPage.getTableRows();

        // check if the table has rows
        Assert.assertTrue(tableRows.size() > 0);
    }

    @Then("^the default sort of the data should be oldest submission date to newest submission date$")
    public void verifyRowDateSortOrder() throws Throwable {
        Assert.assertTrue(actionRequiredPage.verifyTableDateSordOrder(true));
        driver.close();

    }

    @Then("^for each transaction that requires input I can see data populated for each one of the fields$")
    public void verifyRowColumnData() throws Throwable {
        //TODO implement method
        actionRequiredPage.verifyMultipleRandomRowContent();
        driver.close();
    }

    @When("^there are no Action required transactions$")
    public void thereAreNoActionRequiredTransactions() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^the following message \"([^\"]*)\" appears on the page$")
    public void theFollowingMessageAppearsOnThePage(String arg0) throws Throwable {
        driver.close();

    }


}
