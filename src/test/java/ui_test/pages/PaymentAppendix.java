package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

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
            assert click("High Fee Schedule than Default", paymentAppendixElement(hmap.get("High Fee Schedule than Default")));
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        assert click("paymentAppendix", paymentAppendixElement(hmap.get("Payment Appendix")));
        assert clickNext();
        assert waitForPageLoad();

    }

    //For SPGA contracts
    public void enterFeeScheduleID(HashMap<String, String> hmap) {

        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("All Payer?")))) {
            assert sendKeys("All Payer", getFeeScheduleElement("All Payer?"), hmap.get("FS All Payer"));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("All Payer  ?")))) {
            assert sendKeys("All Payer", getFeeScheduleElement("All Payer  ?"), hmap.get("FS All Payer"));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("All Payer for Physicians")))) {
            assert sendKeys("All Payer for Physicians", getFeeScheduleElement("All Payer for Physicians"), hmap.get("FS All Payer Physician"));
        }
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getFeeSchedule("All Payer for Non-Physicians")))) {
            assert sendKeys("All Payer for Non-Physicians", getFeeScheduleElement("All Payer for Non-Physicians"), hmap.get("FS All Payer Non Physician"));
        }
        assert clickNext();
        assert waitForPageLoad();

    }

    public void verifyFeeScheduleID() {
        assert clickNext();
        assert waitForPageLoad();
    }

    public void appliedPaymentAppendix(HashMap<String, String> hmap) {
        assert click("Apply Payment Appendix in Amendments", paymentAppendixElement(hmap.get("Apply Payment Appendix in Amendments")));
        assert clickNext();
        assert waitForPageLoad();
    }

    public void enterDataInPaymentAppendixForSPGA(HashMap<String, String> hmap) {
        assert sendKeys("Enter Fees Schedule Id for Medicare in Amendments", elements.feeSchduleIDMedicareSPGA, hmap.get("FS Id Amendments"));
        assert clickNext();
        assert waitForPageLoad();
    }

    public void enterDataInPaymentAppendixForPAT(HashMap<String, String> hmap) {
        assert sendKeys("FeeSchedule ID Medicare Physician", this.elements.feeSchduleIDPhysicianMedicare, hmap.get("FS Id Amendments Physician"));
        //assert sendKeys("Enter Fees Schedule Id for Medicare in Amendments", elements.feeSchduleIDMedicarePAT, hmap.get("FS Id Amendments"));
        assert clickNext();
        assert waitForPageLoad();

    }

    public void enterDataInPaymentAppendixForSPA(HashMap<String, String> hmap) {
        assert sendKeys("FeeSchedule ID Medicare Physician", this.elements.feeSchduleIDPhysicianMedicare, hmap.get("FS Id Amendments Physician"));
        assert clickNext();
        assert waitForPageLoad();
    }

    public void paymentAppendixToInclude(HashMap<String, String> hmap) {
        assert click("Payment Appendix to include", elements.paymentAppendixToIncludePhysician);
        assert clickNext();
        assert waitForPageLoad();

    }

    public void enterDataInPaymentAppendixForSMGA(HashMap<String, String> hmap) {
        assert sendKeys("FeeSchedule ID Medicare Physician", this.elements.feeSchduleIDPhysicianMedicare, hmap.get("FS Id Amendments Physician"));
        assert sendKeys("FeeSchedule ID Medicare Non Physician", this.elements.feeSchduleIDNonPhysicianMedicare, hmap.get("FS Id Amendments Non-Physician"));
        assert clickNext();
        assert waitForPageLoad();
    }

    public WebElement paymentAppendixElement(String paymentAppendix) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value,'" + paymentAppendix + "')]"});
    }

    public void replacePaymentAppendixInAmendments(HashMap<String, String> hmap) {
        if (hmap.containsKey("Payment Appendix to Replace")) {
            assert sendKeys("Replace Payment Appendix", elements.searchBar, hmap.get("Payment Appendix to Replace"));
            assert click("Select Payment Appendix to Replace", elements.selectCode.get(0));
            assert clickNext();
            assert waitForPageLoad();

            assert click("paymentAppendix", paymentAppendixElement(hmap.get("Payment Appendix to Include")));
            assert clickNext();
            assert waitForPageLoad();
        }
    }

    public void enterPaymentAppenidix(HashMap<String, String> hmap) {
        elements.feeSchduleID.clear();
        assert sendKeys("FeeSchdeuleID in Amendments", this.elements.feeSchduleID, hmap.get("FS All Payer Amendments"));
        assert clickNext();
        assert waitForPageLoad();
    }

    public void enterPaymentAppendixinAmendmentsFC(HashMap<String, String> hmap) {
        assert clickNext();
        assert waitForPageLoad();
    }

    public void selectPaymentAppendixSMGA(HashMap<String, String> hmap) {
        assert click("Higher than fee schedule Id",paymentAppendixElement(hmap.get("High Fee Schedule than Default")));
        assert clickNext();
        assert waitForPageLoad();
    }

    public WebElement getFeeScheduleElement(String allpayerType) {
        return findElement(getDriver(), new String[]{"xpath", "//label/b[contains(.,'" + allpayerType + "')]/../../../..//input[contains(@name,'AllPayer_Fee_Schedule_Name')]"});
    }

    public String getFeeSchedule(String allpayerType) {
        return "//label/b[contains(.,'" + allpayerType + "')]/../../../..//input[contains(@name,'AllPayer_Fee_Schedule_Name')]";
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

        public PageElements(SearchContext context) {
            super(context);
        }
    }


}
