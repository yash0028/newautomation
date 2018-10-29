package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ProviderRosterPage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(ProviderRosterPage.class);

    /*
    LOCATORS
     */

    @FindBy(xpath = "//p[contains(.,'PROVIDER ROSTER')]")
    private WebElement labelProviderRoster;

    @FindBy(xpath = "//span/input[contains(@value,'NONE')]")
    private WebElement radioOptionRosterActionNone;

    /*
    CONSTRUCTOR
     */

    public ProviderRosterPage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelProviderRoster);
    }

    /*
    CLASS METHODS
     */

    public boolean selectRosterActionNone() {
        return click("none of the above radio", radioOptionRosterActionNone);
    }
}
