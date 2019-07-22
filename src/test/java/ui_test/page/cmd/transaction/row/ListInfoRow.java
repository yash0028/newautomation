package ui_test.page.cmd.transaction.row;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;

public class ListInfoRow extends ArrayList<InfoRow> {
    private static final Logger log = LoggerFactory.getLogger(ListInfoRow.class);

    /*
    CONSTRUCTOR
    */

    public ListInfoRow(WebDriver driver, List<WebElement> rowElements) {
        for (WebElement row : rowElements) {
            this.add(new InfoRow(driver, row));
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
