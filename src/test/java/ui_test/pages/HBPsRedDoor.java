package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;

import java.util.HashMap;

public class HBPsRedDoor  extends GenericInputPage
{
    public HBPsRedDoor(WebDriver driver) {
        super(driver);

    }
    public void selectRedDoor(HashMap<String,String> hmap){
        click("HBP Red Door",getHBPResponse(hmap.get("HBP")));
        assert clickNext();
        assert waitForPageLoad();
    }
    public WebElement getHBPResponse(String answer){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+answer+"')]"});
    }
}
