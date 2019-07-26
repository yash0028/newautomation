package ui_test.page.cmd.transaction.action.row;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;

public class ListProductRow extends ArrayList<ProductRow> {
    private static final Logger log = LoggerFactory.getLogger(ListProductRow.class);

    /*
    CONSTRUCTOR
    */

    public ListProductRow(WebDriver driver, List<WebElement> rowElements) {
        for (int i = 0; i < rowElements.size(); i += 2) {
            this.add(new ProductRow(driver, rowElements.get(i), rowElements.get(i + 1)));
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
