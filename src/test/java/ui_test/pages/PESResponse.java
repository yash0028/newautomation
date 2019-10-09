package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class PESResponse {
    private WebDriver driver;
    public PESResponse(WebDriver driver)
    {
        this.driver=driver;
    }

    public void selectEntry() throws InterruptedException {
//        Thread.sleep(5000);
//        driver.findElement(By.xpath("//input[@type='checkbox']")).click();
//        Thread.sleep(3000);
//        driver.findElement(By.xpath("//input[@type='checkbox']")).click();
////        checkBox.get(0).click();
//        Thread.sleep(5000);
//         driver.findElement(By.xpath("//input[@type='radio']")).click();

        selectCounterParty();

        Thread.sleep(2000);
        selectCounterPartyAddress();

        Thread.sleep(2000);
        specifyApproachForCounter();


    }

    void selectCounterParty() throws InterruptedException
    {
        SelectTheCounterParty selectTheCounterParty=new SelectTheCounterParty(driver);
        selectTheCounterParty.selectEntry();
        commonMethod.next();
    }

    void selectCounterPartyAddress() throws InterruptedException {
        SelectCounterpartyAddress selectCounterpartyAddress = new SelectCounterpartyAddress(driver);
        selectCounterpartyAddress.selectEntry();
        commonMethod.next();
    }

    void specifyApproachForCounter() throws InterruptedException {
        SpecifyApproachForCounter specifyApproachForCounter = new SpecifyApproachForCounter(driver);
        specifyApproachForCounter.selectEntry();
        commonMethod.next();
    }
}

class SpecifyApproachForCounter {
    private WebDriver driver;

    public SpecifyApproachForCounter(WebDriver driver) {
        this.driver = driver;
    }

    public void selectEntry() throws InterruptedException{
        driver.findElement(By.xpath("//input[@type='radio']")).click();
    }
}

class SelectCounterpartyAddress {
    private WebDriver driver;

    public SelectCounterpartyAddress(WebDriver driver){
        this.driver = driver;
    }

    public void selectEntry() throws InterruptedException{
        driver.findElement(By.xpath("//input[@type='radio']")).click();
    }

}

class SelectTheCounterParty {
    private WebDriver driver;

    public SelectTheCounterParty(WebDriver driver){
        this.driver = driver;
    }
        public void selectEntry()
        {

        }


}

