package ui_test.pages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

public class Warning extends GenericInputPage {
    private PageElements elements;
    public Warning(WebDriver driver) {
        super(driver);
        this.elements = new PageElements(driver);
    }
public void acknowledgment(){
    assert setCheckBox("Check acknowledgment",this.elements.acknowledge, true);
    assert clickNext();
    assert waitForPageLoad();
}

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//input[contains(@value,'acknowledged')]")
        private WebElement acknowledge;

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
