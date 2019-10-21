package ui_test.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;

import java.util.HashMap;

public class Appendix2 extends GenericInputPage {

    public Appendix2(WebDriver driver) {
        super(driver);
    }

    public WebElement getXPath(String answer){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+answer+"')]"});
    }
    public void selectAppendix(HashMap<String,String> hmap)
    {

        if(hmap.containsKey("Include Product"))
            click("Include Product in Appendix 2",getXPath(hmap.get("Include Product")));
        if(hmap.containsKey("Exclude Product"))
            click("Exclude Product in Appendix 2",getXPath(hmap.get("Exclude Product")));


        assert clickNext();
        assert waitForPageLoad();
    }

}
