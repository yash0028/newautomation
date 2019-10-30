package ui_test.pages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class WizardComplete extends GenericInputPage
{
    private PageElements elements;

    public WizardComplete(WebDriver driver)
    {
        super(driver);
        this.elements = new PageElements(driver);
    }

    public void completeWizard(HashMap<String, String> hmap){
        waitTillClickable(elements.completeWizardElement,10);
        assert click("Complete Wizard",this.elements.completeWizardElement);
        assert waitForPageLoad();
    }
    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//a[contains(@class,'nextButtonLink')]")
        private WebElement completeWizardElement;
        public PageElements(SearchContext context) {
            super(context);
        }

    }

}