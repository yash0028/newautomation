package ui_test.page.exari.home;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.navigation.ExariNavigationPanel;
import ui_test.page.exari.navigation.IExariNavigation;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class DashboardPage implements IFactoryPage, IWebInteract, IExariNavigation {
    private static final Logger log = LoggerFactory.getLogger(DashboardPage.class);

    private final WebDriver driver;

    private final ExariNavigationPanel navigationPanel;

    /*
    LOCATORS
     */

    @FindBy(xpath = "//span[contains(@title,'Dashboard')]")
    private WebElement labelDashboard;

    @FindBy(xpath = "//div[@id='prompt']/div[contains(text(),'Fail')]/following::div//button")
    private WebElement buttonDismissFailure;

    /*
    CONSTRUCTOR
     */

    public DashboardPage(WebDriver driver) {
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(driver, IWebInteract.TIMEOUT);
        PageFactory.initElements(factory, this);
        this.driver = driver;
        this.navigationPanel = new ExariNavigationPanel(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(labelDashboard);
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
        return !isVisible(buttonDismissFailure) || click("button dismiss failure", buttonDismissFailure);
    }



    /*
    PAGE
     */

}// End of class
