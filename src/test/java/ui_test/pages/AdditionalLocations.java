package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class AdditionalLocations
{
    private final WebDriver driver;

    public AdditionalLocations(WebDriver driver)
    {
        this.driver=driver;
    }

    public void selectAdditionalLocations() throws InterruptedException {
        String addLoc="None";
        WebElement selectLoc=driver.findElement(By.xpath("//input[contains(@value,'"+addLoc+"')]"));
        Thread.sleep(2000);
        selectLoc.click();
        Thread.sleep(2000);
        commonMethod.next();
    }

}
