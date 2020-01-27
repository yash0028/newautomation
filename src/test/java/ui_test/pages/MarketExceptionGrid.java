package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IWebInteract;

import java.util.HashMap;

public class MarketExceptionGrid extends GenericInputPage {
    private PageElements elements;

    public MarketExceptionGrid(WebDriver driver) {
        elements = new PageElements(driver);
    }

    public void previewMarketDetails(HashMap<String, String> hmap) {
        //waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

        waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        String Question = "What is the fee schedule ID for Erickson Advantage Medicare Advantage";
        if(CommonMethods.isElementPresent(getDriver(), By.xpath(getQn(Question)))){
            IWebInteract.log.info("Question : {}",Question);
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }

        waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Question = "Select the payment appendix whose increases/decreases have been negotiated for the initial";
        if(CommonMethods.isElementPresent(getDriver(), By.xpath(getQn(Question)))){
            IWebInteract.log.info("Question : {}",Question);
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }

        waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Question = "Does the counterparty to this agreement have a D/B/A";
        if(CommonMethods.isElementPresent(getDriver(), By.xpath(getQn(Question)))){
            IWebInteract.log.info("Question : {}",Question);
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
    }

    public void checkForDuplicate(HashMap<String, String> hmap) {
    	 waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
         //if contract details template appear
         if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.topic))) {
             String date;
             if (hmap.get("Contract Effective Date").equals("today")) {
                 date = CommonMethods.todaysDate();
             } else {
                 date = CommonMethods.formatDate(hmap.get("Contract Effective Date"));
             }
             waitForPageLoad(60);
             Assert.assertTrue(sendKeys("Contract Effective Date", this.elements.contractEffectiveDate, date));

             Assert.assertTrue(clickNext());
             Assert.assertTrue(waitForPageLoad());
         }
         
    	waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        if (CommonMethods.isElementPresent(getDriver(), By.xpath(elements.duplicateTIN))) {
            IWebInteract.log.info("Counterparty MPIN-TIN duplicate check failed");
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
    }

    public void chooseTask(HashMap<String, String> hmap, String Task) {
        Assert.assertTrue(click("Select Task", clickTask(hmap.get(Task))));
        //waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public WebElement clickTask(String Name) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value,'" + Name + "')]"});
    }
    public String getQn(String question) {
        return "//label/b[contains(.,'" + question + "')]";
    }
    private static class PageElements extends AbstractPageElements {

        private String message = "//div[contains(@class,'DialogBox')]";
        private String duplicateTIN = "//label[contains(.,'duplicate check failed')]/b";
        private String topic = "//div[contains(@class,'topicArea')]/p[contains(.,'Contract Details')]";
        @FindBy(xpath = "//input[contains(@id,'Effective')]")
        private WebElement contractEffectiveDate;
        public PageElements(SearchContext context) {
            super(context);
        }
    }


}