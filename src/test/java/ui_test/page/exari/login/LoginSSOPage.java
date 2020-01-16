package ui_test.page.exari.login;

import java.util.Random;

import org.junit.Assert;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.home.DashboardPage;
import ui_test.pages.CommonMethods;
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
        
    	String[] users = configGetOptionalString("exari.username").orElse("").split(",");
    	String[] pwds =  configGetOptionalString("exari.password").orElse("").split(",");
    	Random rand = new Random();
    	int rand_index = rand.nextInt(users.length);
    	//sendKeys("username", elements.textBoxUsername, configGetOptionalString("exari.username").orElse(""));
        //sendKeys("password", elements.textBoxPassword, configGetOptionalString("exari.password").orElse(""));
    	sendKeys("username", elements.textBoxUsername,users[rand_index]);
    	sendKeys("username", elements.textBoxPassword,pwds[rand_index] );
        return clickWithForce("sign in", elements.buttonSignIn);
    }
    public String[] getCredentials(String approverType){
        String[] credentials = new String[2];
        switch (approverType) {
            case "physician local contract approver":
                //username
                credentials[0] = configGetOptionalString("exari.phy_local_contract_approver_username").orElse("");
                //password
                credentials[1] = configGetOptionalString("exari.phy_local_contract_approver_password").orElse("");
                break;
            case "senior contract approver":
                credentials[0] = configGetOptionalString("exari.sr_contract_approver_username").orElse("");
                credentials[1] = configGetOptionalString("exari.sr_contract_approver_password").orElse("");
                break;
            case "regional pricing approver":
                credentials[0] = configGetOptionalString("exari.reg_prcicing_approver_username").orElse("");
                credentials[1] = configGetOptionalString("exari.reg_prcicing_approver_password").orElse("");
                break;
            case "physician local pricing approver":
                credentials[0] = configGetOptionalString("exari.phy_local_prcicing_approver_username").orElse("");
                credentials[1] = configGetOptionalString("exari.phy_local_prcicing_approver_password").orElse("");
                break;
            case "exari username":
                credentials[0] = configGetOptionalString("exari.username").orElse("").split(",")[0];
                credentials[1] = configGetOptionalString("exari.password").orElse("").split(",")[0];
                break;
            default:
                Assert.fail("[APPROVER CREDENTIALS NOT FOUND] " + approverType + "");
                break;
        }
        return credentials;
    }




    public boolean login(String approverType) {
        String[] credentials = getCredentials(approverType);
        sendKeys("username", elements.textBoxUsername, credentials[0]);
        sendKeys("password", elements.textBoxPassword, credentials[1]);
        return clickWithForce("sign in", elements.buttonSignIn);
    }

    public boolean login(String userName, String password) {
        sendKeys("username", elements.textBoxUsername, userName);
        sendKeys("password", elements.textBoxPassword, password);
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

        @FindBy(xpath = "//input[@name='USER']")
        public WebElement textBoxUsername;

        @FindBy(xpath = "//input[@name='PASSWORD']")
        public WebElement textBoxPassword;

        @FindBy(id = "Button2")
        public WebElement buttonSignIn;

        @FindBy(xpath = "//div[@title='Home']")
        public WebElement headerTabHome;

        @FindBy(xpath = "//*[@id='tablist']/li[1]/a")
        public WebElement DocumentTab;

        @FindBy(xpath = "//html/body//font")
        public WebElement err_Msg;

        PageElements(SearchContext context) {
            super(context);
        }
    }


}
