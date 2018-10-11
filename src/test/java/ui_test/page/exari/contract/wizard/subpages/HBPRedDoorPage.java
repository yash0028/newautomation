package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class HBPRedDoorPage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(HBPRedDoorPage.class);

    /*
    LOCATORS - Provider Details
     */

    @FindBy(xpath = "//p[contains(text(),'HBPs Red Door')]")
    private WebElement labelHBPRedDoor;

    @FindBy(xpath = "//input[@value='0_Yes']")
    private WebElement radioOptionYes;

    @FindBy(xpath = "//input[@value='1_No']")
    private WebElement radioOptionNo;

    /*
    CONSTRUCTOR
     */

    public HBPRedDoorPage(WebDriver driver) {
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

    public boolean selectHospitalBasedProvidersOptionYes() {
        return click(radioOptionYes);
    }

    public boolean selectHospitalBasedProvidersOptionNo() {
        return click(radioOptionNo);
    }
}
