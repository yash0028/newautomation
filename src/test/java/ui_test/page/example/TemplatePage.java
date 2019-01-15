package ui_test.page.example;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.AbstractElementPage;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

/**
 * Use this page as the template for new UI Pages
 */
public class TemplatePage implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(TemplatePage.class);

    private final WebDriver driver;
    private PageElements elements;

    /*
    CONSTRUCTOR
    place constructors here
     */

    public TemplatePage(WebDriver driver) {
        this.driver = driver;
        this.elements = new PageElements(driver);
    }

    /*
    FACTORY PAGE METHODS
    implement IFactoryPage interface methods
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(elements.firstNameInput);
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    PAGE ACTION METHODS
    create
     */

    /**
     * Action that can be performed on the Page. Note the use the elements.fistNameInput,
     *
     * @param firstName
     * @return
     */
    public boolean enterFirstName(String firstName) {
        this.clearFirstName();
        return sendKeys("first name input", elements.firstNameInput, firstName);
    }

    /*
    CLASS METHODS
     */

    /**
     * General methods created for a class
     *
     * @return
     */
    private boolean isFirstNameEmpty() {
        return elements.firstNameInput.getText().isEmpty();
    }

    /*
    HELPER METHODS
     */

    private boolean clearFirstName() {
        return clear("first name input", elements.firstNameInput);
    }

    /*
    ELEMENT CLASS
     */

    /**
     * private class to contain the webelements. This allows us to reload the context as needed and keeps the code clean.
     */
    private class PageElements extends AbstractElementPage {

        @FindBy(xpath = "//input[@name='firstname']")
        public WebElement firstNameInput;

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
