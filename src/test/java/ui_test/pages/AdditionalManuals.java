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

public class AdditionalManuals extends GenericInputPage {
    private PageElements elements;

    public AdditionalManuals(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void applyToBenefitPlans(HashMap<String, String> hmap) {
        if (hmap.containsKey("Benefit Plan")) {
            String[] plans = hmap.get("Benefit Plan").split("//");
            for (String plan : plans) {
                Assert.assertTrue(setCheckBox("Additional Manuals Benefit Plans", selectAdditionalManuals(plan),true));
                pause(1);
            }
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }
    public void chooseAdditionalManuals(HashMap<String, String> hmap){
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(click("Additional Manuals", selectAdditionalManuals(hmap.get("Additional Manuals"))));
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        if(hmap.get("Additional Manuals").equals("Yes")){
            applyToBenefitPlans(hmap);
        }else{
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }

    }

    public WebElement selectAdditionalManuals(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }


    private static class PageElements extends AbstractPageElements {
        private String message = "//div[contains(@class,'DialogBox')]";
        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
