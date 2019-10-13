package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

public class GroupSummary extends GenericInputPage {


    private PageElements elements;
    public GroupSummary(WebDriver driver)
    {
        super(driver);
        elements=new PageElements(driver);
    }

    public void readInterviewSummary() {
       assert click("Complete Group Summary",this.elements.next);
       assert waitForPageLoad();
    }

    private static class PageElements  extends AbstractPageElements {

        @FindBy(xpath = "//*[@id=\"previewInstructions\"]/div/div/form/div/div[1]/div[1]/button")
        private WebElement next;

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
