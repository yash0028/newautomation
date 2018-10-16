package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ContractDetailsPage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(ContractDetailsPage.class);

    /*
    LOCATORS
     */

    @FindBy(xpath = "//p[contains(text(),'Contract Details')]")
    private WebElement labelContractDetails;

    @FindBy(xpath = ".//*[@class='AnswerSideBySide interview-item__answer']/span[1]/input")
    private WebElement textBoxContractEffectiveDate;

    @FindBy(xpath = ".//div[@class='AnswerSideBySide interview-item__answer']/span[2]/input")
    private WebElement checkBoxContractEffectiveDateUnsure;

    /*
    CONSTRUCTOR
     */

    public ContractDetailsPage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelContractDetails);
    }

    /*
    CLASS METHODS
     */

    public boolean setEffectiveDate(String effectiveDate) {
        sendKeys("contract effective date", textBoxContractEffectiveDate, effectiveDate);
        return sendKeys("contract effective date", textBoxContractEffectiveDate, Keys.TAB);
    }

    public boolean checkEffectiveDateUnsure() {
        return setCheckBox("unsure", checkBoxContractEffectiveDateUnsure, true);
    }

    public boolean uncheckEffectiveDateUnsure() {
        return setCheckBox("unsure", checkBoxContractEffectiveDateUnsure, false);
    }
}
