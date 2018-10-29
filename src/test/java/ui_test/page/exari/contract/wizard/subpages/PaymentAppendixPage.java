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

    @FindBy(xpath = "//input[contains(@value,'No')]")
    private WebElement radioOptionNo;

    @FindBy(xpath = "//input[contains(@value,'Payment Appendix All Payer')]")
    private WebElement optionAllPayer;

    @FindBy(xpath = "//input[contains(@id,'Schedule_ID')]")
    private WebElement textBoxFeeScheduleID;

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

    public boolean selectNonStandardOptionNo() {
        return click("non-standard no radio", radioOptionNo);
    }

    public boolean selectIncludeAllPayer() {
        return click("all payer option", optionAllPayer);
    }

    public boolean enterFeeSchedule(String feeID) {
        return cleanWriteTextBox("fee schedule", textBoxFeeScheduleID, feeID);
    }
}
