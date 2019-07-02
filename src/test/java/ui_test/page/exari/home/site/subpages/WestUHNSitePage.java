package ui_test.page.exari.home.site.subpages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.AbstractPageElements;

public class WestUHNSitePage extends GenericSitePage {
    private static final Logger log = LoggerFactory.getLogger(WestUHNSitePage.class);

    private final PageElements elements;

    /*
    CONSTRUCTOR
     */

    public WestUHNSitePage(WebDriver driver) {
        super(driver);
        elements = new PageElements(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(elements.labelWestUHN);
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

        @FindBy(xpath = "//a[contains(@title,'West UHN')]")
        WebElement labelWestUHN;

        PageElements(SearchContext context) {
            super(context);
        }
    }
}
