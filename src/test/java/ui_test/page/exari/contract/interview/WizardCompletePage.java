package ui_test.page.exari.contract.interview;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.wizard.subpages.GenericInputPage;

public class WizardCompletePage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(WizardCompletePage.class);

    /*
    LOCATORS
     */

    @FindBy(xpath = "//h1[contains(text(),'Wizard Complete')]")
    private WebElement labelWizardComplete;

    @FindBy(xpath = "//a[contains(text(),'next')]")
    private WebElement navigationWizardNext;

    /*
    CONSTRUCTOR
     */

    public WizardCompletePage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelWizardComplete) && isVisible(navigationWizardNext);
    }

    /*
    GENERIC OVERRIDE METHODS
     */

    @Override
    public boolean clickNext() {
        return clickWizardNext();
    }

    /*
    CLASS METHODS
     */

    public boolean clickWizardNext() {
        return click("wizard complete", navigationWizardNext);
    }
}
