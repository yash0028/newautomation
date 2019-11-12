package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;
import java.util.List;

public class Amendements extends GenericInputPage {

    private PageElements elements;
    public Amendements(WebDriver driver)
    {
        super(driver);
        this.elements = new PageElements(driver);
    }

    public void authorAmendments(HashMap<String, String> hmap)
    {
        click("Amendments",selectAmendments(hmap.get("Amendments")));
        //waitForElementToDissapear(driver,waitForElementToAppear(driver, By.xpath(elements.message)));
        assert clickNext();
        assert waitForPageLoad();
    }

    public void typeOfAmendmentsNeeded(HashMap<String, String> hmap)
    {
        assert click("Type of Amendment needed in Amendments Page",selectAmendments(hmap.get("Amendment Type Needed")));
        assert clickNext();
        assert waitForPageLoad();

    }

    public void typeOfContractApplied(HashMap<String, String> hmap)
    {
        assert click("Open Dropdown",elements.clickOnSearch);
        assert sendKeys("Select Type of Contract",elements.clickOnBar,hmap.get("Contract Type in Amendments"));
        pause(1);
        assert click("Click Regulatory Appendix", elements.dropdown_selection.get(0));
        assert clickNext();
        assert waitForPageLoad();
    }

    public WebElement selectAmendments(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }
    private static class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//span[@role='combobox']")
        private WebElement clickOnSearch;
        @FindBy(xpath = "//input[@type='search']")
        private WebElement clickOnBar;
        @FindBy(xpath = "//span[@class='select2-results']//li")
        public List<WebElement> dropdown_selection;
        private String message= "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
