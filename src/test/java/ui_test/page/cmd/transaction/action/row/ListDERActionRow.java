package ui_test.page.cmd.transaction.action.row;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;

public class ListDERActionRow extends ArrayList<DERActionRow> {
    private static final Logger log = LoggerFactory.getLogger(ListDERActionRow.class);

    /*
    CONSTRUCTOR
    */

    public ListDERActionRow() {
    }

    public ListDERActionRow(WebDriver driver, List<WebElement> rowElements) {
        for (int i = 0; i < rowElements.size(); i += 2) {
            this.add(new DERActionRow(driver, rowElements.get(i), rowElements.get(i + 1)));
        }
    }

    public ListDERActionRow(WebDriver driver, List<WebElement> elementRows, List<WebElement> detailRows) {
        for (int i = 0; i < elementRows.size(); i++) {
            this.add(new DERActionRow(driver, elementRows.get(i), detailRows.get(i)));
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
