package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PESInputPage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(PESInputPage.class);

    /*
    LOCATORS - PES INPUTS
     */

    @FindBy(xpath = "//p[contains(text(),'PES Inputs')]")
    private WebElement labelPESInputs;

    @FindBy(xpath = "//input[contains(@name,'MPIN')]")
    private WebElement textBoxMPIN;

    @FindBy(xpath = "//input[contains(@name,'TIN')]")
    private WebElement textBoxTIN;

    @FindBy(xpath = "//input[contains(@name,'Firstname')]")
    private WebElement textBoxProviderFirstName;

    @FindBy(xpath = "//input[contains(@name,'Lastname')]")
    private WebElement textBoxProviderLastName;

    @FindBy(xpath = "//input[contains(@name,'City')]")
    private WebElement textBoxCity;

    @FindBy(xpath = "//input[contains(@name,'State')]")
    private WebElement textBoxState;

    @FindBy(xpath = "//input[contains(@name,'ZIP')]")
    private WebElement textBoxZip;

    @FindBy(xpath = "//input[contains(@name,'NPI')]")
    private WebElement textBoxNPI;

    @FindBy(xpath = "//input[contains(@value,'0_Y')]")
    private WebElement radioRawRequestJsonOptionYes;

    @FindBy(xpath = "//input[contains(@value,'1_N')]")
    private WebElement radioRawRequestJsonOptionNo;

    /*
    CONSTRUCTOR
     */

    public PESInputPage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelPESInputs);
    }

    /*
    CLASS METHODS
     */

    public boolean enterMPIN(String mpin) {
        return cleanWriteTextBox("mpin", textBoxMPIN, mpin);
    }
}
