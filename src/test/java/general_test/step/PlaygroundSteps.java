package general_test.step;

import cucumber.api.java.en.Then;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.contractsquery.IContractsQueryInteract;
import ui_test.page.cmd.login.LoginSSOPage;
import ui_test.page.cmd.sum.SumDashboardPage;
import ui_test.page.cmd.transaction.action.ContractMasterOverrideTab;
import ui_test.util.IUiStep;
import util.map.IMapSub;

public class PlaygroundSteps implements IMapSub, IContractsQueryInteract, IUiStep {
    private static final Logger log = LoggerFactory.getLogger(PlaygroundSteps.class);


    @Then("^I do something$")
    public void playground() throws Throwable {
        String url = "https://contract-management-test.optum.com";

        LoginSSOPage login = new LoginSSOPage(getDriver());

        getDriver().get(url);

        login.login();

        SumDashboardPage dashboardPage = new SumDashboardPage(getDriver());
        dashboardPage.pause(5);

        log.info("Completed: {}", dashboardPage.getCompletedCount());

        log.info("In-Progress: {}", dashboardPage.getInProgressCount());

        log.info("Action Required: {}", dashboardPage.getActionRequiredCount());

        log.info("Errors: {}", dashboardPage.getErrorsCount());

        ContractMasterOverrideTab tab = dashboardPage.openActionRequiredTransactions();
        tab.pause(5);
        tab.confirmCurrentPage();

//        log.info("{}", tab.getRow(0).getMarket());
//        tab.getRow(0).expandDetails();
//        tab.getRow(0).getRow(0).expandDetails();
//        log.info("{}",tab.getRow(0).getRow(0).getFeeSchedule());

    }
}
