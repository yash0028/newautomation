package ui_test.pages;

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
        super(driver);
        this.elements = new PageElements(driver);
    }
    public void ProviderSignatory(HashMap<String,String> hmap){
        assert sendKeys("Provider Signatory Date", this.elements.CounterpartySignatoryDate, commonMethod.formatDate(hmap.get("Provider Signatory Date")));
        assert sendKeys("Provider Signatory Email", this.elements.email, hmap.get("Provider Signatory Email"));
        assert clickNext();
        assert waitForPageLoad();
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//input[contains(@id,'CounterpartySignatoryDate')]")
        private WebElement CounterpartySignatoryDate;
        @FindBy(xpath = "//input[contains(@name,'CounterpartySignatoryEmail')]")
        private WebElement email;

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}