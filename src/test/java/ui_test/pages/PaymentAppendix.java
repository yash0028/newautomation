package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;

public class PaymentAppendix extends GenericInputPage {

    private PageElements elements;
    public PaymentAppendix(WebDriver driver) {
        super(driver);
    }

    public void selectPaymentAppendix(String paymentAppendix) {
        assert click("paymentAppendix", paymentAppendixElement(paymentAppendix));
        assert clickNext();
        assert waitForPageLoad();

    }

    public WebElement paymentAppendixElement(String paymentAppendix){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value,'"+paymentAppendix+"')]"});
    }

    public void enterFeeScheduleID(String feeSchduleID){
        assert sendKeys("FeeSchduleID", this.elements.feeSchduleID, feeSchduleID);
        assert clickNext();
        assert waitForPageLoad();

    }
    public void verifyFeeScheduleID() throws InterruptedException {
        assert clickNext();
        assert waitForPageLoad();
    }

    private static class PageElements{
        @FindBy(xpath = "//input[@name='0@/files/logic/Payment Appendix Fragment test.lgc#AllPayer_Fee_Schedule_Name']")
        private WebElement feeSchduleID;

    }


}
