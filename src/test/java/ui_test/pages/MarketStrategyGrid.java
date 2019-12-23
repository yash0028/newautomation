package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;

public class MarketStrategyGrid extends GenericInputPage {
    public MarketStrategyGrid(WebDriver driver) {
    }

    public void marketStrategyGridCheck() {
    	    	
    	//Handle new screen - temp fix to execute in dev environemnt
    	pause(2);
        if (CommonMethods.isElementPresent(getDriver(),By.xpath("//b[.='Does the counterparty to this agreement have a D/B/A?']")))
        {
        	Assert.assertTrue(click("No", getDriver().findElement(By.xpath("//input[contains(@value, 'No')]"))));
        	Assert.assertTrue(clickNext());
        }
        
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
        pause(2);
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }
    
}
