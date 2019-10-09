package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class RegulatoryAppendices
{
    private final WebDriver driver;

    public RegulatoryAppendices(WebDriver driver)
    {
        this.driver=driver;
    }

    public void selectRegulatoryAppendix() throws InterruptedException {
        String regulatoryAppendix="ACO Medicare Advantage Regulatory Appendix";
        WebElement clickOnBar=driver.findElement(By.xpath("//*[@id=\"MCQAnswerBlock244\"]/span[1]/span[1]/span/ul/li/input"));
        Thread.sleep(2000);
        clickOnBar.click();
        Thread.sleep(2000);
        WebElement regulatory=driver.findElement(By.xpath("//li[contains(text(),'"+regulatoryAppendix+"')]"));
        Thread.sleep(2000);
        regulatory.click();

        commonMethod.next();
    }
}
