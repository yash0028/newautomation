package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IWebInteract;

import java.util.HashMap;

public class WizardComplete extends GenericInputPage {
    private PageElements elements;

    public WizardComplete(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void completeWizard(HashMap<String, String> hmap) {
        waitTillClickable(elements.completeWizardElement, 10);
        try {
            this.elements.completeWizardElement.click();
            IWebInteract.log.trace("clicked on {}", "Complete Wizard");
        } catch (Exception e) {
            Assert.fail("click failed for Complete Wizard");
        }
        assert waitForPageLoad();
        IWebInteract.log.info("Contract Link : {}", getDriver().getCurrentUrl());
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//a[contains(@class,'nextButtonLink')]")
        private WebElement completeWizardElement;

        public PageElements(SearchContext context) {
            super(context);
        }

    }

}