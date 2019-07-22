package ui_test.page.cmd.transaction.dialog;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.cmd.transaction.dialog.row.ListDialogMessage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.List;

public class DialogContainer implements IFactoryPage, IWebInteract {
    private static final Logger log = LoggerFactory.getLogger(DialogContainer.class);

    private final WebDriver driver;
    private PageElements elements;
    private DialogElements dialogElements;
    private ListDialogMessage messages;

    /*
    CONSTRUCTOR
    */

    public DialogContainer(WebDriver driver) {
        this.driver = driver;
        this.elements = new PageElements(driver);
        this.dialogElements = new DialogElements(elements.root);
        this.messages = new ListDialogMessage(driver, dialogElements.row_messagesBody);
    }
    
    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return isVisible(elements.root);
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

    public Dialog getMessage(int index) {
        if (index >= this.messages.size()) {
            return null;
        }
        return messages.get(index).getDialog();
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

        @FindBy(xpath = "//mat-dialog-container/app-message-modal-content")
        public WebElement root;

        PageElements(SearchContext context) {
            super(context);
        }
    }

    private class DialogElements extends AbstractPageElements {

        @FindBy(xpath = ".//div[contains(text(),'Messages')]")
        public WebElement tab_messages;

        @FindBy(xpath = ".//div[contains(text(),'OCM')]")
        public WebElement tab_ocm;

        @FindBy(xpath = ".//tbody/tr")
        public List<WebElement> row_messagesBody;

        @FindBy(xpath = ".//pre")
        public WebElement label_ocm;

        DialogElements(SearchContext context) {
            super(context);
        }
    }


}
