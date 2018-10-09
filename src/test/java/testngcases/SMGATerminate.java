package testngcases;

import com.relevantcodes.extentreports.LogStatus;
import org.testng.annotations.Test;
import ui_test.page.pagehelpers.PageObjectBase;

public class SMGATerminate extends PageObjectBase {

    @Test
    public void TC_01_TerminateSMGAContractExari() throws Exception {

        test.log(LogStatus.INFO, "Verify Login Credentials", "***");
        loginPage.setLoginCredentials();

        homePage = loginPage.HomeTab();

        test.log(LogStatus.INFO, "Terminate SMGA Contract in Exari", "***");
        homePage.ClickOnSitecontract();
        homePage.ClickOnEnv("Test", homePage.Clicktostart);

        homePage.clickonAnySmartTemplate();
        helper.selectvaluefromDropDown(homePage.xpath, "SMGA");

        helper.Click(driver, test, homePage.AnyStatus, "Any Status");
        helper.selectvaluefromDropDown(homePage.AnyStatusXpath, "Active");
        helper.wait(driver, homePage.FirstRow, 30);

        helper.Click(driver, test, homePage.FirstRow, "Slecting SMGA Active Contract");
        helper.wait(driver, homePage.Terminate, 30);

        helper.Click(driver, test, homePage.Terminate, "Click On Terminate");

        /* * Switching to contract page* */
        contract = homePage.ContractPage();
        helper.wait(driver, contract.interviewsummary_label, 60);
        System.out.println("abc");
        helper.pause(4);

        contract.ClickOnNext(contract.wizardComplete_label);
        contract.ClickOnWizardCompleteNext(contract.siteDashboard_label);

        //set Edit Status
        homePage.setEditStatus("Final Pending QA", homePage.finalCapture);

        //click Final Capture
        homePage.clickFinalCapture(contract.interviewsummary_label);
        helper.pause(2);
        contract.ClickOnNext(contract.wizardComplete_label);
        contract.ClickOnWizardCompleteNext(contract.siteDashboard_label);

        //set Edit Status
        homePage.setEditStatus("Active", homePage.status_active);


    }
}
