package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.util.HashMap;

public class DocumentSelection
{
    private final WebDriver driver;

    public DocumentSelection(WebDriver driver)
    {
        this.driver=driver;
    }

    public void selectDocumentType(HashMap<String,String> data) throws InterruptedException {
        String docType="SPGA";
        System.out.println(docType);
        Thread.sleep(2000);
        WebElement docSelection=driver.findElement(By.xpath("//input[contains(@value,'"+docType+"')]"));
        Thread.sleep(1000);
        System.out.println("cLICKING"+docSelection);

        docSelection.click();

        System.out.println("cLICKED");
        Thread.sleep(5000);
        commonMethod.next();



    }
}
