package ui_test.page.exari;

import exari_test.eif.flow.ContractFlow;
import exari_test.eif.interview.InterviewFlowContract;
import exari_test.eif.report.Result;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.ContractPage;
import ui_test.page.exari.home.DashboardPage;
import ui_test.page.exari.home.site.subpages.GenericSitePage;
import ui_test.page.exari.login.LoginSSOPage;
import util.TimeKeeper;
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
        long startTime = TimeKeeper.getInstance().getCurrentMillisecond();

        try {
            String url = configGetOptionalString("exari.devURL").orElse("");
            driver.get(url);
            log.info(driver.getTitle());
            LoginSSOPage loginPage = new LoginSSOPage(driver);
            assert loginPage.confirmCurrentPage();

            assert loginPage.login();

            dashboardPage = loginPage.getHomePage();
            assert dashboardPage.confirmCurrentPage();

            if (flow.getReport() != null) {
                flow.getReport().markLogin(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.PASSED));
            }

            return this;
        } catch (Exception e) {
            if (flow.getReport() != null) {
                flow.getReport().markLogin(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.FAILED));
            }

            throw e;
        }
    }

    public ProtoStep setSite(String siteOption) {
        long startTime = TimeKeeper.getInstance().getCurrentMillisecond();

        if (flow.getReport() != null)
            flow.getReport().addNote("siteName", siteOption);

        try {
            Assert.assertTrue(dashboardPage.confirmCurrentPage());
            sitePage = dashboardPage.getNavigationPanel().setSiteEnvironment(siteOption);

            assert sitePage.confirmCurrentPage();
            log.info("moved to {} site", siteOption);

            if (flow.getReport() != null) {
                flow.getReport().markSetSite(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.PASSED));
            }


            return this;
        } catch (Exception e) {
            if (flow.getReport() != null) {
                flow.getReport().markSetSite(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.FAILED));
            }

            throw e;
        }
    }

    public ProtoStep setSite() {
        return this.setSite(this.flow.getSite().orElse("central uhn"));
    }

    public ProtoStep authorContract() {
        long startTime = TimeKeeper.getInstance().getCurrentMillisecond();

        try {
            //Start contract author
            assert sitePage.startContractAuthor();

            //Start interview phase
            InterviewFlowContract manager = new InterviewFlowContract(driver, flow);
            assert manager.startFlow();
            log.info("flow complete");
            assert manager.finishContract();

            //Back to contract page
            contractPage = sitePage.getContractPage();
            assert contractPage.confirmCurrentPage();

            //set Edit Status
            assert contractPage.setEditStatus("Final Pending QA");

            if (flow.getReport() != null) {
                flow.getReport().markAuthor(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.PASSED));
            }


            return this;
        } catch (Exception e) {
            if (flow.getReport() != null) {
                flow.getReport().markActive(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.FAILED));
            }

            throw e;
        }
    }

    public String finalCapture() {
        long startTime = TimeKeeper.getInstance().getCurrentMillisecond();

        try {
            InterviewFlowContract manager = new InterviewFlowContract(driver, flow);

            //click Final Capture
            assert contractPage.clickFinalCapture();

            //Start flow for final capture
            assert manager.startFlow();
            assert manager.finishContract();

            //Back to Contract Page
            contractPage = sitePage.getContractPage();
            assert contractPage.confirmCurrentPage();

            //set Edit Status
            assert contractPage.setEditStatus("Active");

            if (flow.getReport() != null) {
                flow.getReport().addNote("contractId", contractPage.getContractNumber());

                flow.getReport().markCapture(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.PASSED));
            }


            return contractPage.getContractNumber();
        } catch (Exception e) {
            if (flow.getReport() != null) {
                flow.getReport().markCapture(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.FAILED));
            }

            throw e;
        }
    }

    public boolean checkActiveContractStatus() {
        long startTime = TimeKeeper.getInstance().getCurrentMillisecond();

        if (!this.contractPage.checkActiveStatus()) {
            if (flow.getReport() != null) {
                flow.getReport().markActive(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.PASSED));
            }
            return true;
        }

        if (flow.getReport() != null) {
            flow.getReport().markActive(new Result(TimeKeeper.getInstance().getDuration(startTime), Result.Status.FAILED));
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
