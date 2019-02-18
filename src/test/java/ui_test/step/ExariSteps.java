package ui_test.step;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import general_test.util.ISharedValuePoster;
import io.cucumber.datatable.DataTable;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.ContractPage;
import ui_test.page.exari.contract.interview.InterviewManager;
import ui_test.page.exari.contract.interview.flow.FlowContract;
import ui_test.page.exari.contract.interview.flow.IFlowContractLoader;
import ui_test.page.exari.home.DashboardPage;
import ui_test.page.exari.home.site.subpages.GenericSitePage;
import ui_test.page.exari.login.LoginSSOPage;
import ui_test.util.IUiStep;
import util.configuration.IConfigurable;
import util.file.IFileReader;

import java.util.Map;


public class ExariSteps implements IUiStep, IFileReader, IConfigurable, ISharedValuePoster, IFlowContractLoader {
    private static final Logger log = LoggerFactory.getLogger(ExariSteps.class);

    private static final String DEFAULT_FLOW = "eif-basic-contract.json";

    private DashboardPage dashboardPage;
    private ContractPage contractPage;
    private GenericSitePage sitePage;

    private FlowContract flowContract;

    @Given("^I am using the \"([^\"]*)\" flow$")
    public void prepareEIF(String fileName) {
        flowContract = loadFlowContract(fileName);
    }

    @Given("^I am logged into Exari Dev as a valid user and go to the \"([^\"]*)\" site$")
    public void loginSitePage(String siteOption) {
        loginAndGoToHomePage();
        setSite(siteOption);
    }

    @Given("^I author a contract using the \"([^\"]*)\" flow$")
    public void authorContract(String fileName) {
        flowContract = loadFlowContract(fileName);
        authorContract();
        finalCapture();
    }

    @And("^I author a contract using the \"([^\"]*)\" flow without final capture$")
    public void authorContractNoCapture(String fileName) {
        flowContract = loadFlowContract(fileName);
        authorContract();
    }

    @When("^I author a contract using the following contract information$")
    public void authorContract(DataTable contractDataTable) {
        Map<String, String> contractParam = contractDataTable.asMap(String.class, String.class);

        //check if flowContract has be init
        if (flowContract == null) {
            log.info("loading default flow {}", DEFAULT_FLOW);
            flowContract = loadFlowContract(DEFAULT_FLOW);
        }

        flowContract.substituteGherkinData(contractParam);

        authorContract();
        finalCapture();
    }

    @Then("^I have an active contract in Exari$")
    public void checkActiveContact() {
        log.info("checking for active status");
        assert contractPage.checkActiveStatus();
    }

    /*
    HELPER METHODS
     */

    private void authorContract() {
        //Start contract author
        sitePage.startContractAuthor();

        //Start interview phase
        InterviewManager manager = new InterviewManager(getDriver(), flowContract);
        manager.startFlow();
        log.info("flow complete");
        manager.finishContract();

        //Back to contract page
        contractPage = sitePage.getContractPage();
        assert contractPage.confirmCurrentPage();

        //set Edit Status
        contractPage.setEditStatus("Final Pending QA");
    }

    private void finalCapture() {
        InterviewManager manager = new InterviewManager(getDriver(), flowContract);

        //click Final Capture
        contractPage.clickFinalCapture();

        //Start flow for final capture
        manager.startFlow();
        manager.finishContract();

        //Back to Contract Page
        contractPage = sitePage.getContractPage();
        assert contractPage.confirmCurrentPage();

        //set Edit Status
        assert contractPage.setEditStatus("Active");

        putSharedObject("contractNumber", contractPage.getContractNumber());
    }

    private void loginAndGoToHomePage() {
        String url = configGetOptionalString("exari.devURL").orElse("");
        getDriver().get(url);
        log.info(getDriver().getTitle());
        LoginSSOPage loginPage = new LoginSSOPage(getDriver());
        Assert.assertTrue(loginPage.confirmCurrentPage());

        Assert.assertTrue(loginPage.login());

        dashboardPage = loginPage.getHomePage();
    }

    private void setSite(String siteOption) {
        Assert.assertTrue(dashboardPage.confirmCurrentPage());
        dashboardPage.dismissFailure();
        sitePage = dashboardPage.getNavigationPanel().setSiteEnvironment(siteOption);

        assert sitePage.confirmCurrentPage();
        log.info("moved to {} site", siteOption);
    }
}
