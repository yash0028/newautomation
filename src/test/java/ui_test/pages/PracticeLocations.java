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


public class PracticeLocations extends GenericInputPage {

    private PageElements elements;

    public PracticeLocations(WebDriver driver) {
        elements = new PageElements(driver);

    }

    //Select Practice Location when Paper Type is SPGA
    public void selectLocation(HashMap<String, String> hmap) {
        if(hmap.containsKey("Practice Location"))
        {
            if(selectPracticeLocation(hmap.get("Practice Location")).getAttribute("type").equals("checkbox")){
                Assert.assertTrue( setCheckBox("I select Practise Location",selectPracticeLocation(hmap.get("Practice Location")),true));
            }else if(selectPracticeLocation(hmap.get("Practice Location")).getAttribute("type").equals("radio")){
                Assert.assertTrue( click("I select Practise Location",selectPracticeLocation(hmap.get("Practice Location"))));
            }
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

    }

    //Select Practice Location when Paper Type is MGA
    public void selectPracticeLocation() {
        if(CommonMethods.isElementPresent(getDriver(), By.xpath(elements.radio))){
            click("Practice Location",elements.radioBtnSelection);
        }else if(CommonMethods.isElementPresent(getDriver(), By.xpath(elements.checkbox))){
            setCheckBox("Practice Location",elements.checkboxBtnSelection,true);
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    //TODO need to modify

    public WebElement selectPracticeLocation(String answer) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value,'" + answer + "')]"});
    }

    private static class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//input[@type='radio']")
        private WebElement radioBtnSelection;
        @FindBy(xpath = "//input[@type='checkbox']")
        private WebElement checkboxBtnSelection;

        private String radio = "//input[@type='radio']";
        private String checkbox = "//input[@type='checkbox']";
        public PageElements(SearchContext context) {
            super(context);
        }
    }


}
