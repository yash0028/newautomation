package ui_test.pages;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;

public class MarketStrategyGrid extends GenericInputPage {
    public MarketStrategyGrid(WebDriver driver) {
        super(driver);
    }

    public void marketStrategyGridCheck() throws InterruptedException {
        assert clickNext();
        assert waitForPageLoad();

        assert clickNext();
        assert waitForPageLoad();
    }
}
