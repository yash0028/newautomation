package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Appendix3Page extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(Appendix3Page.class);

    /*
    LOCATORS
     */

    @FindBy(xpath = "//p[contains(text(),'Appendix 3')]")
    private WebElement labelAppendix3;


    /*
    CONSTRUCTOR
     */

    public Appendix3Page(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelAppendix3);
    }

    /*
    CLASS METHODS
     */
}
