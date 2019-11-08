package ui_test.page.exari.contract;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;
import ui_test.util.LocalDriverProxy;

public abstract class GenericInputPage implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(GenericInputPage.class);

    /*
    PROTECTED VARIABLES
     */
    private final PageElements elements;
    /*
    CONSTRUCTOR
     */
    public GenericInputPage() {
        this.elements = new PageElements(getDriver());
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public WebDriver getDriver() {
        return LocalDriverProxy.getDriver();
    }

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(elements.navigationNext);
    }

    /*
    ACTION METHODS
     */

    public boolean clickNext() {
        waitTillClickable(elements.navigationNext,20);
        int count =0;
        while(count<=10){
            if(click("next button", elements.navigationNext)){
                return true;
            }
            pause(3);
            count++;
        }
        return false;
    }

    public boolean clickBack() {
        return click("back button", elements.navigationBack);
    }

    public boolean clickQuit() {
        return click("quit button", elements.navigationQuit);
    }

    public boolean clickSave() {
        return click("save button", elements.navigationSave);
    }

    public boolean clickFastForward() {
        return click("fast forward button", elements.navigationFastForward);
    }


    /*
    CLASS METHODS
     */

    /*
    PAGE METHODS
     */

    /*
    HELPER METHODS
     */

    /*
    ELEMENT CLASS
     */

    /**
     * private class to contain the webelements. This allows us to reload the context as needed and keeps the code clean.
     */
    private class PageElements extends AbstractPageElements {

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

        PageElements(SearchContext context) {
            super(context);
        }
    }
}
