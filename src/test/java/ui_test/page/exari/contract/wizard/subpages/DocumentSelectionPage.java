package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DocumentSelectionPage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(DocumentSelectionPage.class);

        /*
    LOCATORS
     */

    @FindBy(xpath = "//p[contains(text(),'Document Selection')]")
    private WebElement labelDocumentSelection;

    @FindBy(xpath = "//b[contains(text(),'Paper Types available')]")
    private WebElement labelDescription;

    /*
    LOCATORS - RADIO OPTIONS
     */

    @FindBy(xpath = "//input[contains(@value,'SPA')]")
    private WebElement radioOptionSPA;

    @FindBy(xpath = "//input[contains(@value,'PAT')]")
    private WebElement radioOptionPAT;

    @FindBy(xpath = "//input[contains(@value,'SMGA')]")
    private WebElement radioOptionSMGA;

    /*
    CONSTRUCTOR
     */

    public DocumentSelectionPage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelDocumentSelection) && isVisible(labelDescription);
    }

    /*
    CLASS METHODS
     */

    public boolean selectPaperTypeOptionSPA() {
        return click("spa radio button", radioOptionSPA);
    }

    public boolean selectPaperTypeOptionalSMGA() {
        return click("smga radio button", radioOptionSMGA);
    }

    public boolean selectRadioOption(String option) {
        if (option.equalsIgnoreCase("spa") || option.equalsIgnoreCase("Simplified Physician Agreement")) {
            return selectPaperTypeOptionSPA();
        }

        if (option.equalsIgnoreCase("smga") || option.equalsIgnoreCase("Simplified Medical Group Agreement")) {
            return selectPaperTypeOptionSPA();
        }

        return false;
    }
}
