package testngcases;

import com.relevantcodes.extentreports.LogStatus;
import org.openqa.selenium.Keys;
import org.testng.annotations.Test;
import ui_test.page.pagehelpers.PageObjectBase;

@Deprecated
public class SMGAContractPage extends PageObjectBase {

    public static final int Row = 2;

    @Test
    public void TC_01_AuthorSMGAContract() throws Exception {


        test.log(LogStatus.INFO, "Verify Login Credentials", "***");
        loginPage.setLoginCredentials();

        homePage = loginPage.HomeTab();

        test.log(LogStatus.INFO, "Author SPA ContractPage in Exari", "***");
        homePage.ClickOnSitecontract();
        homePage.ClickOnEnv("Test", homePage.Clicktostart);

        homePage.ClickOnClickonStart();
        homePage.ClickOnTemplate(homePage.SMGATemplate, "SMGA Template");


        contractPage = homePage.ContractPage();

        //PES INPUT
        helper.EditBox(contractPage.MPIN_TextBox, reader.getCellData("SMGA", "MPIN", Row), test, "Enter MPIN");
        contractPage.MPIN_TextBox.sendKeys(Keys.TAB);
        contractPage.clickOnNextAndWait(contractPage.TheCounterparty_Label);

        //get the value

        //PES Response
        helper.SelectradioButton(test, driver, contractPage.optionButton1, "Option 1");
        contractPage.clickOnNextAndWait(contractPage.DocumentSelection_Label);

        //Document Selection
        helper.SelectradioButton(test, driver, contractPage.SMGA, "SMGA");
        contractPage.clickOnNextAndWait(contractPage.dropdown_arrow);

        //Market Number
        helper.DropDown(driver, test, contractPage.dropdown_arrow, reader.getCellData("SMGA", "MarketNo", Row), "Market Number");
        contractPage.clickOnNext();


        //match the value
        contractPage.clickOnNextAndWait(contractPage.RFPResponseState_Label);
        contractPage.clickOnNextAndWait(contractPage.RFPResponse_Label);
        contractPage.clickOnNextAndWait(contractPage.HBPsRedDoor_Label);

        //HBPs Red Door
        contractPage.select_Yes_NO("No", contractPage.Appendix1_Label);

        //appendix1
        contractPage.select_Yes_NO("No", contractPage.Appendix2_Label);

        //appendix2
        contractPage.clickOnNextAndWait(contractPage.PaymentAppendice_Label);

        //Payment Appendix
        contractPage.clickOnNextAndWait(contractPage.Appendix3_Label);

        //Appendix3
        contractPage.clickOnNextAndWait(contractPage.Appendix4_Label);

        //Appendix4
        contractPage.clickOnNextAndWait(contractPage.ContractDetails_Label);

        //Contact Details
        helper.pause(2);
        contractPage.ContractEffectiveDate_TextBox.sendKeys(reader.getCellData("SMGA", "EffectiveDate", Row));//"January 1, 2038"
        contractPage.ContractEffectiveDate_TextBox.sendKeys(Keys.TAB);

        contractPage.clickOnNextAndWait(contractPage.interviewsummary_label);
        helper.pause(2);
        //interview summary Details
        contractPage.clickOnNextAndWait(contractPage.wizardComplete_label);

        //wizard Complete Page
        contractPage.ClickOnWizardCompleteNext(contractPage.siteDashboard_label);

        //set Edit Status
        homePage.setEditStatus("Final Pending QA", homePage.finalCapture);

        //click Final Capture
        homePage.clickFinalCapture(contractPage.interviewsummary_label);
        contractPage.clickOnNextAndWait(contractPage.wizardComplete_label);
        contractPage.ClickOnWizardCompleteNext(contractPage.siteDashboard_label);

        //set Edit Status
        homePage.setEditStatus("Active", homePage.status_active);


    }


}
