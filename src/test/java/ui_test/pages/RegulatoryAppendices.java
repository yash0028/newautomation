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

public class RegulatoryAppendices extends GenericInputPage {

    private PageElements elements;

    public RegulatoryAppendices(WebDriver driver) {
        this.elements = new PageElements(driver);

    }

    public void selectRegulatoryAppendix(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        pause(3);
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.topic))) {
            if (!CommonMethods.isElementPresent(getDriver(), By.xpath(defaultValue(hmap.get("Regulatory Appendix"))))) {
                Assert.assertTrue(sendKeys("Send Data to regulatory Appendix", elements.clickOnBar, hmap.get("Regulatory Appendix")));
                pause(1);
                waitForPageLoad(60);
                Assert.assertTrue(click("Click Regulatory Appendix", elements.dropdown_selection.get(0)));
                waitForPageLoad(60);
            }
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
    }

    public WebElement regulatory(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }

    public String defaultValue(String Name) {
        return "//li[contains(.,'" + Name + "')]";
    }


    private static class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//input[@type='search']")
        private WebElement clickOnBar;
        @FindBy(xpath = "//span[@class='select2-results']//li")
        public List<WebElement> dropdown_selection;
        @FindBy(xpath = "//span[@class='select2-selection__arrow']")
        private WebElement dropdown_open;

        private String topic = "//div[contains(@class,'topicArea')]/p[contains(.,'Regulatory Appendices')]";
        private String message = "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
