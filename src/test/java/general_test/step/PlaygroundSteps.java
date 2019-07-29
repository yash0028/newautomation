package general_test.step;

import cucumber.api.java.en.Then;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.contractsquery.IContractsQueryInteract;
import ui_test.page.cmd.login.LoginSSOPage;
import ui_test.page.cmd.sum.SumDashboardPage;
import ui_test.page.cmd.transaction.action.ContractMasterOverrideTab;
import ui_test.page.cmd.transaction.action.DownstreamErrorTab;
import ui_test.page.cmd.transaction.action.modal.ContractMasterOverrideModal;
import ui_test.page.cmd.transaction.action.modal.DownstreamErrorModal;
import ui_test.page.cmd.transaction.action.row.CMOActionRow;
import ui_test.page.cmd.transaction.action.row.DERActionRow;
import ui_test.page.cmd.transaction.action.row.ProductRow;
import ui_test.page.cmd.transaction.action.row.ProviderRow;
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

        ContractMasterOverrideTab overrideTab = dashboardPage.openActionRequiredTransactions();
        overrideTab.pause(5);
        overrideTab.confirmCurrentPage();

        CMOActionRow aRow = overrideTab.getRow(0);
        aRow.confirmCurrentPage();

        aRow.expandDetails();
        log.info("request type {}", aRow.getRequestType());

        ProductRow ptRow = aRow.getRow(0);
        ptRow.confirmCurrentPage();

        log.info("fee {}", ptRow.getFeeSchedule());

        ContractMasterOverrideModal overrideModal = ptRow.openEditModal();
        overrideModal.pause(10);
        overrideModal.confirmCurrentPage();
        overrideModal.enterContractMasterNumber("1234");
        overrideModal.selectLoadOptionCosmos();
        overrideModal.clickCancel();

        log.info("SWITCHING TO DOWNSTREAM ERROR");

        DownstreamErrorTab errorTab = overrideTab.openTabDownstreamErrorResolution();
        errorTab.pause(5);
        errorTab.confirmCurrentPage();

        DERActionRow dRow = errorTab.getRow(0);
        dRow.confirmCurrentPage();

        dRow.expandDetails();
        log.info("request type {}", dRow.getRequestType());

        ProviderRow pdRow = dRow.getRow(0);
        pdRow.confirmCurrentPage();

        log.info("mpin {}", pdRow.getMPIN());

        DownstreamErrorModal errorModal = pdRow.openResolveModal();
        errorModal.pause(10);
        errorModal.confirmCurrentPage();
        errorModal.enterResolutionText("hello world");
        errorModal.selectResolutionManual();
        errorModal.clickCancel();


    }
}
