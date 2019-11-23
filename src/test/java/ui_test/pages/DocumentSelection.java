package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;


import java.util.HashMap;

public class DocumentSelection extends GenericInputPage {
    private PageElements elements;

    public DocumentSelection(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void selectAgreementType(String name) {
         click("Agreement Type", selectTypeOfAgreement(name));
         clickNext();
         waitForPageLoad();
    }

    public void selectDocumentType(HashMap<String, String> hmap) {
         click("Paper Type", selectPaperType(hmap.get("Paper Type")));
        //waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        switch (hmap.get("Paper Type")) {

            case "SPGA": {
                 clickNext();
                 waitForPageLoad();
                break;
            }
            case "MGA": {
                selectAgreementType(hmap.get("Agreement Type"));
                break;

            }
            case "SMGA": {
                 clickNext();
                 waitForPageLoad();
                break;
            }
            case "SPA": {
                 clickNext();
                 waitForPageLoad();
                break;
            }
            case "PAT": {
                 clickNext();
                 waitForPageLoad();
                break;
            }
        }

    }

    public void selectVACCNAmendmentType(HashMap<String, String> hmap) {
         click("Select VACCN Amendment Type",selectTypeOfAgreement(hmap.get("VACCN Amendments")));
         clickNext();
         waitForPageLoad();
    }

    public WebElement selectPaperType(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }

    public WebElement selectTypeOfAgreement(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }

    private static class PageElements extends AbstractPageElements {

        private String message = "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
