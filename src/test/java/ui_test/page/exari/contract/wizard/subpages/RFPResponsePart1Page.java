package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class RFPResponsePart1Page extends GenericInputPage {

    /*
    LOCATORS
     */

    @FindBy(xpath = "//p[contains(text(),'RFP Response')]")
    private WebElement labelRFPResponse;

    /*
    CONSTRUCTOR
     */

    public RFPResponsePart1Page(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelRFPResponse);
    }

    /*
    CLASS METHODS
     */
}
