package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;
import org.openqa.selenium.JavascriptExecutor;

import java.util.HashMap;
import java.util.List;


public class PaymentAppendix extends GenericInputPage {

    private PageElements elements;

    public PaymentAppendix(WebDriver driver) {
        elements = new PageElements(driver);
    }

    public void selectPaymentAppendix(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        if (hmap.containsKey("High Fee Schedule than Default"))
            Assert.assertTrue(click("High Fee Schedule than Default", paymentAppendixElement(hmap.get("High Fee Schedule than Default"))));
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(click("paymentAppendix", paymentAppendixElement(hmap.get("Payment Appendix"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    //For SPGA contracts
    public void enterFeeScheduleID(HashMap<String, String> hmap) {

        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("All Payer?")))) {
            Assert.assertTrue(sendKeys("All Payer", getFeeScheduleElement("All Payer?"), hmap.get("FS All Payer")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("All Payer  ?")))) {
            Assert.assertTrue(sendKeys("All Payer", getFeeScheduleElement("All Payer  ?"), hmap.get("FS All Payer")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("All Payer for Physicians")))) {
            Assert.assertTrue(sendKeys("All Payer for Physicians", getFeeScheduleElement("All Payer for Physicians"), hmap.get("FS All Payer Physician")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("All Payer for Non-Physicians")))) {
            Assert.assertTrue(sendKeys("All Payer for Non-Physicians", getFeeScheduleElement("All Payer for Non-Physicians"), hmap.get("FS All Payer Non Physician")));
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

    }

    public void verifyFeeScheduleID() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void appliedPaymentAppendix(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Apply Payment Appendix in Amendments", paymentAppendixElement(hmap.get("Apply Payment Appendix in Amendments"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void enterDataInPaymentAppendixForSPGA(HashMap<String, String> hmap) {
        Assert.assertTrue(sendKeys("Enter Fees Schedule Id for Medicare in Amendments", elements.feeSchduleIDMedicareSPGA, hmap.get("FS Id Amendments")));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void enterDataInPaymentAppendixForPAT(HashMap<String, String> hmap) {
        Assert.assertTrue(sendKeys("FeeSchedule ID Medicare Physician", this.elements.feeSchduleIDPhysicianMedicare, hmap.get("FS Id Amendments Physician")));
        //Assert.assertTrue( sendKeys("Enter Fees Schedule Id for Medicare in Amendments", elements.feeSchduleIDMedicarePAT, hmap.get("FS Id Amendments")));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

    }

    public void enterDataInPaymentAppendixForSPA(HashMap<String, String> hmap) {
        Assert.assertTrue(sendKeys("FeeSchedule ID Medicare Physician", this.elements.feeSchduleIDPhysicianMedicare, hmap.get("FS Id Amendments Physician")));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void paymentAppendixToInclude(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Payment Appendix to include", elements.paymentAppendixToIncludePhysician));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

    }

    public void paymentAppendixToIncludeMGA(HashMap<String, String> hmap) {
        if (hmap.containsKey("Payment Appendix to Include")) {
            String[] appendixes = hmap.get("Payment Appendix to Include").split("//");
            for (String appendix : appendixes) {
                Assert.assertTrue(click("Payment Appendix to Include", paymentAppendixElement(appendix)));
                pause(1);
            }
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

    }

    public void enterDataInPaymentAppendixForSMGA(HashMap<String, String> hmap) {
        Assert.assertTrue(sendKeys("FeeSchedule ID Medicare Physician", this.elements.feeSchduleIDPhysicianMedicare, hmap.get("FS Id Amendments Physician")));
        Assert.assertTrue(sendKeys("FeeSchedule ID Medicare Non Physician", this.elements.feeSchduleIDNonPhysicianMedicare, hmap.get("FS Id Amendments Non-Physician")));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public WebElement paymentAppendixElement(String paymentAppendix) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value,'" + paymentAppendix + "')]"});
    }

    public void replacePaymentAppendixInAmendments(HashMap<String, String> hmap) {
        if (hmap.containsKey("Payment Appendix to Replace")) {
            Assert.assertTrue(sendKeys("Replace Payment Appendix", elements.searchBar, hmap.get("Payment Appendix to Replace")));
            Assert.assertTrue(click("Select Payment Appendix to Replace", elements.selectCode.get(0)));
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());

            Assert.assertTrue(click("paymentAppendix", paymentAppendixElement(hmap.get("Payment Appendix to Include"))));
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
    }

    public void medicareAdvantagePaymentAppendixMGA(HashMap<String, String> hmap) {
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Advantage for Physicians")))) {
            Assert.assertTrue(sendKeys("Advantage for Physicians", getFeeScheduleElement("Advantage for Physicians"), hmap.get("FS Id Amendments Physician")));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("Advantage for Non-Physicians")))) {
            Assert.assertTrue(sendKeys("Advantage for Non-Physicians", getFeeScheduleElement("Advantage for Non-Physicians"), hmap.get("FS Id Amendments Non-Physician")));
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void verifyMedicareAdvantage() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void enterPaymentAppenidix(HashMap<String, String> hmap) {
        elements.feeSchduleID.clear();
        Assert.assertTrue(sendKeys("FeeSchdeuleID in Amendments", this.elements.feeSchduleID, hmap.get("FS All Payer Amendments")));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void enterPaymentAppendixinAmendmentsFC(HashMap<String, String> hmap) {
        if (hmap.containsKey("Payment Appendix in Amendments FC")) {
            String[] appendixes = hmap.get("Payment Appendix in Amendments FC").split("//");
            for (String appendix : appendixes) {
                Assert.assertTrue(setCheckBox("Payment Appendix to Include", paymentAppendixElement(appendix),true));
                pause(1);
            }
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void selectPaymentAppendixSMGA(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Higher than fee schedule Id", paymentAppendixElement(hmap.get("High Fee Schedule than Default"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public WebElement getFeeScheduleElement(String allpayerType) {
        return findElement(getDriver(), new String[]{"xpath", "//label/b[contains(.,'" + allpayerType + "')]/../../../..//input[contains(@name,'Fee_Schedule_Name')]"});
    }

    public String getFeeSchedule(String allpayerType) {
        return "//label/b[contains(.,'" + allpayerType + "')]/../../../..//input[contains(@name,'Fee_Schedule_Name')]";
    }


    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//input[@name='0@/files/logic/Payment Appendix Fragment test.lgc#AllPayer_Fee_Schedule_Name']")
        private WebElement feeSchduleID;
        @FindBy(xpath = "//input[@name='0@/files/logic/Payment Appendix Fragment test.lgc#MedicareAdvantage_Fee_Schedule_Name']")
        private WebElement feeSchduleIDMedicareSPGA;
        @FindBy(xpath = "//input[contains(@value,'Advantage for Physician')]")
        private WebElement paymentAppendixToIncludePhysician;
        @FindBy(xpath = "//input[contains(@value,'Advantage for Non-Physician')]")
        private WebElement paymentAppendixToIncludeNonPhysician;
        @FindBy(xpath = "//input[contains(@name,'Fee_Schedule_Name')]")
        private WebElement feeSchduleIDPhysicianMedicare;
        @FindBy(xpath = "//input[contains(@name,'Fee_Schedule_Name_NPPA')]")
        private WebElement feeSchduleIDNonPhysicianMedicare;
        @FindBy(xpath = "//input[@type='search']")
        private WebElement searchBar;
        @FindBy(xpath = "//span[@class='select2-results']//li")
        private List<WebElement> selectCode;
        private String message = "//div[contains(@class,'DialogBox')]";


        // @FindBy(xpath = "//div[contains(text(),'You must select at least one answer']")
        // private WebElement errormessage;
        // @FindBy(xpath = "//a[@title='go back one interview round']")
        //private WebElement backbutton;

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}


