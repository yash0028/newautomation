package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IWebInteract;

import java.util.HashMap;
import java.util.List;

public class AdditionalManuals extends GenericInputPage {
    private PageElements elements;

    public AdditionalManuals(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void applyToBenefitPlans(HashMap<String, String> hmap) {
        boolean state = false;
        if (hmap.containsKey("Benefit Plan")) {
            String[] plans = hmap.get("Benefit Plan").split("//");
            for (String plan : plans) {
                if (plan.equals("StateMME")) {
                    state = true;
                }
                Assert.assertTrue(setCheckBox("Additional Manuals Benefit Plans", selectAdditionalManuals(plan), true));
                pause(1);
            }
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

        if (state) {
            nameOfState(hmap);
        }
    }

    public void applyToBenefitPlansCnclProd(HashMap<String, String> hmap) {
        String question = "Select the products which are being excluded from the Agreement";
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getQn(question)))) {
            if (hmap.containsKey("Cancel Product in Amendment")) {
                String[] Products = hmap.get("Cancel Product in Amendment").split("//");
                for (String product : Products) {
                    Assert.assertTrue(setCheckBox(question, getQnInputElem(question, product), true));
                    Assert.assertTrue(waitForPageLoad(60));
                }
            }
        } else {
            IWebInteract.log.info("[NOT FOUND] {}", question);
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void nameOfState(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(click("Open State Name Dropdown", this.elements.dropdown_open));
        pause(1);
        waitForPageLoad(60);
        Assert.assertTrue(sendKeys("Send Data to State Name", elements.searchBar, hmap.get("Benefit Plan Descriptions Provision")));
        pause(1);
        waitForPageLoad(60);
        Assert.assertTrue(click("Click State Name", elements.selectState.get(0)));
        waitForPageLoad(60);
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void chooseAdditionalManuals(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(click("Additional Manuals", selectAdditionalManuals(hmap.get("Additional Manuals"))));
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        if (hmap.get("Additional Manuals").equals("Yes")) {
            applyToBenefitPlans(hmap);
        } else {
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }

    }

    public WebElement selectAdditionalManuals(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }

    public void additionalMannualsToInclude() {
        Assert.assertTrue(click("Additional Manuals to Include", elements.selectAll));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public String getQn(String question) {
        return "//label/b[contains(.,'" + question + "')]";
    }

    public WebElement getQnInputElem(String ques, String val) {
        if (val != null) {
            return findElement(getDriver(), new String[]{"xpath", getQn(ques) + "/../../../..//input[contains(@value,'" + val + "')]"});
        }
        return findElement(getDriver(), new String[]{"xpath", getQn(ques) + "/../../../..//input"});
    }

    private static class PageElements extends AbstractPageElements {
        private String message = "//div[contains(@class,'DialogBox')]";
        @FindBy(xpath = "//span[@class='select2-selection__arrow']")
        private WebElement dropdown_open;
        @FindBy(xpath = "//a[contains(.,'Select All')]")
        private WebElement selectAll;
        @FindBy(xpath = "//input[@type='search']")
        private WebElement searchBar;
        @FindBy(xpath = "//span[@class='select2-results']//li")
        private List<WebElement> selectState;

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
