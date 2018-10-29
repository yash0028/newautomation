package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class ProviderDetailsReviewPage extends GenericInputPage {

    /*
    LOCATORS
     */

    @FindBy(xpath = "//p[contains(text(),'Provider Details')]")
    private WebElement labelProviderDetails;

    @FindBy(xpath = "//p[contains(text(),'Address')]")
    private WebElement labelAddress;

    @FindBy(xpath = "//div/div/p/label/b[contains(text(), 'Arbitration County')]/ancestor::div[contains(@class, 'interview-item')]//div[1]/div/span/input[@type='radio']")
    private WebElement radioOptionArbitrationCounty1;

    /*
    CONSTRUCTOR
     */

    public ProviderDetailsReviewPage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelProviderDetails) && isVisible(labelAddress);
    }

    /*
    CLASS METHODS
     */

    public boolean selectArbitrationCounty() {
        if (isVisible(radioOptionArbitrationCounty1)) {
            return click(radioOptionArbitrationCounty1);
        } else {
            return true;
        }
    }
}
