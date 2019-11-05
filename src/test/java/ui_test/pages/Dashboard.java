package ui_test.pages;

import org.openqa.selenium.Keys;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class Dashboard extends GenericInputPage
{
    private PageElements elements;

    public Dashboard(WebDriver driver) {
        super(driver);
        this.elements=new PageElements(driver);
    }


    public void searchContaractByContractNumber(HashMap<String,String> hmap)
    {
        elements.searchBar.sendKeys(hmap.get("Contract Number"));
        elements.searchBar.sendKeys(Keys.ENTER);
        assert  waitForPageLoad();
    }

    public void openContractDetails()
    {
        click("Open Searched Contract",elements.searchResult);
        assert waitForPageLoad();
    }


    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath="//*[@id=\"HEADER_SEARCHBOX_FORM_FIELD\"]")
        private WebElement searchBar;
        @FindBy(xpath="//*[@id=\"EXARI_SEARCH_RESULT_DISPLAY_NAME\"]/span/a")
        private WebElement searchResult;


        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
