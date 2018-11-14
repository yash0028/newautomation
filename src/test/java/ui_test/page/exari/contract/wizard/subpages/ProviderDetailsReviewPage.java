package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

public class ProviderDetailsReviewPage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(ProviderDetailsReviewPage.class);


    /*
    LOCATORS
     */

    @FindBy(xpath = "//p[contains(.,'Provider Details')]")
    private WebElement labelProviderDetails;

    @FindBy(xpath = "//p[contains(text(),'Address')]")
    private WebElement labelAddress;

    //    @FindBy(xpath = "//div/div/p/label/b[contains(text(), 'Arbitration County')]/ancestor::div[contains(@class, 'interview-item')]//div[1]/div/span/input[@type='radio']")
    @FindBy(xpath = "//input[@type='radio']")
    private List<WebElement> radioOptionArbitrationCounty;

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
        return isVisible(labelProviderDetails);
    }

    /*
    CLASS METHODS
     */

    public boolean selectArbitrationCounty(int index) {
        if (radioOptionArbitrationCounty.isEmpty()) {
            return true;
        }

        if (radioOptionArbitrationCounty.size() >= index) {
            return false;
        }

        return click("county radio button", radioOptionArbitrationCounty.get(index));
    }
}
