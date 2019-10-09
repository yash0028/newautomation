package ui_test.pages;

import org.openqa.selenium.WebDriver;

public class MarketStrategyGrid {
    private WebDriver driver;

    public MarketStrategyGrid(WebDriver driver) {
        this.driver = driver;
    }

    public void marketStrategyGridCheck() throws InterruptedException {
        commonMethod.next();

        Thread.sleep(2000);
        commonMethod.next();
    }
}
