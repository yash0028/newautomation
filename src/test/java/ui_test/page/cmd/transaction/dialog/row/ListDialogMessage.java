package ui_test.page.cmd.transaction.dialog.row;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;

public class ListDialogMessage extends ArrayList<DialogMessage> {
    private static final Logger log = LoggerFactory.getLogger(ListDialogMessage.class);

    /*
    CONSTRUCTOR
    */

    public ListDialogMessage(WebDriver driver, List<WebElement> messages) {
        for (WebElement row : messages) {
            this.add(new DialogMessage(driver, row));
        }
    }

    /*
    STATIC METHODS
    */  
    
    /*
    CLASS METHODS
    */
    
    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */


}
