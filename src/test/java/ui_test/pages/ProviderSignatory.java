package ui_test.pages;

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
        assert sendKeys("Provider Signatory Date", this.elements.CounterpartySignatoryDate, date);

        if(isVisible(this.elements.email)){
            elements.email.clear();
            assert sendKeys("Provider Signatory Email", this.elements.email, hmap.get("Provider Signatory Email"));
        }
        assert clickNext();
        assert waitForPageLoad();

    }

    public void ProviderTitle(HashMap<String, String> hmap) {
        String date;
        if (hmap.get("Provider Signatory Date").equals("today")) {
            date = CommonMethods.todaysDate();
        } else {
            date = CommonMethods.formatDate(hmap.get("Provider Signatory Date"));
        }
        assert sendKeys("Provider Signatory Date", this.elements.CounterpartySignatoryDate, date);
        if(CommonMethods.isElementPresent(getDriver(), By.xpath(elements.xpathCheck))) {
            System.out.println("--------------------ELement is Present---------------------");
            assert sendKeys("Provider Signatory title", this.elements.name, hmap.get("Provider our Signatory title"));
        }
            assert clickNext();
        assert waitForPageLoad();
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//input[contains(@id,'CounterpartySignatoryDate')]")
        private WebElement CounterpartySignatoryDate;
        @FindBy(xpath = "//input[contains(@name,'CounterpartySignatoryEmail')]")
        private WebElement email;
        @FindBy(xpath = "//input[contains(@name,'Name')]")
        private WebElement name;
        private String xpathCheck="//input[contains(@name,'Name')]";


        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
