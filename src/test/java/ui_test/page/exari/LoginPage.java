package ui_test.page.exari;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;
import util.configuration.IConfigurable;

public class LoginPage implements IWebInteract, IFactoryPage, IConfigurable {

    /* ********************************  LOCATORS **************************************** */

    private final WebDriver driver;
    @FindBy(xpath = "//input[@name='username']")
    public WebElement Username_TextBox;
    @FindBy(xpath = "//input[@name='password']")
    public WebElement Password_TextBox;
    @FindBy(xpath = "//button[text()='Sign In']")
    public WebElement LoginButton;
    @FindBy(xpath = "//div[@title='Home']")
    public WebElement HomeTab;
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

    public String[] getCredentials() {
        String ar[] = new String[2];
//        ar[0] = jsonReader.getUsername();
//        ar[1] = jsonReader.getPassword();
        ar[0] = configGetOptionalString("exari.username").orElse("");
        ar[1] = configGetOptionalString("exari.password").orElse("");

        return ar;
    }


    public void setLoginCredentials() {

//        String credentials[] = getCredentials();
//
//        helper.highlighter(driver, Username_TextBox);
//        Username_TextBox.clear();
//        Username_TextBox.sendKeys(credentials[0]);
//        Username_TextBox.sendKeys(Keys.TAB);
//
//        helper.highlighter(driver, Password_TextBox);
//        Password_TextBox.clear();
//        Password_TextBox.sendKeys(credentials[1]);
//
//        helper.highlighter(driver, LoginButton);
//        helper.Click(driver, test, LoginButton, "Login Button");
//
//
//        helper.wait(driver, HomeTab, 60);
//        if ((helper.Verify_VisibleEnabled_Element(LoginPage.HomeTab))) {
//
//            test.log(LogStatus.PASS, "Verify valid Credential", FunctionalLibrary.ExpectedResults + " Credential should be valid" + FunctionalLibrary.ActualResults + "Credential is  valid ");
//
//        } else {
//
//            test.log(LogStatus.FAIL, "Verify valid Credential", FunctionalLibrary.ExpectedResults + "Credential should be valid " + FunctionalLibrary.ActualResults + "Credential is not valid ");
//        }

        String[] creds = getCredentials();
        clear(Username_TextBox);
        sendKeys(Username_TextBox, creds[0]);
        sendKeys(Username_TextBox, Keys.TAB);

        clear(Password_TextBox);
        sendKeys(Password_TextBox, creds[1]);

        click(LoginButton);

        if (isVisible(HomeTab)) {
            log.info("login successful");
        } else {
            log.info("login failed");
        }

    }

    /* ********************************  PAGES **************************************** */

    /**
     * Switching on HomePage
     *
     * @throws Exception
     */

    @Deprecated
    public HomePage HomeTab() {
        highlight(HomeTab);
        return new HomePage(getDriver());
    }


}
