package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class PES_Response extends GenericInputPage {

    private PageElements elements;

    public PES_Response(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void selectCounterParty(HashMap<String, String> hmap) {
            if(setCheckBox("CouterParty Name checkbox", counterPartyName(hmap.get("CounterPartyName")), true)){
                assert clickNext();
                assert waitForPageLoad();
            }else {
                if(CommonMethods.isElementPresent(getDriver(),By.xpath(elements.noresult))){
                    Assert.fail("No Results found. Please check MPIN AND TIN");
                }
            }
    }

    public void specifyApproachForCounter(HashMap<String, String> hmap) {

        try {
            assert setCheckBox("Approach for Counter Party", counterPartyApproach(hmap.get("CounterPartyApproach")), true);
            waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
            assert setCheckBox("CounterParty address checkbox", counterPartyAddress(hmap.get("CounterPartyAddress")), true);
            //waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
            assert clickNext();
            assert waitForPageLoad();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public WebElement counterPartyName(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }

    public WebElement counterPartyAddress(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }

    public WebElement counterPartyApproach(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }

    private static class PageElements extends AbstractPageElements {

        private String noresult = "//input[contains(@value, 'No Results found')]";
        private String message = "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
