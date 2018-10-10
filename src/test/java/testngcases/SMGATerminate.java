package testngcases;

import com.relevantcodes.extentreports.LogStatus;
import org.testng.annotations.Test;
import ui_test.page.pagehelpers.PageObjectBase;

@Deprecated
public class SMGATerminate extends PageObjectBase {

    @Test
    public void TC_01_TerminateSMGAContractExari() throws Exception {

        test.log(LogStatus.INFO, "Verify Login Credentials", "***");
        loginPage.setLoginCredentials();

        homePage = loginPage.HomeTab();

        test.log(LogStatus.INFO, "Terminate SMGA ContractPage in Exari", "***");
        homePage.ClickOnSitecontract();
        homePage.ClickOnEnv("Test", homePage.Clicktostart);

        homePage.clickonAnySmartTemplate();
        helper.selectvaluefromDropDown(homePage.xpath, "SMGA");

        helper.Click(driver, test, homePage.AnyStatus, "Any Status");
        helper.selectvaluefromDropDown(homePage.AnyStatusXpath, "Active");
        helper.wait(driver, homePage.FirstRow, 30);

        helper.Click(driver, test, homePage.FirstRow, "Slecting SMGA Active ContractPage");
        helper.wait(driver, homePage.Terminate, 30);

        helper.Click(driver, test, homePage.Terminate, "Click On Terminate");

        /* * Switching to contractPage page* */
        contractPage = homePage.ContractPage();
        helper.wait(driver, contractPage.interviewsummary_label, 60);
        System.out.println("abc");
        helper.pause(4);

        contractPage.clickOnNextAndWait(contractPage.wizardComplete_label);
        contractPage.ClickOnWizardCompleteNext(contractPage.siteDashboard_label);

        //set Edit Status
        homePage.setEditStatus("Final Pending QA", homePage.finalCapture);

        //click Final Capture
        homePage.clickFinalCapture(contractPage.interviewsummary_label);
        helper.pause(2);
        contractPage.clickOnNextAndWait(contractPage.wizardComplete_label);
        contractPage.ClickOnWizardCompleteNext(contractPage.siteDashboard_label);

        //set Edit Status
        homePage.setEditStatus("Active", homePage.status_active);


    }
}
