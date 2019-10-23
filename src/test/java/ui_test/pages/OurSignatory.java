package ui_test.pages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class OurSignatory extends GenericInputPage {
    private PageElements elements;
    public OurSignatory(WebDriver driver) {
        super(driver);
        this.elements = new PageElements(driver);
    }
    public void ourSignatoryDate(HashMap<String,String> hmap){
        assert sendKeys("Provider Signatory Date", this.elements.signatoryDate, commonMethod.formatDate(hmap.get("Our Signatory Date")));
        assert clickNext();
        assert waitForPageLoad();
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//input[contains(@id,'OurSignatoryDate')]")
        private WebElement signatoryDate;

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
