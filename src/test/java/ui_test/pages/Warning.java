package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

public class Warning extends GenericInputPage {
    private PageElements elements;

    public Warning(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void acknowledgment() {
        Assert.assertTrue( setCheckBox("Check acknowledgment", this.elements.acknowledge, true));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void warningMakeCorrection() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//input[contains(@value,'acknowledged')]")
        private WebElement acknowledge;

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
