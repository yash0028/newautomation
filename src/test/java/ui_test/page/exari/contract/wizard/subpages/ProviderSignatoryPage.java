package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ProviderSignatoryPage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(ProviderSignatoryPage.class);

    /*
    LOCATORS
     */

    @FindBy(xpath = "//p[contains(@class, 'topic') and contains(.,'Provider Signatory')]")
    private WebElement labelTitle;

    @FindBy(xpath = "//input[contains(@id,'CounterpartySignatoryName')]")
    private WebElement textBoxSignerName;

    @FindBy(xpath = "//input[contains(@id,'CounterpartySignatoryDate')]")
    private WebElement textBoxSignDate;

    @FindBy(xpath = "//input[contains(@id,'CounterpartySignatoryEmail')]")
    private WebElement textBoxSignerEmail;

    /*
    CONSTRUCTOR
     */

    public ProviderSignatoryPage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelTitle);
    }

    /*
    CLASS METHODS
     */

    public boolean enterSignerName(String name) {
        return cleanWriteTextBox("signatory name", textBoxSignerName, name);
    }

    public boolean enterSignDate(String date) {
        return sendKeys("signatory date", textBoxSignDate, date)
                && sendKeys("signatory date", textBoxSignDate, Keys.TAB);
    }

    public boolean enterSignerEmail(String email) {
        return cleanWriteTextBox("signatory email", textBoxSignerEmail, email);
    }
}
