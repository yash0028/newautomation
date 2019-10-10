package ui_test.pages;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;

public class MarketExceptionGrid extends GenericInputPage
{
    public MarketExceptionGrid(WebDriver driver)
    {
        super(driver);
    }

    public void previewMarketDetails(){
        assert clickNext();
        assert waitForPageLoad();
    }
}

