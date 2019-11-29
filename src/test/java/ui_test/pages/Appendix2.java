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
import java.util.List;

public class Appendix2 extends GenericInputPage {
    private PageElements elements;
    private String Question;

    public Appendix2(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void selectAppendix(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        //Is this contract only for Virginia MLTSS?
        Question = "Is this contract only for Virginia MLTSS";
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getContractType(Question)))) {
            if (hmap.get("Is this contract only for Virginia MLTSS").equals("No")) {
                Assert.assertTrue(click(Question, getContractTypeElem(Question, hmap.get(Question))));
                waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
            } else {
                Assert.fail("[ERROR] [Invalid input/Not implemented] for [Is this contract only for Virginia MLTSS = " + hmap.get("Is this contract only for Virginia MLTSS") + "]");
            }
        }

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
                Assert.assertTrue(click("Include Medicare Product", getXPath(product)));
                Assert.assertTrue(waitForPageLoad(60));
            }

        }
        if (hmap.containsKey("Exclude Product")) {
            String[] ExcludeProducts = hmap.get("Exclude Product").split("//");
            for (String product : ExcludeProducts) {
                Assert.assertTrue(click("Exclude Product in Appendix 2", getXPath(product)));
                Assert.assertTrue(waitForPageLoad(60));
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
        if (getDriver().findElement(By.xpath("//label[@class='QuestionText']/b")).isDisplayed()) {
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

    public String getContractType(String question) {
        return "//label/b[contains(.,'" + question + "')]";
    }

    public WebElement getContractTypeElem(String question, String MarketType) {
        return findElement(getDriver(), new String[]{"xpath", "//label/b[contains(.,'" + question + "')]/../../../..//input[contains(@value,'" + MarketType + "')]"});
    }

    private static class PageElements extends AbstractPageElements {

        private String message = "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }

}
