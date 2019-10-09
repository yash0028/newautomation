package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class WizardComplete
{
    private WebDriver driver;

    public WizardComplete(WebDriver driver)
    {
        this.driver=driver;
    }

    public void completeWizard() throws InterruptedException {
        WebElement nextButton=driver.findElement(By.xpath("/html/body/div[3]/div[2]/div[1]/div[1]/div[1]/a"));
        Thread.sleep(2000);
        nextButton.click();
    }

}
