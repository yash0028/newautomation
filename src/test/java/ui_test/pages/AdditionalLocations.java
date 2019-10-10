package ui_test.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;

public class AdditionalLocations extends GenericInputPage
{

    public AdditionalLocations(WebDriver driver) {
        super(driver);
    }

    public void selectAdditionalLocations(String addLoc){
        assert click("Additional Location", additionalLocationsElement(addLoc));
        assert clickNext();
        assert waitForPageLoad();
    }

    public WebElement additionalLocationsElement(String addLoc){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+addLoc+"')]"});
    }
}
