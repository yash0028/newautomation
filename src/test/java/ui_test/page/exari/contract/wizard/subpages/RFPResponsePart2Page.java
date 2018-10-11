package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;

public class RFPResponsePart2Page extends GenericInputPage {

    /*
    CONSTRUCTOR
     */

    public RFPResponsePart2Page(WebDriver driver) {
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
