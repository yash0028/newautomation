package ui_test.page.exari.home.site.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class WestUHNSitePage extends GenericSitePage {
    private static final Logger log = LoggerFactory.getLogger(WestUHNSitePage.class);

    /*
    LOCATORS
     */

    @FindBy(xpath = "//a[contains(@title,'West UHN')]")
    WebElement labelWestUHN;


    /*
    CONSTRUCTOR
     */

    public WestUHNSitePage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelWestUHN);
    }

    /*
    CLASS METHODS
     */
}
