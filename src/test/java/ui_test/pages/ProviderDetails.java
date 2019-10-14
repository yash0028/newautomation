package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class ProviderDetails extends GenericInputPage {

    private PageElements elements;
    public ProviderDetails(WebDriver driver){
        super(driver);
        this.elements = new PageElements(driver);
    }


    public void selectEntry(HashMap<String,String> data)
    {
     text_dropdown(data.get("Market Number"));
    }

    public void text_dropdown(String answer)  {
        //Open dropdown search
        click("dropdown open", this.elements.dropdown_open);
        pause(1);
        //Enter search term
        sendKeys("dropdown textbox", this.elements.dropdown_textbox, answer);
        pause(1);
        //Click index option
        selectOption(answer);
    }

    public WebElement selectOptionForMarketNumber(String answer){
        return findElement(getDriver(), new String[]{"xpath","//li[contains(text(),'"+answer+"'" + ")]"});
    }


    private void selectOption(String answer)  {
        click("MarketNumber",selectOptionForMarketNumber(answer));
        assert clickNext();
        assert waitForPageLoad();

    }


    public void previewProfile() {
        assert clickNext();
        assert waitForPageLoad();

        if(isElementPresent())
        {
            assert clickNext();
            assert waitForPageLoad();
        }

    }
    public boolean isElementPresent() {
        try {
            driver.findElement(By.xpath("//b[contains(text(),'Counterparty TIN duplicate check failed')]"));
            return true;
        } catch (org.openqa.selenium.NoSuchElementException e) {
            return false;
        }
    }

    private static class PageElements  extends AbstractPageElements
    {
        @FindBy(xpath = "//span[@class='select2-selection__arrow']")
        private WebElement dropdown_open;
        @FindBy(xpath = "//input[@class='select2-search__field']")
        public WebElement dropdown_textbox;


        public PageElements(SearchContext context) {
            super(context);
        }
    }

}
