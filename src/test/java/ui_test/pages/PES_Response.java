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

public class PES_Response extends GenericInputPage {

    private PageElements elements;

    public PES_Response(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void selectCounterParty(HashMap<String, String> hmap) {
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.noresult))) {
            Assert.fail("No Results found. Please check MPIN AND TIN");
        }
        Assert.assertTrue(setCheckBox("CouterParty Name checkbox", counterPartyName(hmap.get("CounterPartyName")), true));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void specifyApproachForCounter(HashMap<String, String> hmap) {

        try {
            if (counterPartyApproach(hmap.get("CounterPartyApproach")).getAttribute("type").equals("checkbox")) {
                Assert.assertTrue(setCheckBox("Approach for Counter Party", counterPartyApproach(hmap.get("CounterPartyApproach")), true));
            } else if (counterPartyApproach(hmap.get("CounterPartyApproach")).getAttribute("type").equals("radio")) {
                Assert.assertTrue(click("Approach for Counter Party", counterPartyApproach(hmap.get("CounterPartyApproach"))));
            }
            waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
            if(hmap.get("CounterPartyAddress").toLowerCase().equals("default")) {
                if ( elements.counterPartyAdd.getAttribute("type").equals("checkbox")){
                    Assert.assertTrue(setCheckBox("CounterParty address checkbox", elements.counterPartyAdd, true));
                }else{
                    Assert.assertTrue(click("CounterParty address checkbox", elements.counterPartyAdd));
                }
            }else{
                if (counterPartyAddress(hmap.get("CounterPartyAddress")).getAttribute("type").equals("checkbox")) {
                    Assert.assertTrue(setCheckBox("CounterParty address checkbox", counterPartyAddress(hmap.get("CounterPartyAddress")), true));
                } else if (counterPartyAddress(hmap.get("CounterPartyAddress")).getAttribute("type").equals("radio")) {
                    Assert.assertTrue(click("CounterParty address checkbox", counterPartyAddress(hmap.get("CounterPartyAddress"))));
                }
            }

            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public WebElement counterPartyName(String Name) {
       if(Name.toUpperCase().equals("DEFAULT"))
    	   return getDriver().findElements(By.xpath("//input[@type='checkbox']")).get(0);
       else
    	   return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }

    public WebElement counterPartyAddress(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }

    public WebElement counterPartyApproach(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }

    private static class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//input[contains(@value,'address')]")
        private WebElement counterPartyAdd;

        private String noresult = "//input[contains(@value, 'No Results found')]";
        private String message = "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
