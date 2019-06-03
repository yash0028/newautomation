package ui_test.page.exari.contract;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.AbstractPageElements;

public class WizardCompletePage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(WizardCompletePage.class);

    private final PageElements elements;


    /*
    CONSTRUCTOR
     */

    public WizardCompletePage(WebDriver driver) {
        super(driver);
        elements = new PageElements(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(elements.labelWizardComplete) && isVisible(elements.navigationWizardNext);
    }

    /*
    GENERIC INPUT OVERRIDE METHODS
     */

    @Override
    public boolean clickNext() {
        return clickWizardNext();
    }

    /*
    ACTION METHODS
     */

    public boolean clickWizardNext() {
        waitForPageLoad();
        return click("wizard complete", elements.navigationWizardNext);
    }

    /*
    CLASS METHODS
     */


    /*
    PAGE METHODS
     */

    /*
    HELPER METHODS
     */

    /*
    ELEMENT CLASS
     */

    /**
     * private class to contain the webelements. This allows us to reload the context as needed and keeps the code clean.
     */
    private class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//h1[contains(text(),'Wizard Complete')]")
        private WebElement labelWizardComplete;

        @FindBy(xpath = "//a[contains(text(),'next')]")
        private WebElement navigationWizardNext;

        PageElements(SearchContext context) {
            super(context);
        }
    }
}
