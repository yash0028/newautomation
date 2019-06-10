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

    public ProtoStep(WebDriver driver) {
        this.driver = driver;
    }

    /*
    CLASS METHODS
    */

    public ContractFlow getFlow() {
        return this.flow;
    }

    public void setFlow(ContractFlow flow) {
        this.flow = flow;
    }

    public ProtoStep loginHome() {
        try {
            String url = configGetOptionalString("exari.devURL").orElse("");
            driver.get(url);
            log.info(driver.getTitle());
            LoginSSOPage loginPage = new LoginSSOPage(driver);
            Assert.assertTrue(loginPage.confirmCurrentPage());

            Assert.assertTrue(loginPage.login());

            dashboardPage = loginPage.getHomePage();

            return this;
        } catch (Exception e) {
            if (flow.getReport() != null)
                flow.getReport().markLoginFail();
            throw e;
        }
    }

    public ProtoStep setSite(String siteOption) {
        if (flow.getReport() != null)
            flow.getReport().addNote("siteName", siteOption);

        try {
            Assert.assertTrue(dashboardPage.confirmCurrentPage());
            sitePage = dashboardPage.getNavigationPanel().setSiteEnvironment(siteOption);

            assert sitePage.confirmCurrentPage();
            log.info("moved to {} site", siteOption);

            return this;
        } catch (Exception e) {
            if (flow.getReport() != null)
                flow.getReport().markSetSiteFail();
            throw e;
        }
    }

    public ProtoStep setSite() {
        return this.setSite(this.flow.getSite().orElse("central uhn"));
    }

    public ProtoStep authorContract() {
        try {
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

            return this;
        } catch (Exception e) {
            if (flow.getReport() != null)
                flow.getReport().markAuthorFail();
            throw e;
        }
    }

    public String finalCapture() {
        try {
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

            if (flow.getReport() != null)
                flow.getReport().addNote("contractId", contractPage.getContractNumber());

            return contractPage.getContractNumber();
        } catch (Exception e) {
            if (flow.getReport() != null)
                flow.getReport().markCaptureFail();
            throw e;
        }
    }

    public boolean checkActiveContractStatus() {
        if (!this.contractPage.checkActiveStatus()) {
            if (flow.getReport() != null)
                flow.getReport().markActiveFail();
            return true;
        }
        return false;
    }
    
    /*
    HELPER METHODS
    */


    
    /*
    UTILITY CLASS
    */
}
