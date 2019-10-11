package ui_test.pages;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;

public class MarketStrategyGrid extends GenericInputPage {
    public MarketStrategyGrid(WebDriver driver) {
        super(driver);
    }

    public void marketStrategyGridCheck() {
        assert clickNext();
        assert waitForPageLoad();

        pause(2);
        assert clickNext();
        assert waitForPageLoad();
    }
}
