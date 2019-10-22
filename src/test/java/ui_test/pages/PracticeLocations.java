package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;


public class PracticeLocations extends GenericInputPage
{

    private PageElements elements;

    public PracticeLocations(WebDriver driver)
    {
        super(driver);
        elements=new PageElements(driver);

    }

    public WebElement selectPracticeLocation(String answer){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value,'"+answer+"')]"});
    }


    //Select Practice Location when Paper Type is SPGA
    public void selectLocation(HashMap<String,String>hmap) {

        assert clickNext();
        assert waitForPageLoad();

    }


    //Select Practice Location when Paper Type is MPA
    public void selectPracticeLocation()
    {
        click(elements.radioBtnSelection);
        assert clickNext();
        assert waitForPageLoad();
    }

    private static class PageElements  extends AbstractPageElements {

        @FindBy(xpath = "//input[@type='radio']")
        private WebElement radioBtnSelection;

        public PageElements(SearchContext context) {
            super(context);
        }
    }


}
