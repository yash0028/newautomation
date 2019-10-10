package ui_test.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.IWebInteract;

import java.util.HashMap;
import java.util.List;

public class PES_Response extends GenericInputPage {




    public PES_Response(WebDriver driver)
    {
        super(driver);

    }

    String test;

    public WebElement counterPartyName(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }

    public WebElement counterPartyAddress(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }

    public WebElement counterPartyApproach(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }



    void selectCounterParty(HashMap<String, String> hmap) throws InterruptedException
    {
        setCheckBox("CouterParty Name checkbox", counterPartyName(hmap.get("CounterPartyName")), true);
        assert clickNext();
        assert waitForPageLoad();
    }

    void selectCounterPartyAddress(HashMap<String, String> hmap) throws InterruptedException {
        setCheckBox("CounterParty address checkbox",counterPartyAddress(hmap.get("CounterPartyAddress")),true);
        assert clickNext();
        assert waitForPageLoad();
    }

    void specifyApproachForCounter(HashMap<String, String> hmap) throws InterruptedException {
        setCheckBox("CounterParty address checkbox",counterPartyApproach(hmap.get("CounterPartyApproach")),true);
        assert clickNext();
        assert waitForPageLoad();
    }
}
