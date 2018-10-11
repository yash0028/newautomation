package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Appendix1Page extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(Appendix1Page.class);

    /*
    LOCATORS - Provider Details
     */

    @FindBy(xpath = "//b[contains(text(),'Will additional manuals apply')]")
    private WebElement labelAppendix1;

    @FindBy(xpath = "//input[@value='0_Yes']")
    private WebElement radioOptionYes;

    @FindBy(xpath = "//input[@value='1_No']")
    private WebElement radioOptionNo;

    /*
    CONSTRUCTOR
     */

    public Appendix1Page(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return false;
    }

    /*
    CLASS METHODS
     */

    public boolean selectAdditonalManualOptionYes() {
        return click(radioOptionYes);
    }

    public boolean selectAdditionalManualOptionNo() {
        return click(radioOptionNo);
    }
}
