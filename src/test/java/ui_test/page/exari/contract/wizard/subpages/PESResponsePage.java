package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PESResponsePage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(PESInputPage.class);

    /*
    LOCATORS - PES Response
     */

    @FindBy(xpath = "//b[contains(text(),'Select the Counterparty')]")
    private WebElement labelCounterParty;

    @FindBy(xpath = "//input[@type='radio']/preceding::span/input")
    private WebElement radioCounterPartyOption1;

    @FindBy(xpath = "(.//input[@type='radio'])[2]")
    private WebElement radioCounterPartyOption2;

    /*
    CONSTRUCTOR
     */

    public PESResponsePage(WebDriver driver) {
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

    public boolean selectCounterPartyOption1() {
        return click(radioCounterPartyOption1);
    }

    public boolean selectCounterPartyOption2() {
        return click(radioCounterPartyOption2);
    }

}
