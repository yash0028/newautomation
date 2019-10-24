package ui_test.pages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

public class Validation extends GenericInputPage {

    private PageElements elements;
    public Validation(WebDriver driver) {
        super(driver);
        this.elements = new PageElements(driver);
    }
    public void validation(){
        assert clickNext();
        assert waitForPageLoad();
    }




    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "xxxx")
        private WebElement xxx;

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
