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


    //Select Practice Location when Paper Type is SPGA
    public void selectLocation(HashMap<String,String>hmap) {

        assert clickNext();
        assert waitForPageLoad();

    }


    //Select Practice Location when Paper Type is MPA
    public void selectPracticeLocation()
    {
        pause(3);
        WebElement webElement=driver.findElement(By.xpath("//input[@type='radio']"));
        assert  click("Select Practice Location",webElement);
        pause(3);
        assert clickNext();
        assert waitForPageLoad();
    }




}
