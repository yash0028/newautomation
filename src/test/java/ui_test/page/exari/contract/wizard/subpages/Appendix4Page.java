package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Appendix4Page extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(Appendix4Page.class);

    /*
    LOCATORS
     */


    /*
    CONSTRUCTOR
     */

    public Appendix4Page(WebDriver driver) {
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
