package ui_test.step;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.ContractPage;
import ui_test.page.exari.contract.interview.InterviewManager;
import ui_test.page.exari.contract.interview.InterviewPage;
import ui_test.page.exari.contract.interview.flow.FlowContract;
import ui_test.page.exari.contract.wizard.WizardManager;
import ui_test.page.exari.home.DashboardPage;
import ui_test.page.exari.home.site.subpages.GenericSitePage;
import ui_test.page.exari.login.LoginPage;
import ui_test.util.IUiStep;
import util.configuration.IConfigurable;
import util.file.IFileReader;

import java.util.Map;


public class TempSteps implements IUiStep, IFileReader, IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(TempSteps.class);

    private DashboardPage dashboardPage;
    private ContractPage contractPage;
    private GenericSitePage sitePage;
    private InterviewPage iPage;

    private FlowContract flowContract;

    @Before("@temp")
    public void loadFlow() {
        //Open flow data
        JsonElement flowData = getJsonElementFromFile("/support/exari/eif-basic-contract.json");
        Gson gson = new GsonBuilder()
                .registerTypeAdapter(FlowContract.class, new FlowContract.Deserializer())
                .create();

        //Convert json flow data into a flow map
        flowContract = gson.fromJson(flowData, FlowContract.class);
    }

    @Given("^I am logged into Exari Dev as a valid user and go to the \"([^\"]*)\" site asdf$")
    public void loginSitePage(String siteOption) {
        loginAndGoToHomePage();
        setSite(siteOption);
    }

    @When("^I author a contract using the following contract information asdf$")
    public void authorContract(DataTable contractDataTable) {
        Map<String, String> contractParam = contractDataTable.asMap(String.class, String.class);
        sitePage.startContractAuthor();
        flowContract.substituteGherkinData(contractParam);

        InterviewManager manager = new InterviewManager(getDriver(), flowContract);
        manager.startFlow();
        log.info("flow complete");
        manager.finishContract();

        //Back to contract page
        contractPage = sitePage.getContractPage();
        assert contractPage.confirmCurrentPage();

        //set Edit Status
        contractPage.setEditStatus("Final Pending QA");

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

        dashboardPage = loginPage.getHomePage();
    }

    private void setSite(String siteOption) {
        Assert.assertTrue(dashboardPage.confirmCurrentPage());
        dashboardPage.dismissFailure();
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

        log.info("final capture finished");

        assert wizard.finalCapture();

        //Back to Contract Page
        assert contractPage.confirmCurrentPage();

        //set Edit Status
        return contractPage.setEditStatus("Active");
    }
}
