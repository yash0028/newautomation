package ui_test.page.exari.home.site.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TestSitePage extends GenericSitePage {
    private static final Logger log = LoggerFactory.getLogger(TestSitePage.class);

    /*
    LOCATORS
     */

    @FindBy(xpath = "//a[contains(@title,'Test')]")
    WebElement labelTest;


    /*
    CONSTRUCTOR
     */

    public TestSitePage(WebDriver driver) {
        super(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelTest);
    }

    /*
    CLASS METHODS
     */
}
