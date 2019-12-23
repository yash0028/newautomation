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

public class ProviderSignatory extends GenericInputPage {
    private PageElements elements;

    public ProviderSignatory(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void ProviderSignatory(HashMap<String, String> hmap) {
        String date;
        if (hmap.get("Provider Signatory Date").equals("today")) {
            date = CommonMethods.todaysDate();
        } else {
            date = CommonMethods.formatDate(hmap.get("Provider Signatory Date"));
        }
        Assert.assertTrue(sendKeys("Provider Signatory Date", this.elements.CounterpartySignatoryDate, date));

        if (isVisible(this.elements.email)) {
            elements.email.clear();
            Assert.assertTrue(sendKeys("Provider Signatory Email", this.elements.email, hmap.get("Provider Signatory Email")));
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void ProviderTitle(HashMap<String, String> hmap) {
        String date;
        if (hmap.get("Provider Signatory Date").equals("today")) {
            date = CommonMethods.todaysDate();
        } else {
            date = CommonMethods.formatDate(hmap.get("Provider Signatory Date"));
        }
        Assert.assertTrue(sendKeys("Provider Signatory Date", this.elements.CounterpartySignatoryDate, date));
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.titleName)))
            Assert.assertTrue(sendKeys("Provider Signatory title", this.elements.name, hmap.get("Provider our Signatory title")));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void handleDBA_Agreement()
    {
    	
        if (CommonMethods.isElementPresent(getDriver(),By.xpath("//b[.='Does the counterparty to this agreement have a D/B/A?']")))
        {
        	Assert.assertTrue(click("No", getDriver().findElement(By.xpath("//input[contains(@value, 'No')]"))));
        	Assert.assertTrue(clickNext());
        }
    }
    
    
    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//input[contains(@id,'CounterpartySignatoryDate')]")
        private WebElement CounterpartySignatoryDate;
        @FindBy(xpath = "//input[contains(@name,'CounterpartySignatoryEmail')]")
        private WebElement email;
        @FindBy(xpath = "//input[contains(@name,'Name')]")
        private WebElement name;

        private String titleName = "//input[contains(@name,'Name')]";


        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
