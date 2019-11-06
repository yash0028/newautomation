package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class HBPsRedDoor  extends GenericInputPage
{
    private PageElements elements;
    public HBPsRedDoor(WebDriver driver) {
        super(driver);
        this.elements = new PageElements(driver);

    }
    public void selectRedDoor(HashMap<String,String> hmap)
    {
    switch(hmap.get("HBP"))
    {
        case "No":
        {
            click("HBP Red Door",getHBPResponse(hmap.get("HBP")));
            assert clickNext();
            assert waitForPageLoad();
        }
        case "Yes":
        {
            click("HBP Red Door",getHBPResponse(hmap.get("HBP")));
            waitForElementToDissapear(driver,waitForElementToAppear(driver, By.xpath(elements.message)));
            assert clickNext();
            assert waitForPageLoad();
            handleTermsAndCondition();
        }
    }
    }

    private void handleTermsAndCondition()
    {
        assert clickNext();
        assert waitForPageLoad();

    }


    public WebElement getHBPResponse(String answer){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+answer+"')]"});
    }
    private static class PageElements extends AbstractPageElements {

        private String message= "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }

}
