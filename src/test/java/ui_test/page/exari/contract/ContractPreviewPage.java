package ui_test.page.exari.contract;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.AbstractPageElements;

public class ContractPreviewPage extends GenericInputPage {
    private static final Logger log = LoggerFactory.getLogger(ContractPreviewPage.class);

    private final PageElements elements;

    /*
    CONSTRUCTOR
     */

    public ContractPreviewPage(WebDriver driver) {
        super(driver);
        elements = new PageElements(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(elements.labelBoxPreviewInstructions);
    }

    /*
    ACTION METHODS
     */

    /*
    CLASS METHODS
     */

    /*
    PAGE METHODS
     */

    /*
    HELPER METHODS
     */

    /*
    ELEMENT CLASS
     */

    /**
     * private class to contain the webelements. This allows us to reload the context as needed and keeps the code clean.
     */
    private class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//div[@id='previewInstructions']")
        private WebElement labelBoxPreviewInstructions;

        PageElements(SearchContext context) {
            super(context);
        }
    }
}
