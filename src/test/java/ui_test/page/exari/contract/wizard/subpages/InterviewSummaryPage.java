package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class InterviewSummaryPage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(InterviewSummaryPage.class);

    /*
    LOCATORS
     */

    @FindBy(xpath = "//li[contains(text(),'When you are happy')]")
    public WebElement labelInterviewSummary;


    /*
    CONSTRUCTOR
     */

    public InterviewSummaryPage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelInterviewSummary);
    }

    /*
    CLASS METHODS
     */
}
