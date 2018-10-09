package ui_test.page.exari;

import com.relevantcodes.extentreports.LogStatus;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import ui_test.page.pagehelpers.FunctionalLibrary;
import ui_test.page.pagehelpers.PageObjectBase;

public class LoginPage extends PageObjectBase {

    /* ********************************  LOCATORS **************************************** */

    @FindBy(xpath = "//input[@name='username']")
    public static WebElement Username_TextBox;

    @FindBy(xpath = "//input[@name='password']")
    public static WebElement Password_TextBox;

    @FindBy(xpath = "//button[text()='Sign In']")
    public static WebElement LoginButton;

    @FindBy(xpath = "//div[@title='Home']")
    public static WebElement HomeTab;

    @FindBy(xpath = "//*[@id='tablist']/li[1]/a")
    public static WebElement DocumentTab;

    @FindBy(xpath = "//html/body//font")
    public static WebElement err_Msg;


    /**
     * Constructor to initialize elements
     */

    public LoginPage(FunctionalLibrary helper) {

        PageFactory.initElements(driver, this);
        this.helper = helper;

    }

    /* ********************************  METHODS **************************************** */

    public String[] getCredentials() {

        String ar[] = new String[2];
        ar[0] = jsonReader.getUsername();
        ar[1] = jsonReader.getPassword();

        return ar;
    }


    public void setLoginCredentials() throws Exception {

        String credentials[] = getCredentials();

        helper.highlighter(driver, Username_TextBox);
        Username_TextBox.clear();
        Username_TextBox.sendKeys(credentials[0]);
        Username_TextBox.sendKeys(Keys.TAB);

        helper.highlighter(driver, Password_TextBox);
        Password_TextBox.clear();
        Password_TextBox.sendKeys(credentials[1]);

        helper.highlighter(driver, LoginButton);
        helper.Click(driver, test, LoginButton, "Login Button");


        helper.wait(driver, HomeTab, 60);
        if ((helper.Verify_VisibleEnabled_Element(LoginPage.HomeTab))) {

            test.log(LogStatus.PASS, "Verify valid Credential", FunctionalLibrary.ExpectedResults + " Credential should be valid" + FunctionalLibrary.ActualResults + "Credential is  valid ");

        } else {

            test.log(LogStatus.FAIL, "Verify valid Credential", FunctionalLibrary.ExpectedResults + "Credential should be valid " + FunctionalLibrary.ActualResults + "Credential is not valid ");
        }

    }

    /* ********************************  PAGES **************************************** */

    /**
     * Switching on HomePage
     *
     * @throws Exception
     */

    public HomePage HomeTab() throws InterruptedException {
        helper.highlighter(driver, HomeTab);
        return new HomePage(helper);
    }


}
