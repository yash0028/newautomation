package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class Payment extends GenericInputPage {
    private PageElements elements;

    public Payment(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void negotiateRateEscalator(HashMap<String, String> hmap){
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public WebElement selectPaymentPage(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }

    private static class PageElements extends AbstractPageElements {
        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
