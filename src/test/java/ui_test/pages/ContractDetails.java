package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class ContractDetails
{
    private final WebDriver driver;

    public ContractDetails(WebDriver driver)
    {
        this.driver=driver;
    }

    public void enterData(String ans) throws InterruptedException {
        enterPhyConGDNumber(ans);
    }

    private void enterPhyConGDNumber(String ans) throws InterruptedException {
        WebElement phyconIdTextBox=driver.findElement(By.xpath("//*[@id=\"xri-PhyCon_Number_UTQ-UTQField_227\"]"));
        Thread.sleep(2000);
        phyconIdTextBox.sendKeys(ans);
        Thread.sleep(2000);
        commonMethod.next();
    }
}
