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

    private void selectOption(String answer)  {
        click("MarketNumber",selectOptionForMarketNumber(answer));
        waitForElementToDissapear(driver,waitForElementToPresent(driver, By.xpath(elements.message)));
        assert clickNext();
        assert waitForPageLoad();

    }

    public void previewProfile() {
        assert clickNext();
        assert waitForPageLoad();

        if(CommonMethods.isElementPresent(driver,By.xpath(elements.duplicateTIN)))
        {
            assert clickNext();
            assert waitForPageLoad();
        }

    }
    public WebElement selectOptionForMarketNumber(String answer){
        return findElement(getDriver(), new String[]{"xpath","//li[contains(text(),'"+answer+"'" + ")]"});
    }
    private static class PageElements  extends AbstractPageElements
    {
        @FindBy(xpath = "//span[@class='select2-selection__arrow']")
        private WebElement dropdown_open;
        @FindBy(xpath = "//input[@class='select2-search__field']")
        private WebElement dropdown_textbox;

        private String duplicateTIN = "//label[contains(.,'Counterparty TIN duplicate check failed')]/b";
        private String message= "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }

}
