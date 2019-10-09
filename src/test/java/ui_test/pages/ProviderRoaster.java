package ui_test.pages;

import org.openqa.selenium.WebDriver;

public class ProviderRoaster
{
    private WebDriver driver;
    public ProviderRoaster(WebDriver driver)
    {
        this.driver=driver;
    }

    public void roasterAction() throws InterruptedException {
        Thread.sleep(2000);
        commonMethod.next();

    }



}
