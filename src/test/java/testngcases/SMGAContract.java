package testngcases;

import com.relevantcodes.extentreports.LogStatus;
import org.openqa.selenium.Keys;
import org.testng.annotations.Test;
import ui_test.page.pagehelpers.PageObjectBase;

public class SMGAContract extends PageObjectBase {

    public static final int Row = 2;

    @Test
    public void TC_01_AuthorSMGAContract() throws Exception {


        test.log(LogStatus.INFO, "Verify Login Credentials", "***");
        loginPage.setLoginCredentials();

        homePage = loginPage.HomeTab();

        test.log(LogStatus.INFO, "Author SPA Contract in Exari", "***");
        homePage.ClickOnSitecontract();
        homePage.ClickOnEnv("Test", homePage.Clicktostart);
        homePage.ClickOnClickonStart();
        homePage.ClickOnTemplate(homePage.SMGATemplate, "SMGA Template");


        contract = homePage.ContractPage();

        //PES INPUT
        helper.EditBox(contract.MPIN_TextBox, reader.getCellData("SMGA", "MPIN", Row), test, "Enter MPIN");
        contract.MPIN_TextBox.sendKeys(Keys.TAB);
        contract.ClickOnNext(contract.TheCounterparty_Label);

        //get the value

        //PES Response
        helper.SelectradioButton(test, driver, contract.optionButton1, "Option 1");
        contract.ClickOnNext(contract.DocumentSelection_Label);

        //Document Selection
        helper.SelectradioButton(test, driver, contract.SMGA, "SMGA");
        contract.ClickOnNext(contract.dropdown_arrow);

        //Market Number
        helper.DropDown(driver, test, contract.dropdown_arrow, reader.getCellData("SMGA", "MarketNo", Row), "Market Number");
        contract.ClickOnNext();


        //match the value
        contract.ClickOnNext(contract.RFPResponseState_Label);
        contract.ClickOnNext(contract.RFPResponse_Label);
        contract.ClickOnNext(contract.HBPsRedDoor_Label);

        //HBPs Red Door
        contract.select_Yes_NO("No", contract.Appendix1_Label);

        //appendix1
        contract.select_Yes_NO("No", contract.Appendix2_Label);

        //appendix2
        contract.ClickOnNext(contract.PaymentAppendice_Label);

        //Payment Appendix
        contract.ClickOnNext(contract.Appendix3_Label);

        //Appendix3
        contract.ClickOnNext(contract.Appendix4_Label);

        //Appendix4
        contract.ClickOnNext(contract.ContractDetails_Label);

        //Contact Details
        helper.pause(2);
        contract.ContractEffectiveDate_TextBox.sendKeys(reader.getCellData("SMGA", "EffectiveDate", Row));//"January 1, 2038"
        contract.ContractEffectiveDate_TextBox.sendKeys(Keys.TAB);

        contract.ClickOnNext(contract.interviewsummary_label);
        helper.pause(2);
        //interview summary Details
        contract.ClickOnNext(contract.wizardComplete_label);

        //wizard Complete Page
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
