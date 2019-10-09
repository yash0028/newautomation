package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class HBPsRedDoor
{
    private WebDriver driver;

    public HBPsRedDoor(WebDriver driver) {
        this.driver = driver;
    }

    public void selectRedDoor() throws InterruptedException {
        String hbp = "No";

        WebElement hbpSelect = driver.findElement(By.xpath("//input[contains(@value,'"+hbp+"')]"));
        Thread.sleep(2000);
        hbpSelect.click();

        Thread.sleep(1000);

        commonMethod.next();
    }
}
