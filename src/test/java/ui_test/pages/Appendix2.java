package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;

import java.util.HashMap;

public class Appendix2 extends GenericInputPage {

    public Appendix2(WebDriver driver) {
    }

    public void selectAppendix(HashMap<String, String> hmap) {

        //Split Products using // in case need to include/ exclude multiple products
        if (hmap.containsKey("Include Product")) {

            String[] IncludeProducts = hmap.get("Include Product").split("//");
            for (String product : IncludeProducts) {
                Assert.assertTrue(click("Include Product in Appendix 2", getXPath(product)));
                Assert.assertTrue(waitForPageLoad(60));
            }

        }
        if (hmap.containsKey("Include Medicare Product")) {

            String[] IncludeProducts = hmap.get("Include Medicare Product").split("//");
            for (String product : IncludeProducts) {
                assert click("Include Medicare Product", getXPath(product));
                assert waitForPageLoad(60);
            }

        }
        if (hmap.containsKey("Exclude Product")) {
            String[] ExcludeProducts = hmap.get("Exclude Product").split("//");
            for (String product : ExcludeProducts) {
                Assert.assertTrue(click("Exclude Product in Appendix 2", getXPath(product)));
                Assert.assertTrue(waitForPageLoad(60));
            }
        }
        if (hmap.containsKey("Include Medicare Product")) {

            String[] IncludeProducts = hmap.get("Include Medicare Product").split("//");
            for (String product : IncludeProducts) {
                assert click("Include Medicare Product", getXPath(product));
                assert waitForPageLoad(60);
            }
        }

        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }


    public void productsExcludedFromAgreement(HashMap<String, String> hmap) {
        if (hmap.containsKey("Exclude Product in Amendment")) {
            Assert.assertTrue(click("Exclude Product in Appendix 2", getXPath(hmap.get("Exclude Product in Amendment"))));
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }


    public void SelectAppedix1(String option) {
        waitForPageLoad();
        if (getDriver().findElement(By.xpath("//b[.='Will Additional Manuals apply?']")).isDisplayed()) {
            click("Will additional manuals apply?", getXPath(option));
            Assert.assertTrue(clickNext());
            waitForPageLoad();
        }


    }

    public void enterAppendix2FC() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public WebElement getXPath(String answer) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + answer + "')]"});
    }

}
