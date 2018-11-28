package ui_test.page.exari.contract.interview;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.wizard.subpages.GenericInputPage;

public class ContractPreviewPage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(ContractPreviewPage.class);

    /*
    LOCATORS
     */

    @FindBy(xpath = "//div[@id='previewInstructions']")
    private WebElement labelBoxPreviewInstructions;

    /*
    CONSTRUCTOR
     */

    public ContractPreviewPage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelBoxPreviewInstructions);
    }

    /*
    CLASS METHODS
     */
}
