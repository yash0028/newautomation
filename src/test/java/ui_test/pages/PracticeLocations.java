package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;


public class PracticeLocations
{
    private final WebDriver driver;

    public PracticeLocations(WebDriver driver)
    {
        this.driver=driver;
    }

    public void selectLocation() throws InterruptedException {
        String conLoc = "Y";
        Thread.sleep(2000);
        WebElement conLocSelection = driver.findElement(By.xpath("//input[contains(@value,'"+conLoc+"')]"));
        conLocSelection.click();
        Thread.sleep(2000);
        commonMethod.next();

    }
}
