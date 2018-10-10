package testngcases;

import com.relevantcodes.extentreports.LogStatus;
import org.testng.annotations.Test;
import ui_test.page.pagehelpers.PageObjectBase;

@Deprecated
public class SPAContractPage extends PageObjectBase {

    @Test
    public void TC_01_AuthorSPAContract() throws Exception {


        test.log(LogStatus.INFO, "Verify Login Credentials", "***");
        loginPage.setLoginCredentials();

        homePage = loginPage.HomeTab();

        test.log(LogStatus.INFO, "Author SPA ContractPage in Exari", "***");
        homePage.ClickOnSitecontract();
        homePage.ClickOnEnv("Test", homePage.Clicktostart);
        homePage.ClickOnClickonStart();
        homePage.ClickOnTemplate(homePage.SPA_PATTemplate, "SPA_PAT Template");

        contractPage = homePage.ContractPage();
        //PES INPUT
        helper.EditBox(contractPage.MPIN_TextBox, reader.getCellData("SPA", "MPIN", 2), test, "Enter MPIN");
        helper.EditBox(contractPage.TIN_TextBox, reader.getCellData("SPA", "TIN", 2), test, "Enter TIN");
        helper.EditBox(contractPage.City_TextBox, reader.getCellData("SPA", "City", 2), test, "Enter City");
        helper.EditBox(contractPage.ZipCode_TextBox, reader.getCellData("SPA", "ZipCode", 2), test, "Enter ZipCode");
        helper.Click(driver, test, contractPage.NEXT, "Next Button");

        //PES Response

    }
	
	 /*@DataProvider(name="providerData")
	    public Object[][] userFormData() throws Exception
	    {
	        Object[][] data = helper.testData(xlFilePath, sheetName);
	        return data;
	    }*/
}