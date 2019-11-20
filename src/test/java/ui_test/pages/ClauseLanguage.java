package ui_test.pages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class ClauseLanguage extends GenericInputPage {
    private PageElements elements;

    public ClauseLanguage(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void clauseLanguage(HashMap<String, String> hmap){
        assert click("Clause Language", getClauseLanguage(hmap.get("Clause Language")));
        assert clickNext();
        assert waitForPageLoad();
    }
    private WebElement getClauseLanguage(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value,'"+Name+"')]"});
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "xxx")
        private WebElement xxx;

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
