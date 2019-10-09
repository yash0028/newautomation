package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class commonMethod
{
    private static WebDriver driver;
    public commonMethod(WebDriver driver)
    {
        this.driver=driver;
    }
    public static void next() throws InterruptedException {
        Thread.sleep(4000);
        driver.findElement(By.xpath("//*[@id=\"interviewArea\"]/form/div[2]/div/div[1]/div[1]/button")).click();

    }
}
