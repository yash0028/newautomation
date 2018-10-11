package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;

public class ProviderDetailsReviewPage extends GenericInputPage {

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
        return false;
    }

    /*
    CLASS METHODS
     */
}
