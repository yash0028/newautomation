package ui_test.step;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.HomePage;
import ui_test.page.exari.LoginPage;
import ui_test.page.exari.contract.wizard.ContractWizard;
import ui_test.page.exari.contract.wizard.subpages.*;
import ui_test.util.IUiStep;
import ui_test.util.IWebInteract;
import util.ExcelReader;
import util.IFileInteract;
import util.configuration.IConfigurable;


public class ExariSteps implements IUiStep, IFileInteract, IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(IWebInteract.class);

    private LoginPage loginPage;
    private HomePage homePage;
    private ExcelReader excelReader;

    @Given("^I am logged into Exari as a valid user$")
    public void loginAndGoToHomePage() {
        getRemoteDriver().get(configGetOptionalString("exari.devURL").orElse(""));
        loginPage = new LoginPage(getRemoteDriver());
        Assert.assertTrue(loginPage.confirmCurrentPage());

        Assert.assertTrue(loginPage.login());
        log.info("login successful");

        homePage = loginPage.getHomePage();
    }

    @Given("^I am on the \"([^\"]*)\" site$")
    public void setSite(String siteOption) {
//        Assert.assertTrue(homePage.confirmCurrentPage());
        Assert.assertTrue(homePage.setSiteEnvironment2Test());
        log.info("moved to test site");
    }

    @When("^I author a SMGA contract in Exari$")
    public void authorSMGAContractInExari() {
        excelReader = new ExcelReader(getResourcePath("/support/TestData.xlsx"));
        final int Row = 2;
        GenericInputPage page;

        //Start Contract Creation for SMGA Template
        homePage.startContractWithSMGATemplate();
        log.info("started contract wizard");

        //Switch to Contract Wizard
        ContractWizard wizard = homePage.getContractPage().getContractWizard();

        //Handle PES Input Page
        PESInputPage pesInputPage = wizard.getPESInputPage();
        String mpinInput = excelReader.getCellData("SMGA", "MPIN", Row);
        pesInputPage.enterMPIN(mpinInput);
        pesInputPage.clickNext();

        //Handle PES Response Page
        PESResponsePage pesResponsePage = wizard.getPESResponsePage();
        pesResponsePage.selectCounterPartyOption1();
        pesResponsePage.clickNext();

        //Handle Document Selection Page
        DocumentSelectionPage documentSelectionPage = wizard.getDocumentSelectionPage();
        documentSelectionPage.selectPaperTypeOptionalSMGA();
        documentSelectionPage.clickNext();

        //Handle Market Number Page
        MarketNumberInputPage marketNumberInputPage = wizard.getMarketNumberInputPage();
        String marketNumberInput = excelReader.getCellData("SMGA", "MarketNo", Row);
        marketNumberInputPage.selectMarketNumber(marketNumberInput);
        marketNumberInputPage.clickNext();

        //Handle Provider Details Review Page, no action
        page = wizard.getProviderDetailsReviewPage();
        page.clickNext();

        //Handle RFP Response Part 1 Page, no action
        page = wizard.getRFPResponsePart1Page();
        page.clickNext();

        //Handle RFP Response Part 2 Page, no action
        page = wizard.getRFPResponsePart2Page();
        page.clickNext();

        //Handle to HBPs Red Door Page
        HBPRedDoorPage hbpRedDoorPage = wizard.getHBPRedDoorPage();
        hbpRedDoorPage.selectHospitalBasedProvidersOptionNo();
        hbpRedDoorPage.clickNext();

        //Handle Appendix 1 Page
        Appendix1Page appendix1Page = wizard.getAppendix1Page();
        appendix1Page.selectAdditionalManualOptionNo();
        appendix1Page.clickNext();

        //Handle Appendix 2 Page, no action
        page = wizard.getAppendix2Page();
        page.clickNext();

        //Handle Payment Appendix Page, no action
        page = wizard.getPaymentAppendixPage();
        page.clickNext();

        //Handle Appendix 3 Page, no action
        page = wizard.getAppendix3Page();
        page.clickNext();

        //Handle Appendix 4 Page, no action
        page = wizard.getAppendix4Page();
        page.clickNext();

        //Handle Contact Details Page
        ContractDetailsPage contractDetailsPage = wizard.getContractDetailsPage();
        String effectiveDateInput = excelReader.getCellData("SMGA", "EffectiveDate", Row);
        contractDetailsPage.setEffectiveDate(effectiveDateInput);
        contractDetailsPage.clickNext();

        //Handle Interview Summary Page, no action
        page = wizard.getInterviewSummaryPage();
        page.clickNext();

        //Handle Wizard Complete Page
        WizardCompletePage wizardCompletePage = wizard.getWizardCompletePage();
        wizardCompletePage.clickWizardNext();

        //Back to Home Page

        //set Edit Status
        homePage.setEditStatus("Final Pending QA");

        //click Final Capture
        homePage.clickFinalCapture();

        //Handle Interview Summary Page, no action
        page = wizard.getInterviewSummaryPage();
        page.clickNext();

        //Handle Wizard Complete Page
        wizardCompletePage = wizard.getWizardCompletePage();
        wizardCompletePage.clickWizardNext();

        //Back to Home Page

        //set Edit Status
        homePage.setEditStatus("Active");

        homePage.checkActiveStatus();
    }


    @When("^I amend the most recent SMGA contract in Exari$")
    public void amendmentOfSMGAContractInExari() {
        boolean test;

        //Set Smart Template to SMGA
        test = homePage.selectSmartTemplateSMGA();

        //Set Status to Active
        test &= homePage.selectStatusActive();

        //Click on First Row of My Contracts table
        test &= homePage.clickContractsTableFirstRow();

        //Click Create Amendment
        //TODO missing locator in homePage

        //Enter Amendment Title in the Text Box

        //Switch to Contract Page

        //Click on Next

        //Click on Wizard Complete

        //Click on Next

        //Set Edit Status

        //Click Final Capture

        //Click Next

        //Click Wizard Complete

        //Click Next

        //Set Edit Status

//        homePage.click(homePage.CreateAmendment);
//        homePage.waitTillVisible(homePage.CreateAmendment_title);
//
//        homePage.cleanWriteTextBox(homePage.AmendmentTitle_TextBox, "Amendment");
//        homePage.click(homePage.Create);
//
//        //Switch to Contract Page
//        contractPage = homePage.getContractPage();
//        contractPage.waitTillVisible(contractPage.interviewsummary_label);
//        contractPage.pause(2);
//        contractPage.clickOnNextAndWait(contractPage.wizardComplete_label);
//        contractPage.ClickOnWizardCompleteNext(contractPage.siteDashboard_label);
//
//        //set Edit Status
//        homePage.setEditStatus("Final Pending QA", homePage.finalCapture);
//
//        //click Final Capture
//        homePage.clickFinalCapture(contractPage.interviewsummary_label);
//        contractPage.clickOnNextAndWait(contractPage.wizardComplete_label);
//        contractPage.ClickOnWizardCompleteNext(contractPage.siteDashboard_label);
//
//        //set Edit Status
//        homePage.setEditStatus("Active", homePage.status_active);
//
//        Assert.assertTrue(test);
    }


    @When("^I terminate the most recent SMGA contract in Exari$")
    public void terminateSMGAContractInExari() {
//        homePage.ClickOnSitecontract();
//        homePage.setSiteEnvironment2Test();
//
//        homePage.clickonAnySmartTemplate();
//        homePage.selectDropDownByValue(homePage.getDriver().findElement(By.xpath(homePage.xpath)), "SMGA");
//
//
//        homePage.click(homePage.AnyStatus);
//        homePage.selectDropDownByValue(homePage.getDriver().findElement(By.xpath(homePage.AnyStatusXpath)), "Active");
//
//        homePage.waitTillVisible(homePage.tableContractsFirstRow);
//        homePage.click(homePage.tableContractsFirstRow);
//
//        homePage.waitTillVisible(homePage.Terminate);
//        homePage.click(homePage.Terminate);
//
//        /* * Switching to contractPage page* */
//        contractPage = homePage.getContractPage();
//        contractPage.waitTillVisible(contractPage.interviewsummary_label);
//        contractPage.pause(4);
//
//        contractPage.clickOnNextAndWait(contractPage.wizardComplete_label);
//        contractPage.ClickOnWizardCompleteNext(contractPage.siteDashboard_label);
//
//        //set Edit Status
//        homePage.setEditStatus("Final Pending QA", homePage.finalCapture);
//
//        //click Final Capture
//        homePage.clickFinalCapture(contractPage.interviewsummary_label);
//        homePage.pause(2);
//        contractPage.clickOnNextAndWait(contractPage.wizardComplete_label);
//        contractPage.ClickOnWizardCompleteNext(contractPage.siteDashboard_label);
//
//        //set Edit Status
//        homePage.setEditStatus("Active", homePage.status_active);

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
