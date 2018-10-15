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

    @FindBy(xpath = "//input[@value='0_SPA']")
    private WebElement radioPaperTypeOptionSPA;

    @FindBy(xpath = "//input[@value='2_SMGA']")
    private WebElement radioPaperTypeOptionSMGA;

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
        return click("spa radio button", radioPaperTypeOptionSPA);
    }

    public boolean selectPaperTypeOptionalSMGA() {
        return click("smga radio button", radioPaperTypeOptionSMGA);
    }
}
