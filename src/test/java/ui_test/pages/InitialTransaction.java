package ui_test.pages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class InitialTransaction extends GenericInputPage {
    private PageElements elements;
    public InitialTransaction(WebDriver driver) {
        super(driver);
        this.elements = new PageElements(driver);
    }
    public void initialTransaction(HashMap<String,String> hmap){
        assert click("Start Process",this.elements.startProcess);
        pause(1);
        waitForPageLoad(60);
        assert click("Select Initial Transaction Type", clickInitialTransactionType(hmap.get("Initial Transaction")));
        waitForPageLoad(60);
        assert click("Start Process Button",this.elements.startProcessButton);
        assert waitForPageLoad();

    }
    public WebElement clickInitialTransactionType(String Name){
        return findElement(getDriver(), new String[]{"xpath","//mat-option/span[contains(.,'"+Name+"')]"});
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//mat-select[@id='mat-select-0']/div/div")
        private WebElement startProcess;
        @FindBy(xpath = "//button[@id='button-start']/span")
        private WebElement startProcessButton;


        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
