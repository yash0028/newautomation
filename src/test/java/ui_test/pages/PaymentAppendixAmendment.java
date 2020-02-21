package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;
import java.util.List;

public class PaymentAppendixAmendment extends GenericInputPage {
    private PageElements elements;

    public PaymentAppendixAmendment(WebDriver driver) {
        elements = new PageElements(driver);
    }

    public void selectPaymentAppendixAmendmentSMGA(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));

        setCheckBox("Checked Physician", elements.physician, true);
        setCheckBox("Checked Non Physician", elements.nonPhysician, true);

        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void paymentApppendixforSPGA() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void addPaymentAppendixInAmendment(HashMap<String, String> hmap){
        //Split PaymentAppendix using // in case need to include multiple PaymentAppendix
        if (hmap.containsKey("Payment Appendix to Include")) {

            String[] PaymentAppendix = hmap.get("Payment Appendix to Include").split("//");
            for (String paymentAppendix : PaymentAppendix) {
                Assert.assertTrue(setCheckBox("Add Payment Appendix", paymentAppendixAmendemntElement(paymentAppendix), true));
                Assert.assertTrue(waitForPageLoad(60));
            }

        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
        //TODO handle qn2 Are any fee schedules higher than the market default rate?



    }

    public WebElement paymentAppendixAmendemntElement(String paymentAppendix) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value,'" + paymentAppendix + "')]"});
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//input[contains(@value,'Physicians')]")
        private WebElement physician;
        @FindBy(xpath = "//input[contains(@value,'Non-Physician')]")
        private WebElement nonPhysician;
        private String message = "//div[contains(@class,'DialogBox')]";


        public PageElements(SearchContext context) {
            super(context);
        }
    }

}
