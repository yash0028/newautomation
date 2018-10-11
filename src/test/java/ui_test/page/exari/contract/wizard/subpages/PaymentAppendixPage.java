package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PaymentAppendixPage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(PaymentAppendixPage.class);

    /*
    LOCATORS
     */


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
        return false;
    }

    /*
    CLASS METHODS
     */
}
