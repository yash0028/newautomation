package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IWebInteract;

import java.util.HashMap;

public class MarketExceptionGrid extends GenericInputPage {
    private PageElements elements;

    public MarketExceptionGrid(WebDriver driver) {
        elements = new PageElements(driver);
    }

    public void previewMarketDetails() {
        //waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }
    public void checkForDuplicate(){
        waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.duplicateTIN))) {
            IWebInteract.log.info("Counterparty MPIN-TIN duplicate check failed");
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
    }
    public void chooseTask(HashMap<String, String> hmap, String Task) {
        Assert.assertTrue( click("Select Task", clickTask(hmap.get(Task))));
        //waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public WebElement clickTask(String Name) {
        waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value,'" + Name + "')]"});
    }

    private static class PageElements extends AbstractPageElements {

        private String message = "//div[contains(@class,'DialogBox')]";
        private String duplicateTIN = "//label[contains(.,'duplicate check failed')]/b";

        public PageElements(SearchContext context) {
            super(context);
        }
    }


}