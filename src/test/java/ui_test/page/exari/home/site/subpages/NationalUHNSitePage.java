package ui_test.page.exari.home.site.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class NationalUHNSitePage extends GenericSitePage {
    private static final Logger log = LoggerFactory.getLogger(NationalUHNSitePage.class);

    /*
    LOCATORS
     */

    @FindBy(xpath = "//a[contains(@title,'National UHN')]")
    WebElement labelNationalUHN;


    /*
    CONSTRUCTOR
     */

    public NationalUHNSitePage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelNationalUHN);
    }

    /*
    CLASS METHODS
     */
}
