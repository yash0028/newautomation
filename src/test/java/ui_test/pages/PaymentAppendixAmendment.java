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
//        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));

//        Assert.assertTrue( click("Checked Physician",elements.physician));
//        Assert.assertTrue( click("Checked Non Physician",elements.nonPhysician));

        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
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
