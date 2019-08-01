package ui_test.page.cmd.transaction.action.row;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;

public class ListPCPActionRow extends ArrayList<PCPActionRow> {
    private static final Logger log = LoggerFactory.getLogger(ListPCPActionRow.class);

    /*
    CONSTRUCTOR
    */

    public ListPCPActionRow() {
    }

    public ListPCPActionRow(WebDriver driver, List<WebElement> rows) {
        for (int i = 0; i < rows.size(); i++) {
            this.add(new PCPActionRow(driver, rows.get(i)));
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
