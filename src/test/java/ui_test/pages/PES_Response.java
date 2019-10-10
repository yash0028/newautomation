package ui_test.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.util.IWebInteract;

import java.util.HashMap;
import java.util.List;

public class PES_Response implements IWebInteract {
    private WebDriver driver;

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    public PES_Response(WebDriver driver)
    {
        this.driver=driver;
    }

    String test;

    public WebElement counterPartyName(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }



    void selectCounterParty(HashMap<String, String> hmap) throws InterruptedException
    {
        setCheckBox("CouterParty Name checkbox", counterPartyName(hmap.get("CounterPartyName")), true);
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
