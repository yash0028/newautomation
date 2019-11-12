package ui_test.pages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class AdditionalManuals extends GenericInputPage {
    private PageElements elements;

    public AdditionalManuals(WebDriver driver) {
        super(driver);
        this.elements = new PageElements(driver);
    }

    public void applyToBenefitPlans(HashMap<String, String> hmap)
    {
        assert click("Additional Manuals Benefit Plans",selectAdditionalManuals(hmap.get("Benefit Plan")));
        assert clickNext();
        assert waitForPageLoad();
    }

    public WebElement selectAdditionalManuals(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }


    private static class PageElements extends AbstractPageElements {

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
