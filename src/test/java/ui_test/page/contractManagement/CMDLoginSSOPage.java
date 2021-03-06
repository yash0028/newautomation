package ui_test.page.contractManagement;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;
import util.configuration.IConfigurable;

public class CMDLoginSSOPage implements IWebInteract, IFactoryPage, IConfigurable {
    private static final Logger log = LoggerFactory.getLogger(CMDLoginSSOPage.class);

    private final WebDriver driver;
    private final PageElements elements;

    /*
    CONSTRUCTOR
     */

    public CMDLoginSSOPage(WebDriver driver) {
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
        sendKeys("username", elements.textBoxUsername, configGetOptionalString("cmd.username").orElse("").split(",")[0]);
        sendKeys("password", elements.textBoxPassword, configGetOptionalString("cmd.password").orElse("").split(",")[0]);
        click("sign in", elements.buttonSignIn);
        return true;
    }

    public void checklogin() {
        if (isVisible(elements.textBoxUsername)) {
            sendKeys("username", elements.textBoxUsername,configGetOptionalString("cmd.username").orElse("").split(",")[0]);
            sendKeys("password", elements.textBoxPassword, configGetOptionalString("cmd.password").orElse("").split(",")[0]);
            // System.out.println(getDriver().getPageSource());
            //click("sign in", elements.buttonlogIn);
            click("sign in", elements.buttonSignIn);
        }
    /*
    PAGE METHODS
     */


        // ELEMENT CLASS
    }


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
        @FindBy(xpath = "//a[contains(text(),'Login')]")
        public WebElement buttonlogIn;

        PageElements(SearchContext context) {
            super(context);
        }
    }


}
