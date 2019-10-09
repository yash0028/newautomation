package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class GroupSummary {
    private final WebDriver driver;

    public GroupSummary(WebDriver driver)
    {
        this.driver=driver;
    }

    public void readInterviewSummary() throws InterruptedException {
        Thread.sleep(2000);
        WebElement next=driver.findElement(By.xpath("//*[@id=\"previewInstructions\"]/div/div/form/div/div[1]/div[1]/button"));
        Thread.sleep(2000);
        next.click();

    }
}
