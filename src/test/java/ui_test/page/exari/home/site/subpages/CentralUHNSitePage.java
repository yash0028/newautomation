package ui_test.page.exari.home.site.subpages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.AbstractPageElements;

public class CentralUHNSitePage extends GenericSitePage {
    private static final Logger log = LoggerFactory.getLogger(CentralUHNSitePage.class);

    private final PageElements elements;

    /*
    CONSTRUCTOR
     */

    public CentralUHNSitePage(WebDriver driver) {
        super(driver);
        elements = new PageElements(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(elements.labelCentralUHN);
    }

    /*
    CLASS METHODS
     */

    /*
    ELEMENT CLASS
     */

    /**
     * private class to contain the webelements. This allows us to reload the context as needed and keeps the code clean.
     */
    private class PageElements extends AbstractPageElements {

        @FindBy(xpath = "//a[contains(@title,'Central UHN')]")
        WebElement labelCentralUHN;

        PageElements(SearchContext context) {
            super(context);
        }
    }
}
