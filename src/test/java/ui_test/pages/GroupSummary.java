package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

public class GroupSummary extends GenericInputPage {
    private PageElements elements;
    public GroupSummary(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void readInterviewSummary() {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue("[NOT FOUND] Group Summary Page",CommonMethods.isElementPresent(getDriver(),By.xpath(elements.grpSummary)));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }
    private static class PageElements extends AbstractPageElements {

        private String message = "//div[contains(@class,'DialogBox')]";
        private String grpSummary = "//p[contains(@class,'interview-summary__title')]/a[contains(.,'Group Summary')]";
        public PageElements(SearchContext context) {
            super(context);
        }

        @FindBy (xpath="xxx")
        private WebElement xxx;
    }

}
