package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class AdditionalLocationPage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(AdditionalLocationPage.class);

    /*
    LOCATORS
     */

    @FindBy(xpath = "//p[contains(text(),'Additional Locations')]")
    private WebElement labelAppendix1;

    @FindBy(xpath = "//b[contains(text(),'additional service locations')]")
    private WebElement labelDescription;

    /*
    CONSTRUCTOR
     */

    public AdditionalLocationPage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelAppendix1) && isVisible(labelDescription);
    }

    /*
    CLASS METHODS
     */

}
