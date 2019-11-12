package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

public class GroupSummary extends GenericInputPage {

    public GroupSummary(WebDriver driver)
    {
    }

    public void readInterviewSummary() {
        assert clickNext();
        assert waitForPageLoad();
    }

}
