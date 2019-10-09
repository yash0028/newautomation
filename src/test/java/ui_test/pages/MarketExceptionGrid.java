package ui_test.pages;

import org.openqa.selenium.WebDriver;

public class MarketExceptionGrid
{
    private final WebDriver driver;

    public MarketExceptionGrid(WebDriver driver)
    {
        this.driver=driver;
    }

    public void previewMarketDetails() throws InterruptedException {
        Thread.sleep(1000);
        commonMethod.next();
    }
}

