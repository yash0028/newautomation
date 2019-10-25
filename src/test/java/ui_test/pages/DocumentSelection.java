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
    public void selectAgreementType(String name)
    {
        assert  click("Agreement Type",selectTypeOfAgreement(name));
        assert clickNext();
        assert waitForPageLoad();
    }
    public void selectDocumentType(HashMap<String,String> hmap)
    {
        assert  click("Paper Type",selectPaperType(hmap.get("Paper Type")));

        switch(hmap.get("Paper Type")) {

            case "SPGA":
            {
                assert clickNext();
                assert waitForPageLoad();
                break;
            }
            case "MGA":
            {
                pause(5);
                selectAgreementType(hmap.get("Agreement Type"));
                break;

            }
            case "SMGA":
            {
                assert clickNext();
                assert waitForPageLoad();
                break;
            }
            case "SPA":
            {
                assert clickNext();
                assert waitForPageLoad();
                break;
            }
        }

    }
    public WebElement selectPaperType(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }

    public WebElement selectTypeOfAgreement(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }
}
