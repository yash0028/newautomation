package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;
import java.util.List;

public class Amendements extends GenericInputPage {

    private PageElements elements;
    public Amendements(WebDriver driver)
    {
        this.elements = new PageElements(driver);
    }

    public void authorAmendments(HashMap<String, String> hmap)
    {
        click("Amendments",selectAmendments(hmap.get("Amendments")));
        //waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        assert clickNext();
        assert waitForPageLoad();
    }
    public WebElement selectAmendments(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }
    private static class PageElements extends AbstractPageElements {

        private String message= "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
