package ui_test.step;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.ContractPage;
import ui_test.page.exari.contract.wizard.WizardManager;
import ui_test.page.exari.home.DashboardPage;
import ui_test.page.exari.home.site.subpages.GenericSitePage;
import ui_test.page.exari.login.LoginPage;
import ui_test.util.IUiStep;
import util.configuration.IConfigurable;
import util.file.IFileReader;

import java.util.Map;

@Deprecated
public class DepricatedExariSteps implements IUiStep, IFileReader, IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(DepricatedExariSteps.class);

    private DashboardPage dashboardPage;
    private ContractPage contractPage;
    private GenericSitePage sitePage;

    @Given("^I am logged into Exari Dev as a valid user and go to the \"([^\"]*)\" site asdf$")
    public void loginSitePage(String siteOption) {
        loginAndGoToHomePage();
        setSite(siteOption);
    }

    @When("^I author a contract using the following contract information asdf$")
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
                contractParam.getOrDefault("Paper Type", "")
        );

        //Select HBP option
        assert wizard.selectHBPOption(
                contractParam.getOrDefault("HBP", "no")
        );

        //Enter Phycon
        assert wizard.enterPhyconNumber(
                contractParam.getOrDefault("Phycon", "1234")
        );

        //Appendix 1 :: Select Additional Manuals
        assert wizard.enterAppendix1();

        //Appendix 2 ::
        assert wizard.enterAppendix2(
                contractParam.getOrDefault("Product", "none")
        );

        //Additional Locations :: no operation
        assert wizard.skipAdditionalLocations();

        //Payment Appendix ::
        assert wizard.enterPaymentAppendix(
                false,
                "all",
                contractParam.getOrDefault("Fee Schedule", "1234")
        );

        //Additional Locations :: no operation
        assert wizard.skipAdditionalLocations();

        //Regulatory Appendix :: Search for Regulator
        assert wizard.selectRegulatoryAppendix(
                contractParam.getOrDefault("Regulator", "iowa"),
                0
        );

        //Additional Locations :: no operation
        assert wizard.skipAdditionalLocations();

        //Provider Roster :: Select Roster Action
        assert wizard.selectProviderRoster(
                contractParam.getOrDefault("Roster Action", "add one"),
                contractParam.getOrDefault("TIN", null)
        );

        //Preview Contact & Wizard Complete :: no operation
        assert wizard.previewContractAndComplete();

        //Back to contract page
        contractPage = sitePage.getContractPage();
        assert contractPage.confirmCurrentPage();

        //Perform QA analysis and set status as active
        assert markContractActive();
    }

    @Then("^I have an active contract in Exari asdf$")
    public void checkActiveContact() {
        log.info("checking for active status");
        assert contractPage.checkActiveStatus();
    }

    /*
    HELPER METHODS
     */

    private void loginAndGoToHomePage() {
        String url = configGetOptionalString("exari.devURL").orElse("");
        getDriver().get(url);
        log.info(getDriver().getTitle());
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

    private boolean markContractActive() {
        WizardManager wizard = contractPage.getContractWizard();

        //set Edit Status
        contractPage.setEditStatus("Final Pending QA");

        //click Final Capture
        contractPage.clickFinalCapture();

        assert wizard.finalCapture();

        //Back to Contract Page
        assert contractPage.confirmCurrentPage();

        //set Edit Status
        return contractPage.setEditStatus("Active");
    }
}
