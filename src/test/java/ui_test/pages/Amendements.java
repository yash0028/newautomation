package ui_test.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;

import java.util.HashMap;

public class Amendements extends GenericInputPage {

    public Amendements(WebDriver driver)
    {
        super(driver);
    }

    public void authorAmendments(HashMap<String, String> hmap)
    {
        click("Amendments",selectAmendments(hmap.get("Amendments")));
        assert clickNext();
        assert waitForPageLoad();
    }
    public WebElement selectAmendments(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }

}
