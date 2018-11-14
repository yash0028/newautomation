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

    @FindBy(xpath = "//p[contains(.,'PROVIDER ROSTER') or contains(.,'Provider Roster')]")
    private WebElement labelProviderRoster;

    @FindBy(xpath = "//span/input[contains(@value,'Add')]")
    private WebElement radioOptionRosterActionAdd;

    @FindBy(xpath = "//span/input[contains(@value,'NONE')]")
    private WebElement radioOptionRosterActionNone;

    @FindBy(xpath = "//input[contains(@value,'TIN')]")
    private WebElement radioOptionApproachTin;

    @FindBy(xpath = "//input[contains(@id,'TIN')]")
    private WebElement textBoxTin;

    @FindBy(xpath = "//a[contains(.,'Select All')]")
    private WebElement buttonSelectAllProviders;

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

    public boolean selectRosterActionAdd() {
        return click("add to roster radio", radioOptionRosterActionAdd);
    }

    public boolean selectRosterActionNone() {
        return click("none of the above radio", radioOptionRosterActionNone);
    }

    public boolean enterApproachSingleTin(String tin) {
        return click("single tin radio", radioOptionApproachTin)
                && cleanWriteTextBox("tin textbox", textBoxTin, tin);
    }

    public boolean selectAllProvider() {
        return click("select all", buttonSelectAllProviders);
    }
}
