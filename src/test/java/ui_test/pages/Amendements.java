package ui_test.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.pages.commonMethod;

import java.util.HashMap;

public class Amendements extends GenericInputPage {

    public Amendements(WebDriver driver)
    {
        super(driver);
    }

    public WebElement selectAmendments(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }

    void authorAmendments(HashMap<String, String> hmap)
    {
        click("Amendments",selectAmendments(hmap.get("amendments")));
        assert clickNext();
        assert waitForPageLoad();
    }

}
