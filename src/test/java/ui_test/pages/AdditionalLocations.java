package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class AdditionalLocations extends GenericInputPage {
    private PageElements elements;

    public AdditionalLocations(WebDriver driver) {
        elements = new PageElements(driver);
    }

    private void selectAddressFromNDB() {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        click("Select Address from NDB", elements.addressFromNDB);

    }

    public void selectAdditionalLocations(HashMap<String, String> hmap) {
        pause(1);
        waitForPageLoad(60);
        Assert.assertTrue(click("Additional Location", additionalLocationsElement(hmap.get("Additional Location"))));
//TODO recheck
        switch (hmap.get("Additional Location")) {
            case "Yes": {
                break;
            }
            case "No": {
                selectAddressFromNDB();
                break;
            }
            case "None": {
                break;
            }
        }
        //waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

    }

    public WebElement additionalLocationsElement(String addLoc) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + addLoc + "')]"});
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//input[@type='checkbox']")
        private WebElement addressFromNDB;

        private String message = "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
