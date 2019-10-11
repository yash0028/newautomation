package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;

import java.util.HashMap;

public class PaymentAppendix extends GenericInputPage {

    private PageElements elements;
    public PaymentAppendix(WebDriver driver) {
        super(driver);
    }

    public void selectPaymentAppendix(HashMap<String,String> hmap) {
        assert click("paymentAppendix", paymentAppendixElement(hmap.get("Payment Appendix")));
        assert clickNext();
        assert waitForPageLoad();

    }

    public WebElement paymentAppendixElement(String paymentAppendix){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value,'"+paymentAppendix+"')]"});
    }

    public void enterFeeScheduleID(HashMap<String,String> hmap){
        assert sendKeys("FeeSchduleID", this.elements.feeSchduleID, hmap.get("FS All Payer"));
        assert clickNext();
        assert waitForPageLoad();

    }
    public void verifyFeeScheduleID() {
        assert clickNext();
        assert waitForPageLoad();
    }

    private static class PageElements{
        @FindBy(xpath = "//input[@name='0@/files/logic/Payment Appendix Fragment test.lgc#AllPayer_Fee_Schedule_Name']")
        private WebElement feeSchduleID;

    }


}
