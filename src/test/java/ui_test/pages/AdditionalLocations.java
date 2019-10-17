package ui_test.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;

import java.util.HashMap;

public class AdditionalLocations extends GenericInputPage
{

    public AdditionalLocations(WebDriver driver) {
        super(driver);
    }


    public void selectAdditionalLocations(HashMap<String,String> hmap){
        assert click("Additional Location", additionalLocationsElement(hmap.get("Additional Location")));
        assert clickNext();
        assert waitForPageLoad();
    }

    public WebElement additionalLocationsElement(String addLoc){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+addLoc+"')]"});
    }
}
