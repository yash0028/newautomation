package ui_test.pages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class Steerage extends GenericInputPage {
    private PageElements elements;

    public Steerage(WebDriver driver) {
        super(driver);
        this.elements = new PageElements(driver);
    }

    public void addLanguage(HashMap<String, String> hmap)
    {
        assert click("Add Language in Steerage Page",selectSteerage(hmap.get("Add Language")));
        assert clickNext();
        assert waitForPageLoad();

    }

    public WebElement selectSteerage(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }


    private static class PageElements extends AbstractPageElements {

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}