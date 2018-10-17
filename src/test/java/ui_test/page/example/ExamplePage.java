package ui_test.page.example;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import ui_test.util.IFactoryPage;

/**
 * simple Example page to hit http://toolsqa.com/automation-practice-form/
 */
public class ExamplePage implements IFactoryPage {
    @FindBy(xpath = "//input[@name='firstname']")
    WebElement firstNameInput;
    private final WebDriver driver;

    /*
    CONSTRUCTOR
     */

    public ExamplePage(WebDriver driver) {
        this.driver = driver;

        //Create Locator Factory to set all @FindBy WebElements to try for 60 seconds
        AjaxElementLocatorFactory locatorFactory = new AjaxElementLocatorFactory(driver, 60);

        //Init Page using Page Factory, will try to find elements when they are needed
        PageFactory.initElements(locatorFactory, this);
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return driver.getCurrentUrl().matches("^.+automation-practice-form/$");
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    CLASS METHODS
     */

    public boolean enterFirstName(String firstName) {
        try {
            firstNameInput.sendKeys(firstName);
        } catch (Exception e) {
            return false;
        }

        return true;
    }
}
