package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;

import java.util.HashMap;

public class AdditionalLocations extends GenericInputPage
{

    public AdditionalLocations(WebDriver driver) {
        super(driver);
    }

    private void selectAddressFromNDB()
    {
        WebElement webElement=driver.findElement(By.xpath("//input[@type='checkbox']"));
        assert  click("Select Address from NDB",webElement);


    }

    public void selectAdditionalLocations(HashMap<String,String> hmap){
        assert click("Additional Location", additionalLocationsElement(hmap.get("Additional Location")));

        switch(hmap.get("Additional Location"))
        {
            case "Yes":
            {
                assert clickNext();
                assert waitForPageLoad();
                break;
            }
            case "No":
            {
                pause(5);
                selectAddressFromNDB();
                assert clickNext();
                assert waitForPageLoad();
                break;
            }
            case "None":
            {
                assert clickNext();
                assert waitForPageLoad();
                break;
            }
        }

    }



    public WebElement additionalLocationsElement(String addLoc){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+addLoc+"')]"});
    }
}
