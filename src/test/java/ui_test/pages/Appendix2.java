package ui_test.pages;

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
                assert click("Include Product in Appendix 2", getXPath(product));
                assert waitForPageLoad(60);
            }

        }
        if (hmap.containsKey("Exclude Product")) {
            String[] ExcludeProducts = hmap.get("Exclude Product").split("//");
            for (String product : ExcludeProducts) {
                assert click("Exclude Product in Appendix 2", getXPath(product));
                assert waitForPageLoad(60);
            }
        }

        assert clickNext();
        assert waitForPageLoad();
    }


    public void productsExcludedFromAgreement(HashMap<String, String> hmap) {
        assert click("Exclude Product in Appendix 2", getXPath(hmap.get("Exclude Product in Amendment")));
        assert clickNext();
        assert waitForPageLoad();
    }


    public void SelectAppedix1(String option) {
        waitForPageLoad();
        if (getDriver().findElement(By.xpath("//b[.='Will additional manuals apply?']")).isDisplayed()) {
            click("Will additional manuals apply?", getXPath(option));
            assert clickNext();
            waitForPageLoad();
        }


    }

    public void enterAppendix2FC() {
        assert clickNext();
        assert waitForPageLoad();
    }

    public WebElement getXPath(String answer) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + answer + "')]"});
    }

}
