package ui_test.pages;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;

public class MarketStrategyGrid extends GenericInputPage {
    public MarketStrategyGrid(WebDriver driver) {
    }

    public void marketStrategyGridCheck() {
         clickNext();
         waitForPageLoad();
        pause(2);
         clickNext();
         waitForPageLoad();
    }
}
