package ui_test.page.cmd.transaction.dialog.row;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.cmd.transaction.dialog.Dialog;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class DialogMessage implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(DialogMessage.class);

    private final WebDriver driver;
    private PageElements elements;

    /*
    CONSTRUCTOR
    */

    public DialogMessage(WebDriver driver, WebElement row) {
        this.driver = driver;
        this.elements = new PageElements(row);
    }
    
    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return true;
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }
    
    /*
    PAGE ACTION METHODS
     */
    
    /*
    CLASS METHODS
    */

    public Dialog getDialog() {
        String code = elements.code.getText();
        String message = elements.message.getText();
        return new Dialog(code, message);
    }
    
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

        @FindBy(xpath = ".//td[1]")
        public WebElement code;

        @FindBy(xpath = ".//td[2]")
        public WebElement message;

        PageElements(SearchContext context) {
            super(context);
        }
    }


}
