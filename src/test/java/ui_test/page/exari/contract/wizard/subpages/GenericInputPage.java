package ui_test.page.exari.contract.wizard.subpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public abstract class GenericInputPage implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(GenericInputPage.class);

    /*
    PROTECTED VARIABLES
     */

    protected final WebDriver driver;

    /*
    LOCATORS - NAVIGATION
     */

    @FindBy(xpath = "//button[contains(text(),'next')]")
    private WebElement navigationNext;

    @FindBy(xpath = "//div/a[contains(text(),'back')]")
    private WebElement navigationBack;

    @FindBy(xpath = "//div/a[contains(text(),'quit')]")
    private WebElement navigationQuit;

    @FindBy(xpath = "//button[contains(text(),'save')]")
    private WebElement navigationSave;

    @FindBy(xpath = "//button[contains(text(),'ffwd')]")
    private WebElement navigationFastForward;

    /*
    CONSTRUCTOR
     */

    public GenericInputPage(WebDriver driver) {
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(driver, IWebInteract.TIMEOUT);
        PageFactory.initElements(factory, this);
        this.driver = driver;
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    CLASS METHODS
     */

    public boolean clickNext() {
        return click("next button", navigationNext);
    }

    public boolean clickBack() {
        return click("back button", navigationBack);
    }

    public boolean clickQuit() {
        return click("quit button", navigationQuit);
    }

    public boolean clickSave() {
        return click("save button", navigationSave);
    }

    public boolean clickFastForward() {
        return click("fast forward button", navigationFastForward);
    }
}
