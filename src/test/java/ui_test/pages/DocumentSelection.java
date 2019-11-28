package ui_test.pages;

import org.junit.Assert;
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
        Assert.assertTrue(click("Agreement Type", selectTypeOfAgreement(name)));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void selectDocumentType(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(click("Paper Type", selectPaperType(hmap.get("Paper Type"))));
        switch (hmap.get("Paper Type")) {

            case "SPGA": {
                Assert.assertTrue(clickNext());
                Assert.assertTrue(waitForPageLoad());
                break;
            }
            case "MGA": {
                selectAgreementType(hmap.get("Agreement Type"));
                break;

            }
            case "SMGA": {
                Assert.assertTrue(clickNext());
                Assert.assertTrue(waitForPageLoad());
                break;
            }
            case "SPA": {
                Assert.assertTrue(clickNext());
                Assert.assertTrue(waitForPageLoad());
                break;
            }
            case "PAT": {
                Assert.assertTrue(clickNext());
                Assert.assertTrue(waitForPageLoad());
                break;
            }
        }

    }

    public void selectVACCNAmendmentType(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Select VACCN Amendment Type", selectTypeOfAgreement(hmap.get("VACCN Amendments"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
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
