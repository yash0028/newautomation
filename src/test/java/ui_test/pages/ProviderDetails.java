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
        waitForPageLoad(60);
        //Enter search term
        sendKeys("dropdown textbox", this.elements.dropdown_textbox, answer);
        pause(1);
        waitForPageLoad(60);
        //Click index option
        selectOption(answer);
    }

    private void selectOption(String answer)  {
        click("MarketNumber",selectOptionForMarketNumber(answer));
        //waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        assert clickNext();
        assert waitForPageLoad();

    }
    public void previewProfile(HashMap<String,String>hmap) {
        String tier;
        waitForPageLoad(60);
        if(CommonMethods.isElementPresent(getDriver(),By.xpath(elements.tierIndicator))){
            tier = elements.tier.getAttribute("value");
            hmap.put("Tier",tier);
        }
        assert clickNext();
        assert waitForPageLoad();

        if(CommonMethods.isElementPresent(getDriver(),By.xpath(elements.duplicateTIN)))
        {
            assert clickNext();
            assert waitForPageLoad();
        }

    }

    public void amendmentType(HashMap<String, String> hmap)
    {
        assert click("Amendmentment Type in Provider Details",selectProviderDetails(hmap.get("Amendment Type")));
        assert clickNext();
        assert waitForPageLoad();
    }

    private WebElement selectProviderDetails(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
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
        @FindBy(xpath = "//input[contains(@name,'TierIndicator')]")
        private WebElement tier;


        private String tierIndicator = "//input[contains(@name,'TierIndicator')]";
        private String duplicateTIN = "//label[contains(.,'Counterparty TIN duplicate check failed')]/b";
        private String message= "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }

}
