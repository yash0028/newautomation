package ui_test.page.exari.home.site;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.home.site.subpages.CentralUHNSitePage;
import ui_test.page.exari.home.site.subpages.NortheastUHNSitePage;
import ui_test.page.exari.home.site.subpages.TestSitePage;

public class SiteManager {

    private final WebDriver driver;

    /*
    CONSTRUCTOR
     */

    public SiteManager(WebDriver driver) {
        this.driver = driver;
    }

    public TestSitePage getTestSitePage() {
        return new TestSitePage(driver);
    }

    public NortheastUHNSitePage getNortheastUHNSitePage() {
        return new NortheastUHNSitePage(driver);
    }

    public CentralUHNSitePage getCentralUHNSitePage() {
        return new CentralUHNSitePage(driver);
    }
}
