package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class PaymentAppendix {
    private WebDriver driver;

    public PaymentAppendix(WebDriver driver) {
        this.driver = driver;
    }

    public void selectPaymentAppendix() throws InterruptedException {
        String paymentAppendix = "All Payer";

        WebElement paymentAppendixOption = driver.findElement(By.xpath("//input[contains(@value,'"+paymentAppendix+"')]"));

        Thread.sleep(2000);
        paymentAppendixOption.click();

        commonMethod.next();
    }

    public void enterFeeScheduleID(String ans) throws InterruptedException {
        WebElement feeSchduleID=driver.findElement(By.xpath("//input[@name='0@/files/logic/Payment Appendix Fragment test.lgc#AllPayer_Fee_Schedule_Name']"));
        Thread.sleep(2000);
        feeSchduleID.sendKeys(ans);
        Thread.sleep(2000);
        commonMethod.next();

    }
    public void verifyFeeScheduleID() throws InterruptedException {
        Thread.sleep(1000);
        commonMethod.next();
        Thread.sleep(2000);
    }


}
