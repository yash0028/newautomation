package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class MarketExceptionGrid extends GenericInputPage
{
    private PageElements elements;
    public MarketExceptionGrid(WebDriver driver)
    {
        super(driver);
        elements=new PageElements(driver);
    }

    public void previewMarketDetails(){
        waitForElementToDissapear(driver,waitForElementToAppear(driver, By.xpath(elements.message)));
        assert clickNext();
        assert waitForPageLoad();
    }
    public void chooseTask(HashMap<String,String> hmap,String Task){
        assert click("Select Task", clickTask(hmap.get(Task)));
        waitForElementToDissapear(driver,waitForElementToAppear(driver, By.xpath(elements.message)));
        assert clickNext();
        assert waitForPageLoad();
    }
    public WebElement clickTask(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value,'"+Name+"')]"});
    }
    private static class PageElements  extends AbstractPageElements {

        private String message= "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }


}