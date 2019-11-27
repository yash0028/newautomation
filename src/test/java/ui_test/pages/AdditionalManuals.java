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
                Assert.assertTrue(click("Additional Manuals Benefit Plans", selectAdditionalManuals(plan)));
                pause(1);
            }
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void additionalManualsMGA(HashMap<String, String> hmap) {
        if(CommonMethods.isElementPresent(getDriver(), By.xpath(elements.additionalManualsXpath))){
            Assert.assertTrue(click("Additional Manuals in MGA", selectAdditionalManuals(hmap.get("Additional Manuals in MGA"))));
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
    }

    public WebElement selectAdditionalManuals(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }


    private static class PageElements extends AbstractPageElements {
        private String additionalManualsXpath = "//p[contains(.,'Additional Manuals')]";
        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
