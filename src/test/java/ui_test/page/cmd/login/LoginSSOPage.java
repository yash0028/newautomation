package ui_test.page.cmd.login;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.home.DashboardPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;
import util.configuration.IConfigurable;

public class LoginSSOPage implements IWebInteract, IFactoryPage, IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(LoginSSOPage.class);

    private final WebDriver driver;
    private final PageElements elements;

    /*
    CONSTRUCTOR
     */

    public LoginSSOPage(WebDriver driver) {
        this.driver = driver;
        elements = new PageElements(driver);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(elements.textBoxUsername);
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    PAGE ACTIONS METHODS
     */


    public boolean login() {
        sendKeys("username", elements.textBoxUsername, configGetOptionalString("exari.username").orElse(""));
        sendKeys("password", elements.textBoxPassword, configGetOptionalString("exari.password").orElse(""));
        return clickWithForce("sign in", elements.buttonSignIn);
    }

    /*
    PAGE METHODS
     */

    public DashboardPage getHomePage() {
        highlight(elements.headerTabHome);
        return new DashboardPage(getDriver());
    }

    /*
    ELEMENT CLASS
     */

    /**
     * private class to contain the webelements. This allows us to reload the context as needed and keeps the code clean.
     */
    private class PageElements extends AbstractPageElements {

        @FindBy(id = "username")
        public WebElement textBoxUsername;

        @FindBy(id = "password")
        public WebElement textBoxPassword;

        @FindBy(xpath = "//button[contains(text(),'Submit')]")
        public WebElement buttonSignIn;

        @FindBy(xpath = "//div[@title='Home']")
        public WebElement headerTabHome;

        PageElements(SearchContext context) {
            super(context);
        }
    }


}
