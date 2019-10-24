package ui_test.pages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class MarketExceptionGrid extends GenericInputPage
{

    public MarketExceptionGrid(WebDriver driver)
    {
        super(driver);
    }

    public void previewMarketDetails(){
        pause(3);
        assert clickNext();
        assert waitForPageLoad();
    }
    public void chooseTask(HashMap<String,String> hmap){
        assert click("Select Task", clickTask(hmap.get("Task")));
        assert clickNext();
        assert waitForPageLoad();
    }
    public WebElement clickTask(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value,'"+Name+"')]"});
    }


}