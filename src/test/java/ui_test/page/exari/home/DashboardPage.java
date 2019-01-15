package ui_test.page.exari.home;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.navigation.ExariNavigationPanel;
import ui_test.page.exari.navigation.IExariNavigation;
import ui_test.util.AbstractElementPage;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class DashboardPage implements IFactoryPage, IWebInteract, IExariNavigation {
    private static final Logger log = LoggerFactory.getLogger(DashboardPage.class);

    private final WebDriver driver;
    private final PageElements elements;
    private final ExariNavigationPanel navigationPanel;

    /*
    CONSTRUCTOR
     */

    public DashboardPage(WebDriver driver) {
        this.driver = driver;
        this.elements = new PageElements(driver);
        this.navigationPanel = new ExariNavigationPanel(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(elements.labelDashboard);
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    EXARI NAVIGATION METHODS
     */

    @Override
    public ExariNavigationPanel getNavigationPanel() {
        return this.navigationPanel;
    }

    /*
    CLASS METHODS
     */

    public boolean dismissFailure() {
        return !isVisible(elements.buttonDismissFailure) || click("button dismiss failure", elements.buttonDismissFailure);
    }

    /*
    ELEMENT CLASS
     */

    private class PageElements extends AbstractElementPage {

        @FindBy(xpath = "//span[contains(@title,'Dashboard')]")
        public WebElement labelDashboard;

        @FindBy(xpath = "//div[@id='prompt']/div[contains(text(),'Fail')]/following::div//button")
        public WebElement buttonDismissFailure;

        public PageElements(SearchContext context) {
            super(context);
        }
    }

}// End of class
