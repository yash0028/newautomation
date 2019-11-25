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

public class BenefitPlanDescriptionsProvision extends GenericInputPage {
    private PageElements elements;

    public BenefitPlanDescriptionsProvision(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void nameOfState(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(click("Open State Name Dropdown", this.elements.dropdown_open));
        pause(1);
        waitForPageLoad(60);
        Assert.assertTrue(sendKeys("Send Data to State Name", elements.searchBar, hmap.get("Benefit Plan Descriptions Provision")));
        pause(1);
        waitForPageLoad(60);
        Assert.assertTrue(click("Click State Name", elements.selectState.get(0)));
        waitForPageLoad(60);
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//span[@class='select2-selection__arrow']")
        private WebElement dropdown_open;
        @FindBy(xpath = "//input[@type='search']")
        private WebElement searchBar;
        @FindBy(xpath = "//span[@class='select2-results']//li")
        private List<WebElement> selectState;

        private String message = "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
