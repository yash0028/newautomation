package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;

public class MarketStrategyGrid extends GenericInputPage {
    public MarketStrategyGrid(WebDriver driver) {
    }

    public void marketStrategyGridCheck() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
        pause(2);
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }
}
