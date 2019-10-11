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


    public WebElement counterPartyName(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }

    public WebElement counterPartyAddress(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }

    public WebElement counterPartyApproach(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }



    public void selectCounterParty(HashMap<String, String> hmap)
    {
        pause(3);
        setCheckBox("CouterParty Name checkbox", counterPartyName(hmap.get("CounterPartyName")), true);
        assert clickNext();
        assert waitForPageLoad();
    }

    public void selectCounterPartyAddress(HashMap<String, String> hmap)  {
        pause(3);
        setCheckBox("CounterParty address checkbox",counterPartyAddress(hmap.get("CounterPartyAddress")),true);
        assert clickNext();
        assert waitForPageLoad();
    }

   public void specifyApproachForCounter(HashMap<String, String> hmap)  {
        pause(3);
        setCheckBox("Approach for Counter Party",counterPartyApproach(hmap.get("CounterPartyApproach")),true);
        assert clickNext();
        assert waitForPageLoad();
    }
}
