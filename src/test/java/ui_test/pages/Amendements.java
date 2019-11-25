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

public class Amendements extends GenericInputPage {

    private PageElements elements;

    public Amendements(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void authorAmendments(HashMap<String, String> hmap) {
        click("Amendments", selectAmendments(hmap.get("Amendments")));
        //waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void typeOfAmendmentsNeeded(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(click("Type of Amendment needed in Amendments Page", selectAmendments(hmap.get("Amendment Type Needed"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

    }

    public void typeOfContractApplied(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Open Dropdown", elements.clickOnSearch));
        Assert.assertTrue(sendKeys("Select Type of Contract", elements.clickOnBar, hmap.get("Contract Type in Amendments")));
        pause(1);
        Assert.assertTrue(click("Click Type of Amendments", elements.dropdown_selection.get(0)));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public WebElement selectAmendments(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }

    public void amendPaymentAppendix(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Amend Payment Appendix", selectAmendments(hmap.get("Amend Payment Appendix"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void selectUnilateralContract(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Select Unilateral Contract", selectAmendments(hmap.get("Unilateral Contract"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void selectproviderTypeInAmendments(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Select Provider Type in Amendments", selectAmendments(hmap.get("Contract Type in Amendments"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void enterOptOut(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Select OptOut option in Amendments", selectAmendments(hmap.get("OptOut"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    private static class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//span[@role='combobox']")
        private WebElement clickOnSearch;
        @FindBy(xpath = "//input[@type='search']")
        private WebElement clickOnBar;
        @FindBy(xpath = "//span[@class='select2-results']//li")
        public List<WebElement> dropdown_selection;
        private String message = "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
