package ui_test.pages;

import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IWebInteract;

public class Warning extends GenericInputPage {
    private PageElements elements;

    public Warning(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void acknowledgment() {
        for(WebElement ack :elements.acknowledge){
            Assert.assertTrue(setCheckBox("Check acknowledgment", ack, true));
            waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

        waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        String Question = "Do Appeals rights apply to this contract";
        if(CommonMethods.isElementPresent(getDriver(), By.xpath(getQn(Question)))){
            IWebInteract.log.info("Question: {}",Question);
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
    }

    public void warningMakeCorrection() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }
    public String getQn(String question) {
        return "//label/b[contains(.,'" + question + "')]";
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//input[contains(@value,'acknowledged')]")
        private List<WebElement> acknowledge;

        private String message = "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
