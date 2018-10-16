package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PaymentAppendixPage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(PaymentAppendixPage.class);

    /*
    LOCATORS
     */

    @FindBy(xpath = "//p[contains(text(),'Payment Appendix')]")
    private WebElement labelPaymentAppendix;

    /*
    CONSTRUCTOR
     */

    public PaymentAppendixPage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelPaymentAppendix);
    }

    /*
    CLASS METHODS
     */
}
