package ui_test.step;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
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
import util.ExcelReader;
import util.IFileInteract;
import util.configuration.IConfigurable;


public class ExariSteps implements IUiStep, IFileInteract, IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(IWebInteract.class);

    private LoginPage loginPage;
    private DashboardPage dashboardPage;
    private ContractPage contractPage;
    private GenericSitePage sitePage;

    @Given("^I am logged into Exari as a valid user$")
    public void loginAndGoToHomePage() {
        getRemoteDriver().get(configGetOptionalString("exari.devURL").orElse(""));
        loginPage = new LoginPage(getRemoteDriver());
        Assert.assertTrue(loginPage.confirmCurrentPage());

        Assert.assertTrue(loginPage.login());
        log.info("login successful");

        dashboardPage = loginPage.getHomePage();
    }

    @Given("^I am on the \"([^\"]*)\" site$")
    public void setSite(String siteOption) {
        Assert.assertTrue(dashboardPage.confirmCurrentPage());
        Assert.assertTrue(dashboardPage.setSiteEnvironmentByString(siteOption));

        sitePage = dashboardPage.getSiteManager().getTestSitePage();
        assert sitePage.confirmCurrentPage();
        log.info("moved to {} site", siteOption);
    }

    @When("^I author a SMGA contract in Exari$")
    public void authorSMGAContractInExari() {
        ExcelReader excelReader = new ExcelReader(getResourcePath("/support/TestData.xlsx"));
        final int Row = 2;
        GenericInputPage page;

        //Start Contract Creation for SMGA Template
        sitePage.startContractWithSMGATemplate();
        log.info("started contract wizard");

        //Switch to Contract Wizard
        WizardManager wizard = sitePage.getContractWizard();

        //Handle PES Input Page
        PESInputPage pesInputPage = wizard.getPESInputPage();
        assert pesInputPage.confirmCurrentPage();
        String mpinInput = excelReader.getCellData("SMGA", "MPIN", Row);
        pesInputPage.enterMPIN(mpinInput);
        pesInputPage.clickNext();

        //Handle PES Response Page
        PESResponsePage pesResponsePage = wizard.getPESResponsePage();
        assert pesResponsePage.confirmCurrentPage();
        pesResponsePage.selectCounterPartyOption1();
        pesResponsePage.clickNext();

        //Handle Market Number Page
        MarketNumberInputPage marketNumberInputPage = wizard.getMarketNumberInputPage();
        assert marketNumberInputPage.confirmCurrentPage();
        String marketNumberInput = excelReader.getCellData("SMGA", "MarketNo", Row);
        marketNumberInputPage.selectMarketNumber(marketNumberInput);
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
        String effectiveDateInput = excelReader.getCellData("SMGA", "EffectiveDate", Row);
        contractDetailsPage.setEffectiveDate(effectiveDateInput);
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

        //set Edit Status
        contractPage.setEditStatus("Final Pending QA");

        //click Final Capture
        contractPage.clickFinalCapture();

        //Handle Interview Summary Page, no action
        page = wizard.getInterviewSummaryPage();
        assert page.confirmCurrentPage();
        page.clickNext();

        //Handle Wizard Complete Page
        wizardCompletePage = wizard.getWizardCompletePage();
        assert wizardCompletePage.confirmCurrentPage();
        wizardCompletePage.clickWizardNext();

        //Back to Contract Page
        assert contractPage.confirmCurrentPage();

        //set Edit Status
        contractPage.setEditStatus("Active");

        assert contractPage.checkActiveStatus();
    }


    @When("^I amend the most recent SMGA contract in Exari$")
    public void amendmentOfSMGAContractInExari() {
        WizardManager wizard;
        GenericInputPage page;

        //Start Filtering Contracts in Site Page

        //Set Smart Template to SMGA
        sitePage.selectSmartTemplateFilterOptionSMGA();

        //Set Status to Active
        sitePage.selectStatusFilterOptionActive();

        //Click on First Row of My Contracts table
        sitePage.clickContractsTableFirstRow();

        //Switch to Contract Page
        contractPage = sitePage.getContractPage();

        //Click Create Amendment
        contractPage.createAmendment("Amendment");

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

        //set Edit Status
        contractPage.setEditStatus("Final Pending QA");

        //click Final Capture
        contractPage.clickFinalCapture();

        //Handle Interview Summary Page, no action
        page = wizard.getInterviewSummaryPage();
        assert page.confirmCurrentPage();
        page.clickNext();

        //Handle Wizard Complete Page
        wizardCompletePage = wizard.getWizardCompletePage();
        assert wizardCompletePage.confirmCurrentPage();
        wizardCompletePage.clickWizardNext();

        //Back to Contract Page
        assert contractPage.confirmCurrentPage();

        //set Edit Status
        contractPage.setEditStatus("Active");

        assert contractPage.checkActiveStatus();
    }


    @When("^I terminate the most recent SMGA contract in Exari$")
    public void terminateSMGAContractInExari() {
        WizardManager wizard;
        GenericInputPage page;

        //Start Filtering Contracts in Site Page

        //Set Smart Template to SMGA
        sitePage.selectSmartTemplateFilterOptionSMGA();

        //Set Status to Active
        sitePage.selectStatusFilterOptionActive();

        //Click on First Row of My Contracts table
        sitePage.clickContractsTableFirstRow();

        //Switch to Contract Page
        contractPage = sitePage.getContractPage();

        //Click Terminate button
        contractPage.clickTerminate();

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

        //set Edit Status
        contractPage.setEditStatus("Final Pending QA");

        //click Final Capture
        contractPage.clickFinalCapture();

        //Handle Interview Summary Page, no action
        page = wizard.getInterviewSummaryPage();
        assert page.confirmCurrentPage();
        page.clickNext();

        //Handle Wizard Complete Page
        wizardCompletePage = wizard.getWizardCompletePage();
        assert wizardCompletePage.confirmCurrentPage();
        wizardCompletePage.clickWizardNext();

        //Back to Contract Page
        assert contractPage.confirmCurrentPage();

        //set Edit Status
        contractPage.setEditStatus("Active");

        assert contractPage.checkActiveStatus();

//
//        contractPage.clickOnNextAndWait(contractPage.wizardComplete_label);
//        contractPage.ClickOnWizardCompleteNext(contractPage.siteDashboard_label);
//
//        //set Edit Status
//        dashboardPage.setEditStatus("Final Pending QA", dashboardPage.finalCapture);
//
//        //click Final Capture
//        dashboardPage.clickFinalCapture(contractPage.interviewsummary_label);
//        dashboardPage.pause(2);
//        contractPage.clickOnNextAndWait(contractPage.wizardComplete_label);
//        contractPage.ClickOnWizardCompleteNext(contractPage.siteDashboard_label);
//
//        //set Edit Status
//        dashboardPage.setEditStatus("Active", dashboardPage.status_active);

    }

    @Then("^I have a completed SMGA contract in Exari$")
    public void iHaveACompletedSMGAContractInExari() throws Throwable {

    }

    @Then("^I have an amended SMGA contract in Exari$")
    public void iHaveAnAmendedSMGAContractInExari() throws Throwable {

    }

    @Then("^I have a terminated SMGA contract in Exari$")
    public void iHaveATerminatedSMGAContractInExari() throws Throwable {

    }
}
