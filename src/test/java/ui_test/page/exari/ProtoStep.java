package ui_test.page.exari;

import exari_test.eif.flow.ContractFlow;
import exari_test.eif.interview.InterviewFlowContract;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.ContractPage;
import ui_test.page.exari.home.DashboardPage;
import ui_test.page.exari.home.site.subpages.GenericSitePage;
import ui_test.page.exari.login.LoginSSOPage;
import util.configuration.IConfigurable;

public class ProtoStep implements IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(ProtoStep.class);
    public DashboardPage dashboardPage;
    public ContractPage contractPage;
    public GenericSitePage sitePage;
    private WebDriver driver;
    private ContractFlow flow;



    /*
    CONSTRUCTOR
    */

    public ProtoStep(WebDriver driver, ContractFlow flow) {
        this.driver = driver;
        this.flow = flow;
    }

    /*
    CLASS METHODS
    */

    public void loginHome() {
        String url = configGetOptionalString("exari.devURL").orElse("");
        log.info(driver.getTitle());
        LoginSSOPage loginPage = new LoginSSOPage(driver);
        Assert.assertTrue(loginPage.confirmCurrentPage());

        Assert.assertTrue(loginPage.login());

        dashboardPage = loginPage.getHomePage();
    }

    public void setSite(String siteOption) {
        Assert.assertTrue(dashboardPage.confirmCurrentPage());
//        dashboardPage.dismissFailure();
        sitePage = dashboardPage.getNavigationPanel().setSiteEnvironment(siteOption);

        assert sitePage.confirmCurrentPage();
        log.info("moved to {} site", siteOption);
    }

    public void authorContract() {
        //Start contract author
        sitePage.startContractAuthor();

        //Start interview phase
        InterviewFlowContract manager = new InterviewFlowContract(driver, flow);
        manager.startFlow();
        log.info("flow complete");
        manager.finishContract();

        //Back to contract page
        contractPage = sitePage.getContractPage();
        assert contractPage.confirmCurrentPage();

        //set Edit Status
        contractPage.setEditStatus("Final Pending QA");
    }

    public String finalCapture() {
        InterviewFlowContract manager = new InterviewFlowContract(driver, flow);

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

        return contractPage.getContractNumber();
    }

    public boolean checkActiveContractStatus() {
        return this.contractPage.checkActiveStatus();
    }
    
    /*
    HELPER METHODS
    */


    
    /*
    UTILITY CLASS
    */
}
