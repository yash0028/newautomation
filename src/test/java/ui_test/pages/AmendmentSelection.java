package ui_test.pages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class AmendmentSelection extends GenericInputPage {
    private PageElements elements;

    public AmendmentSelection(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void selectAmendmentTobeUsed(HashMap<String, String> hmap)
    {
        assert click("Select Amendments 1",selectAmendments(hmap.get("Amendment Selection")));
        assert clickNext();
        assert waitForPageLoad();
    }

    public void amendmentNeeded(HashMap<String, String> hmap)
    {
        assert click("Select Amendments Needed",selectAmendments(hmap.get("Amendment Needed")));
        assert clickNext();
        assert waitForPageLoad();
    }

    private WebElement selectAmendments(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }


    private static class PageElements extends AbstractPageElements {

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
