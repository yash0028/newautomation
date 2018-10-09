package testngcases;

import com.relevantcodes.extentreports.LogStatus;
import org.testng.annotations.Test;
import ui_test.page.pagehelpers.PageObjectBase;

public class SMGAAmendment extends PageObjectBase {

    @Test
    public void TC_01_AmendmentOfSMGAContractInExari() throws Exception {

        test.log(LogStatus.INFO, "Verify Login Credentials", "***");
        loginPage.setLoginCredentials();

        homePage = loginPage.HomeTab();

        test.log(LogStatus.INFO, "Amendment of SMGA Contract in Exari", "***");
        homePage.ClickOnSitecontract();
        homePage.ClickOnEnv("Test", homePage.Clicktostart);

        homePage.clickonAnySmartTemplate();
        helper.selectvaluefromDropDown(homePage.xpath, "SMGA");

        helper.Click(driver, test, homePage.AnyStatus, "Any Status");
        helper.selectvaluefromDropDown(homePage.AnyStatusXpath, "Active");
        helper.wait(driver, homePage.FirstRow, 30);

        helper.Click(driver, test, homePage.FirstRow, "Slecting SMGA Active Contract");
        helper.wait(driver, homePage.CreateAmendment, 30);

        helper.Click(driver, test, homePage.CreateAmendment, "Create Amendment");
        helper.wait(driver, homePage.CreateAmendment_title, 30);

        helper.EditBox(homePage.AmendmentTitle_TextBox, "Amendment", test, "Enter Amendment title");
        helper.Click(driver, test, homePage.Create, "Create");

        /* * Switching to contract page* */
        contract = homePage.ContractPage();
        //Adding Amendment in SMGA is having issue which needs to be fixed from Exari end
        helper.wait(driver, contract.interviewsummary_label, 180);
        helper.pause(2);
        contract.ClickOnNext(contract.wizardComplete_label);
        contract.ClickOnWizardCompleteNext(contract.siteDashboard_label);

        //set Edit Status
        homePage.setEditStatus("Final Pending QA", homePage.finalCapture);

        //click Final Capture
        homePage.clickFinalCapture(contract.interviewsummary_label);
        contract.ClickOnNext(contract.wizardComplete_label);
        contract.ClickOnWizardCompleteNext(contract.siteDashboard_label);

        //set Edit Status
        homePage.setEditStatus("Active", homePage.status_active);


    }
}
