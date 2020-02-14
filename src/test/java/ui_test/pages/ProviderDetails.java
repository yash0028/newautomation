package ui_test.pages;

import org.junit.Assert;
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

    public ProviderDetails(WebDriver driver) {
        this.elements = new PageElements(driver);
    }


    public void selectEntry(HashMap<String, String> data) {
        text_dropdown(data.get("Market Number"));
        String Question = "Select the State this Market Number applies to";
        chooseMarketType(Question, data);
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void text_dropdown(String answer) {
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

    private void selectOption(String answer) {
        click("MarketNumber", selectOptionForMarketNumber(answer));
        waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));

    }

    public void previewProfile(HashMap<String, String> hmap) {
        String Question = "Select the State this Market Number applies to";
        waitForPageLoad(60);
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.topic))) {
            if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.tierIndicator))) {
                hmap.put("Tier", elements.tier.getAttribute("value"));
            }
            //MGA WEST OR / MGA NORTHEAST VA
            chooseMarketType(Question, hmap);

            //Select the Arbitration County:*  choose the first answer.
            Question = "Select the Arbitration County";
            if(CommonMethods.isElementPresent(getDriver(),By.xpath(getQuestion(Question)))){
                Assert.assertTrue(click(Question,getArbitrationCounty(Question)));
                waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
            }

            //Select the Territory this Market Number applies to.
            Question = "Select the Territory this Market Number applies to";
            if(CommonMethods.isElementPresent(getDriver(),By.xpath(getQuestion(Question)))){
                Assert.assertTrue(click(Question,getMarketTypeElem(Question,hmap.get("Select the State this Market Number applies to"))));
                waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
            }

            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
        //Skip Duplicate Tin Page
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.duplicateTIN))) {
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }

    }

    public void chooseMarketType(String Question, HashMap<String, String> hmap) {
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(getMarketType(Question)))) {
            Assert.assertTrue(click(Question, getMarketTypeElem(Question, hmap.get(Question))));
        }
    }

    public void amendmentType(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Amendmentment Type in Provider Details", selectProviderDetails(hmap.get("Amendment Type"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    private WebElement selectProviderDetails(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }


    public WebElement selectOptionForMarketNumber(String answer) {
        return findElement(getDriver(), new String[]{"xpath", "//li[contains(text(),'" + answer + "'" + ")]"});
    }

    public String getMarketType(String question) {
        return "//label/b[contains(.,'" + question + "')]";
    }

    public WebElement getMarketTypeElem(String question, String MarketType) {
        return findElement(getDriver(), new String[]{"xpath", "//label/b[contains(.,'" + question + "')]/../../../..//input[contains(@value,'" + MarketType + "')]"});
    }
    public WebElement getArbitrationCounty(String question) {
        return findElement(getDriver(), new String[]{"xpath", "//label/b[contains(.,'"+question+"')]/../../../..//input[contains(@type,'radio')]"});
    }
    public String getQuestion(String question) {
        return "//label/b[contains(.,'"+question+"')]";
    }
    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//span[@class='select2-selection__arrow']")
        private WebElement dropdown_open;
        @FindBy(xpath = "//input[@class='select2-search__field']")
        private WebElement dropdown_textbox;
        @FindBy(xpath = "//input[contains(@name,'TierIndicator')]")
        private WebElement tier;

        private String tierIndicator = "//input[contains(@name,'TierIndicator')]";
        private String duplicateTIN = "//label[contains(.,'duplicate check failed')]/b";
        private String message = "//div[contains(@class,'DialogBox')]";
        private String topic = "//div[contains(@class,'topicArea')]/p[contains(.,'Provider Details')]";


        public PageElements(SearchContext context) {
            super(context);
        }
    }

}
