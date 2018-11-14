package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ContractDetailsPhyconPage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(ContractDetailsPhyconPage.class);

    /*
    LOCATORS
     */

    @FindBy(xpath = "//p[contains(text(),'Contract Details')]")
    private WebElement labelContractDetails;

    @FindBy(xpath = "//input[contains(@name,'PhyCon') and @type='text']")
    private WebElement textBoxPhyConNumber;

    //Phycon Number input

    /*
    CONSTRUCTOR
     */

    public ContractDetailsPhyconPage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelContractDetails) && isVisible(textBoxPhyConNumber);
    }

    /*
    CLASS METHODS
     */

    public boolean enterPhyconNumber(String number) {
        return cleanWriteTextBox("phycon number input", textBoxPhyConNumber, number);
    }
}
