package ui_test.step;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
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

    /*
    US1301880: CMD - User Input Required Page- Populate rows of data
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
        Assert.assertTrue("URL for in progress page does not match", actionRequiredPage.confirmCurrentPage());
    }

    @When("^there are Action Required transactions$")
    public void thereAreActionRequiredTransactions() throws Throwable {
        //expand table to show 25 rows
        actionRequiredPage.selectTableSize25();

        tableRows = actionRequiredPage.getTableRows();
    }

    @Then("^the default sort of the data should be oldest submission date to newest submission date$")
    public void verifyRowDateSortOrder() throws Throwable {
        if (tableRows.size() > 0) {
            Assert.assertTrue(actionRequiredPage.verifyTableDateSordOrder(true));
            driver.close();
        }
    }

    @Then("^for each transaction that requires input I can see data populated for each one of the fields$")
    public void verifyRowColumnData() throws Throwable {
        if (tableRows.size() > 0) {
            actionRequiredPage.verifyAllTableRowFieldContents();
            driver.close();
        }
    }


    @When("^there are no Action required transactions$")
    public void thereAreNoActionRequiredTransactions() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^the following message: There are currently no contracts that require user review and input at this time$")
    public void theFollowingMessageThereAreCurrentlyNoContractsThatRequireUserReviewAndInputAtThisTime() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Given("^I am on the CMD User Review and Input page$")
    public void iAmOnTheCMDUserReviewAndInputPage() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    /*
    US1303750: CMD- User Input Required Page- View & Edit contract detail information (no search results found)
     */

    @Given("^I have clicked on the detail information on a contract ID$")
    public void iHaveClickedOnTheDetailInformationOnAContractID() throws Throwable {
        ClickActionRequiredButtonOnCMDDashboard();
        actionRequiredPage.clickTableRow(1);
    }

    @When("^The contract ID has more than one product grouping$")
    public void theContractIDHasMoreThanOneProductGrouping() throws Throwable {
//        System.out.println("****** product group count ******" + actionRequiredPage.getProductGroups(2).size());
        throw new PendingException();
    }

    @And("^No contract master was found for all product groupings$")
    public void noContractMasterWasFoundForAllProductGroupings() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^For each product grouping under the contract ID I can see the following message: No contract master ID was found\\. Please make a selection to complete the contract load\\.$")
    public void forEachProductGroupingUnderTheContractIDICanSeeTheFollowingMessageNoContractMasterIDWasFoundPleaseMakeASelectionToCompleteTheContractLoad() throws Throwable {
        driver.close();
    }

    @And("^I can see the latest input parameters for each product grouping underneath the search details column:$")
    public void iCanSeeTheLatestInputParametersForEachProductGroupingUnderneathTheSearchDetailsColumn() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Given("^I have selected a contract master for a product grouping$")
    public void iHaveSelectedAContractMasterForAProductGrouping() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^I click on the proceed with contract load button$")
    public void iClickOnTheProceedWithContractLoadButton() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^The following message is displayed to me \"([^\"]*)\"$")
    public void theFollowingMessageIsDisplayedToMe(String arg0) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^The product grouping row is removed from the display$")
    public void theProductGroupingRowIsRemovedFromTheDisplay() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Given("^I am on the CMD Action Required page$")
    public void iAmOnTheCMDActionRequiredPage() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^I entered in a contract master number, contract master name, contract system, contract master effective date$")
    public void iEnteredInAContractMasterNumberContractMasterNameContractSystemContractMasterEffectiveDate() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^I selected use this contract master \"([^\"]*)\"$")
    public void iSelectedUseThisContractMaster(String arg0) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^I have clicked on the submit button$")
    public void iHaveClickedOnTheSubmitButton() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^The modal window closes and I am brought back to the CMD action required page with the product grouping information I was editing displayed to me$")
    public void theModalWindowClosesAndIAmBroughtBackToTheCMDActionRequiredPageWithTheProductGroupingInformationIWasEditingDisplayedToMe() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^The status of the contract master product grouping is changed to contract master selected$")
    public void theStatusOfTheContractMasterProductGroupingIsChangedToContractMasterSelected() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^The contract ID has a single product grouping$")
    public void theContractIDHasASingleProductGrouping() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^No contract master was found$")
    public void noContractMasterWasFound() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^I can see the following message: \"([^\"]*)\"$")
    public void iCanSeeTheFollowingMessage(String arg0) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^I can see the latest input parameters underneath the Search details column$")
    public void iCanSeeTheLatestInputParametersUnderneathTheSearchDetailsColumn() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^The status of of the contract master product grouping is 'contract master selected\"$")
    public void theStatusOfOfTheContractMasterProductGroupingIsContractMasterSelected() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^A proceed with contract load button appears$")
    public void aProceedWithContractLoadButtonAppears() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @When("^I have clicked the down arrow on a contract summary row$")
    public void iHaveClickedTheDownArrowOnAContractSummaryRow() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^No contract results were found for the contract summary row$")
    public void noContractResultsWereFoundForTheContractSummaryRow() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @And("^I have clicked the edit button$")
    public void iHaveClickedTheEditButton() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^A modal window appears for me to enter the following data fields\\.$")
    public void aModalWindowAppearsForMeToEnterTheFollowingDataFields() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

}
