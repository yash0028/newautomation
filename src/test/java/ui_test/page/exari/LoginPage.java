package ui_test.page.exari;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;
import util.configuration.IConfigurable;

public class LoginPage implements IWebInteract, IFactoryPage, IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(LoginPage.class);


    /* ********************************  LOCATORS **************************************** */

    private final WebDriver driver;

    @FindBy(xpath = "//input[@name='username']")
    public WebElement textBoxUsername;

    @FindBy(xpath = "//input[@name='password']")
    public WebElement textBoxPassword;

    @FindBy(xpath = "//button[text()='Sign In']")
    public WebElement buttonSignIn;

    @FindBy(xpath = "//div[@title='Home']")
    public WebElement headerTabHome;

    @FindBy(xpath = "//*[@id='tablist']/li[1]/a")
    public WebElement DocumentTab;

    @FindBy(xpath = "//html/body//font")
    public WebElement err_Msg;

    /*
    CONSTRUCTOR
     */

    public LoginPage(WebDriver driver) {
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(driver, IWebInteract.TIMEOUT);
        PageFactory.initElements(factory, this);
        this.driver = driver;
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return getDriver().getCurrentUrl().matches("^.+exaricm/page/$");
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    CLASS METHODS
     */


    public boolean login() {
        sendKeys(textBoxUsername, configGetOptionalString("exari.username").orElse(""));
        sendKeys(textBoxPassword, configGetOptionalString("exari.password").orElse(""));
        click(buttonSignIn);

        if (isVisible(headerTabHome)) {
            log.info("login successful");
        } else {
            log.error("login failed");
            return false;
        }

        return true;
    }

    /*
    PAGE METHODS
     */

    public HomePage getHomePage() {
        highlight(headerTabHome);
        return new HomePage(getDriver());
    }


}
