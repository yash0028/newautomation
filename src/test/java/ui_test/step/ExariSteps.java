package ui_test.step;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.ContractPage;
import ui_test.page.exari.HomePage;
import ui_test.page.exari.LoginPage;
import ui_test.page.pagehelpers.ExcelReader;
import ui_test.util.IUiStep;
import ui_test.util.IWebInteract;
import util.IFileInteract;
import util.configuration.IConfigurable;

public class ExariSteps implements IUiStep, IFileInteract, IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(IWebInteract.class);

    private LoginPage loginPage;
    private HomePage homePage;
    private ContractPage contractPage;
    private ExcelReader excelReader;

    @Given("^I am on the Exari Login Screen$")
    public void gotoLogin() {
        getRemoteDriver().get(configGetOptionalString("exari.devURL").orElse(""));
        loginPage = new LoginPage(getRemoteDriver());
        Assert.assertTrue(loginPage.confirmCurrentPage());

        loginPage.setLoginCredentials();
        homePage = loginPage.HomeTab();
    }

    @Then("^amend SMGA contract in Exari$")
    public void amendmentOfSMGAContractInExari() {
        homePage.ClickOnSitecontract();
        homePage.ClickOnEnv("Test", homePage.Clicktostart);

        homePage.clickonAnySmartTemplate();
        homePage.selectDropDownByValue(homePage.getDriver().findElement(By.xpath(homePage.xpath)), "SMGA");

        homePage.click(homePage.AnyStatus);
        homePage.selectDropDownByValue(homePage.getDriver().findElement(By.xpath(homePage.AnyStatusXpath)), "Active");
        homePage.waitTillVisible(homePage.FirstRow);

        homePage.click(homePage.FirstRow);
        homePage.waitTillVisible(homePage.CreateAmendment);

        homePage.click(homePage.CreateAmendment);
        homePage.waitTillVisible(homePage.CreateAmendment_title);

        homePage.cleanWriteTextBox(homePage.AmendmentTitle_TextBox, "Amendment");
        homePage.click(homePage.Create);

        //Switch to Contract Page
        contractPage = homePage.ContractPage();
        contractPage.waitTillVisible(contractPage.interviewsummary_label);
        contractPage.pause(2);
        contractPage.clickOnNextAndWait(contractPage.wizardComplete_label);
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

    @Then("^author SMGA contract in Exari$")
    public void authorSMGAContractInExari() {
        excelReader = new ExcelReader(getResourcePath("/support/TestData.xlsx"));
        final int Row = 2;

        homePage.ClickOnSitecontract();
        homePage.ClickOnEnv("Test", homePage.Clicktostart);

        homePage.ClickOnClickonStart();
        homePage.ClickOnTemplate(homePage.SMGATemplate, "SMGA Template");


        contractPage = homePage.ContractPage();

        //PES INPUT
        contractPage.cleanWriteTextBox(contractPage.MPIN_TextBox, excelReader.getCellData("SMGA", "MPIN", Row));
        contractPage.MPIN_TextBox.sendKeys(Keys.TAB);
        contractPage.clickOnNextAndWait(contractPage.TheCounterparty_Label);

        //get the value

        //PES Response
        contractPage.click(contractPage.optionButton1);
        contractPage.clickOnNextAndWait(contractPage.DocumentSelection_Label);

        //Document Selection
        contractPage.click(contractPage.SMGA);
        contractPage.clickOnNextAndWait(contractPage.dropdown_arrow);

        //Market Number
        contractPage.enterDropDown(excelReader.getCellData("SMGA", "MarketNo", Row));
        contractPage.clickOnNext();

        //match the value
        contractPage.clickOnNextAndWait(contractPage.RFPResponseState_Label);
        contractPage.clickOnNextAndWait(contractPage.RFPResponse_Label);
        contractPage.clickOnNextAndWait(contractPage.HBPsRedDoor_Label);

        //HBPs Red Door
        contractPage.selectNo();
        contractPage.waitTillVisible(contractPage.Appendix1_Label);

        //appendix1
        contractPage.selectNo();
        contractPage.waitTillVisible(contractPage.Appendix2_Label);

        //appendix2
        contractPage.clickOnNextAndWait(contractPage.PaymentAppendice_Label);

        //Payment Appendix
        contractPage.clickOnNextAndWait(contractPage.Appendix3_Label);

        //Appendix3
        contractPage.clickOnNextAndWait(contractPage.Appendix4_Label);

        //Appendix4
        contractPage.clickOnNextAndWait(contractPage.ContractDetails_Label);

        //Contact Details
        contractPage.pause(2);
        contractPage.ContractEffectiveDate_TextBox.sendKeys(excelReader.getCellData("SMGA", "EffectiveDate", Row));//"January 1, 2038"
        contractPage.ContractEffectiveDate_TextBox.sendKeys(Keys.TAB);

        contractPage.clickOnNextAndWait(contractPage.interviewsummary_label);
        contractPage.pause(2);
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

    @Then("^terminate SMGA contract in Exari$")
    public void terminateSMGAContractInExari() {
        homePage.ClickOnSitecontract();
        homePage.ClickOnEnv("Test", homePage.Clicktostart);

        homePage.clickonAnySmartTemplate();
        homePage.selectDropDownByValue(homePage.getDriver().findElement(By.xpath(homePage.xpath)), "SMGA");


        homePage.click(homePage.AnyStatus);
        homePage.selectDropDownByValue(homePage.getDriver().findElement(By.xpath(homePage.AnyStatusXpath)), "Active");

        homePage.waitTillVisible(homePage.FirstRow);
        homePage.click(homePage.FirstRow);

        homePage.waitTillVisible(homePage.Terminate);
        homePage.click(homePage.Terminate);

        /* * Switching to contractPage page* */
        contractPage = homePage.ContractPage();
        contractPage.waitTillVisible(contractPage.interviewsummary_label);
        contractPage.pause(4);

        contractPage.clickOnNextAndWait(contractPage.wizardComplete_label);
        contractPage.ClickOnWizardCompleteNext(contractPage.siteDashboard_label);

        //set Edit Status
        homePage.setEditStatus("Final Pending QA", homePage.finalCapture);

        //click Final Capture
        homePage.clickFinalCapture(contractPage.interviewsummary_label);
        homePage.pause(2);
        contractPage.clickOnNextAndWait(contractPage.wizardComplete_label);
        contractPage.ClickOnWizardCompleteNext(contractPage.siteDashboard_label);

        //set Edit Status
        homePage.setEditStatus("Active", homePage.status_active);

    }

    @Then("^author SPA Contract in Exari$")
    public void authorSPAContractInExari() {
        excelReader = new ExcelReader(getResourcePath("/support/TestData.xlsx"));

        homePage.ClickOnSitecontract();
        homePage.ClickOnEnv("Test", homePage.Clicktostart);
        homePage.ClickOnClickonStart();
        homePage.ClickOnTemplate(homePage.SPA_PATTemplate, "SPA_PAT Template");

        contractPage = homePage.ContractPage();
        //PES INPUT
        contractPage.cleanWriteTextBox(contractPage.MPIN_TextBox, excelReader.getCellData("SPA", "MPIN", 2));
        contractPage.cleanWriteTextBox(contractPage.MPIN_TextBox, excelReader.getCellData("SPA", "MPIN", 2));
        contractPage.cleanWriteTextBox(contractPage.TIN_TextBox, excelReader.getCellData("SPA", "TIN", 2));
        contractPage.cleanWriteTextBox(contractPage.City_TextBox, excelReader.getCellData("SPA", "City", 2));
        contractPage.cleanWriteTextBox(contractPage.ZipCode_TextBox, excelReader.getCellData("SPA", "ZipCode", 2));
        contractPage.click(contractPage.NEXT);

        //PES Response

    }
}
