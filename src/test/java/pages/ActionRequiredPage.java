package pages;

import org.openqa.selenium.WebElement;

import java.util.List;

import static utils.SeleniumHelper.findElement;
import static utils.SeleniumHelper.findElements;


/**
 * Created by dtimaul on 9/26/18.
 */
public class ActionRequiredPage {

    // Get web element of xpath for a particular row in the table, under the Site column.
    public WebElement getTableSite(int index) {
        return findElement("xpath", "xpath goes here" + index);
    }

    // Get web element of xpath for a particular row in the table, under the State column.
    public WebElement getTableState(int index) {
        return findElement("xpath", "xpath goes here"  + index);
    }

    public WebElement getTableMarket(int index) {
        return findElement("xpath", "xpath goes here"  + index);
    }

    public WebElement getTableUser(int index) {
        return findElement("xpath", "xpath goes here"  + index);
    }

    public WebElement getTableContractID(int index) {
        return findElement("xpath", "xpath goes here"  + index);
    }

    public WebElement getTablePoductGroupName(int index) {
        return findElement("xpath", "xpath goes here"  + index);
    }

    public WebElement getTablePaperType(int index) {
        return findElement("xpath", "xpath goes here" + index);
    }

    public WebElement getTableContractName(int index) {
        return findElement("xpath", "xpath goes here" + index);
    }

    // Get web element of xpath for a particular row in the table, under the status column.
    public WebElement getTableStatus(int index) {
        return findElement("xpath", "xpath goes here" + index);
    }

    public WebElement getTableActionRequired(int index) {
        return findElement("xpath", "xpath goes here" + index);
    }

    public WebElement getTableDate(int index) {
        return findElement("xpath", "xpath goes here" + index);
    }

    // Return a list of WebElements containing the rows in the table on the action required page
    public List<WebElement> getTableRows() {
        return findElements("xpath", "//table[@class='mat-table']/tr");
    }



}
