package ui_test.step;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.ContractPage;
import ui_test.page.exari.contract.wizard.WizardManager;
import ui_test.page.exari.contract.wizard.subpages.*;
import ui_test.page.exari.home.DashboardPage;
import ui_test.page.exari.home.site.subpages.GenericSitePage;
import ui_test.page.exari.login.LoginPage;
import ui_test.util.IUiStep;
import ui_test.util.IWebInteract;
import util.configuration.IConfigurable;
import util.file.IFileReader;

import java.util.Map;


public class ExariSteps implements IUiStep, IFileReader, IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(IWebInteract.class);

    private DashboardPage dashboardPage;
    private ContractPage contractPage;
    private GenericSitePage sitePage;

    @Given("^I am logged into Exari Dev as a valid user and go to the \"([^\"]*)\" site$")
    public void iAmLoggedIntoExariDevAsAValidUserAndGoToTheSite(String siteOption) {
        loginAndGoToHomePage();
        setSite(siteOption);
    }

    @When("^I author a contract using the following contract information$")
    public void authorContract(DataTable contractDataTable) {
        Map<String, String> contractParam = contractDataTable.asMap(String.class, String.class);

        sitePage.startContractAuthor();
        WizardManager wizard = sitePage.getContractWizard();

        //PES Input & PES Response :: Search PES for MPIN or TIN
        assert wizard.searchPES(
                contractParam.getOrDefault("MPIN", null),
                contractParam.getOrDefault("TIN", null),
                1
        );

        //Provider Details :: Enter the Market number to use
        assert wizard.enterMarketNumber(
                contractParam.getOrDefault("Market Number", null)
        );

        //Document Selection :: Select Paper Type
        assert wizard.selectPaperType(
                contractParam.getOrDefault("Paper Type", null)
        );

        //Enter Phycon
        assert wizard.enterPhyconNumber(
                contractParam.getOrDefault("Phycon", null)
        );

        //Appendix 1 :: Select Additional Manuals
        assert wizard.enterAppendix1();

        //Appendix 2 ::
        assert wizard.enterAppendix2();

        //Payment Appendix ::
        assert wizard.enterPaymentAppendix();

        //Regulatory Appendix ::

        //Appendix 3 ::

        //Appendix 4 ::

        //Select HBP Option
        assert wizard.selectHBPOption(
                contractParam.getOrDefault("HBP", null)
        );


    }

    @Then("^I have an active contract in Exari$")
    public void iHaveAnActiveContractInExari() {
        log.info("checking for active status");
        assert contractPage.checkActiveStatus();
    }

    /*
    AUTHOR CONTRACT STEPS
     */

    @And("^the \"([^\"]*)\" contract has an MPIN of \"([^\"]*)\", a market number of \"([^\"]*)\", and an effective date of \"([^\"]*)\"$")
    public void authorContractWizard(String contractType, String mpinValue, String marketNumberValue, String effectiveDateValue) {
        GenericInputPage page;

        //Switch to Contract Wizard
        WizardManager wizard = sitePage.getContractWizard();

        //Handle PES Input Page
        PESInputPage pesInputPage = wizard.getPESInputPage();
        assert pesInputPage.confirmCurrentPage();
        pesInputPage.enterMPIN(mpinValue);
        pesInputPage.clickNext();

        //Handle PES Response Page
        PESResponsePage pesResponsePage = wizard.getPESResponsePage();
        assert pesResponsePage.confirmCurrentPage();
        pesResponsePage.selectCounterPartyOption1();
        pesResponsePage.clickNext();

        //Handle Market Number Page
        MarketNumberInputPage marketNumberInputPage = wizard.getMarketNumberInputPage();
        assert marketNumberInputPage.confirmCurrentPage();
        marketNumberInputPage.selectMarketNumber(marketNumberValue);
        marketNumberInputPage.clickNext();

        //Handle Provider Details Review Page, no action
        page = wizard.getProviderDetailsReviewPage();
        assert page.confirmCurrentPage();
        page.clickNext();

        //Handle RFP Response Part 1 Page, no action
        page = wizard.getRFPResponsePart1Page();
        assert page.confirmCurrentPage();
        page.clickNext();

        //Handle RFP Response Part 2 Page, no action
        page = wizard.getRFPResponsePart2Page();
        assert page.confirmCurrentPage();
        page.clickNext();

        //Handle Document Selection Page
        DocumentSelectionPage documentSelectionPage = wizard.getDocumentSelectionPage();
        assert documentSelectionPage.confirmCurrentPage();
        documentSelectionPage.selectPaperTypeOptionalSMGA();
        documentSelectionPage.clickNext();

        //Handle to HBPs Red Door Page
        HBPRedDoorPage hbpRedDoorPage = wizard.getHBPRedDoorPage();
        assert hbpRedDoorPage.confirmCurrentPage();
        hbpRedDoorPage.selectHospitalBasedProvidersOptionNo();
        hbpRedDoorPage.clickNext();

        //Handle Appendix 1 Page
        Appendix1Page appendix1Page = wizard.getAppendix1Page();
        assert appendix1Page.confirmCurrentPage();
        appendix1Page.selectAdditionalManualOptionNo();
        appendix1Page.clickNext();

        //Handle Appendix 2 Page, no action
        page = wizard.getAppendix2Page();
        assert page.confirmCurrentPage();
        page.clickNext();

        //Handle Payment Appendix Page, no action
        page = wizard.getPaymentAppendixPage();
        assert page.confirmCurrentPage();
        page.clickNext();

        //Handle Appendix 3 Page, no action
        page = wizard.getAppendix3Page();
        assert page.confirmCurrentPage();
        page.clickNext();

        //Handle Appendix 4 Page, no action
        page = wizard.getAppendix4Page();
        assert page.confirmCurrentPage();
        page.clickNext();

        //Handle Contact Details Page
        ContractDetailsPage contractDetailsPage = wizard.getContractDetailsPage();
        assert contractDetailsPage.confirmCurrentPage();
        contractDetailsPage.setEffectiveDate(effectiveDateValue);
        contractDetailsPage.clickNext();

        //Handle Interview Summary Page, no action
        page = wizard.getInterviewSummaryPage();
        assert page.confirmCurrentPage();
        page.clickNext();

        //Handle Wizard Complete Page
        WizardCompletePage wizardCompletePage = wizard.getWizardCompletePage();
        assert wizardCompletePage.confirmCurrentPage();
        wizardCompletePage.clickWizardNext();

        //Back to Contract Page
        contractPage = sitePage.getContractPage();
        assert contractPage.confirmCurrentPage();

        //Perform QA analysis and set status as active
        finishContract();
    }

    /*
    AMEND CONTRACT STEPS
     */

    @When("^I amend that \"([^\"]*)\" contract in Exari$")
    public void amendmentOfSMGAContractInExari(String contractType) {
        WizardManager wizard;
        GenericInputPage page;

        //Click Create Amendment
        contractPage.startAmendment("Amendment");

        //Switch to Contract Wizard
        wizard = contractPage.getContractWizard();

        //Handle Interview Summary Page, no action
        page = wizard.getInterviewSummaryPage();
        assert page.confirmCurrentPage();
        page.clickNext();

        //Handle Wizard Complete Page
        WizardCompletePage wizardCompletePage = wizard.getWizardCompletePage();
        assert wizardCompletePage.confirmCurrentPage();
        wizardCompletePage.clickWizardNext();

        //Back to Contract Page
        assert contractPage.confirmCurrentPage();

        //Perform QA analysis and set status as active
        finishContract();
    }

    /*
    TERMINATE CONTRACT STEPS
     */

    @When("^I terminate that \"([^\"]*)\" contract in Exari$")
    public void terminateSMGAContractInExari(String contractType) {
        WizardManager wizard;
        GenericInputPage page;

        //Click Terminate button
        contractPage.startTerminate();

        //Switch to Contract Wizard
        wizard = contractPage.getContractWizard();

        //Handle Interview Summary Page, no action
        page = wizard.getInterviewSummaryPage();
        assert page.confirmCurrentPage();
        page.clickNext();

        //Handle Wizard Complete Page
        WizardCompletePage wizardCompletePage = wizard.getWizardCompletePage();
        assert wizardCompletePage.confirmCurrentPage();
        wizardCompletePage.clickWizardNext();

        //Back to Contract Page
        assert contractPage.confirmCurrentPage();

        //Perform QA analysis and set status as active
        finishContract();
    }

    @When("^I select the most recent \"([^\"]*)\" \"([^\"]*)\" contract in Exari$")
    public void selectFirstContractWithFilter(String contractType, String contractStatus) {
        log.info("filtering contracts by {} type and {} status", contractType, contractStatus);
        //Start Filtering Contracts in Site Page

        //Set Smart Template to SMGA
        sitePage.selectSmartTemplateFilterOptionSMGA();

        //Set Status to Active
        sitePage.selectStatusFilterOptionActive();

        //Click on First Row of My Contracts table
        sitePage.clickContractsTableFirstRow();

        //Switch to Contract Page
        contractPage = sitePage.getContractPage();
    }

    /*
    HELPER METHODS
     */

    private void loginAndGoToHomePage() {
        String url = configGetOptionalString("exari.devURL").orElse("");
        getDriver().get(url);
        LoginPage loginPage = new LoginPage(getDriver());
        Assert.assertTrue(loginPage.confirmCurrentPage());

        Assert.assertTrue(loginPage.login());
        log.info("login successful");

        dashboardPage = loginPage.getHomePage();
    }

    private void setSite(String siteOption) {
        Assert.assertTrue(dashboardPage.confirmCurrentPage());
        sitePage = dashboardPage.getNavigationPanel().setSiteEnvironment(siteOption);

        assert sitePage.confirmCurrentPage();
        log.info("moved to {} site", siteOption);
    }

    private void finishContract() {
        WizardManager wizard = contractPage.getContractWizard();
        GenericInputPage page;

        //set Edit Status
        contractPage.setEditStatus("Final Pending QA");

        //click Final Capture
        contractPage.clickFinalCapture();

        //Handle Interview Summary Page, no action
        page = wizard.getInterviewSummaryPage();
        assert page.confirmCurrentPage();
        page.clickNext();

        //Handle Wizard Complete Page
        WizardCompletePage wizardCompletePage = wizard.getWizardCompletePage();
        assert wizardCompletePage.confirmCurrentPage();
        wizardCompletePage.clickWizardNext();

        //Back to Contract Page
        assert contractPage.confirmCurrentPage();

        //set Edit Status
        contractPage.setEditStatus("Active");
    }
}
