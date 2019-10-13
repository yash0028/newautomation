package ui_test.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;

import java.util.HashMap;

public class ProviderRoaster extends GenericInputPage
{
    public ProviderRoaster(WebDriver driver)
    {
        super(driver);

    }


    public WebElement clickRosterAction(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value,'"+Name+"')]"});
    }

    public void roasterAction(HashMap<String,String>hmap)  {
        pause(4);
        assert click("Provider Roster", clickRosterAction(hmap.get("Roster")));
        assert clickNext();
        assert waitForPageLoad();

    }







}
