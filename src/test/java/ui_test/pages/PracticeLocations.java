package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;

import java.util.HashMap;


public class PracticeLocations extends GenericInputPage
{


    public PracticeLocations(WebDriver driver)
    {
        super(driver);

    }

    public WebElement selectPracticeLocation(String answer){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value,'"+answer+"')]"});
    }

    public void selectLocation(HashMap<String,String>hmap) {


        click("Practice Location",selectPracticeLocation(hmap.get("PracticeLocation")));


        assert clickNext();
        assert waitForPageLoad();


    }
}
