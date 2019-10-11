package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;


import java.util.HashMap;

public class DocumentSelection extends GenericInputPage
{

    public DocumentSelection(WebDriver driver)
    {
        super(driver);

    }

    public WebElement selectPaperType(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }

    public void selectDocumentType(HashMap<String,String> hmap) {

        click("Paper Type",selectPaperType(hmap.get("Paper Type")));
        pause(3);
        assert clickNext();
        assert waitForPageLoad();



    }
}
