package ui_test.page.cmd.transaction.action.row;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;

public class ListCMOActionRow extends ArrayList<CMOActionRow> {
    private static final Logger log = LoggerFactory.getLogger(ListCMOActionRow.class);

    /*
    CONSTRUCTOR
    */

    public ListCMOActionRow() {
    }

    public ListCMOActionRow(WebDriver driver, List<WebElement> rowElements) {
        for (int i = 0; i < rowElements.size(); i += 2) {
            this.add(new CMOActionRow(driver, rowElements.get(i), rowElements.get(i + 1)));
        }
    }

    public ListCMOActionRow(WebDriver driver, List<WebElement> elementRows, List<WebElement> detailRows) {
        for (int i = 0; i < elementRows.size(); i++) {
            this.add(new CMOActionRow(driver, elementRows.get(i), detailRows.get(i)));
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
