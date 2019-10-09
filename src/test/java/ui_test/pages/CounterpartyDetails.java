package ui_test.pages;

import org.openqa.selenium.WebDriver;

public class CounterpartyDetails
{
    private final WebDriver driver;

    public CounterpartyDetails(WebDriver driver)
    {
        this.driver=driver;
    }

    public void counterpartyTINDuplicateCheck() throws InterruptedException
    {
        Thread.sleep(2000);
        commonMethod.next();
    }
}
