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

public class AmendmentSelection extends GenericInputPage {
    private PageElements elements;

    public AmendmentSelection(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void selectAmendmentTobeUsed(HashMap<String, String> hmap) {
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
        //given 300 for testing purpose
        for(int count = 0 ; count<300; count++){
            if(CommonMethods.isElementPresent(getDriver(),By.xpath(getQuestionXpath("Please select the amendment to be used")))){
                break;
            }
            pause(1);
        }
        Assert.assertTrue(click("Amendment Selection", selectAmendments(hmap.get("Amendment Selection"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void amendmentNeeded(HashMap<String, String> hmap) {
        if(CommonMethods.isElementPresent(getDriver(),By.xpath(getQuestionXpath("Which of the following amendments is needed")))){
            Assert.assertTrue(click("Select Amendments Needed", selectAmendments(hmap.get("Amendment Needed"))));
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }
    }

    private WebElement selectAmendments(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }
    public WebElement getQuestionElem(String question) {
        return findElement(getDriver(), new String[]{"xpath", "//label/b[contains(.,'" + question + "')]"});

    }
    public String getQuestionXpath(String question) {
        return "//label/b[contains(.,'" + question + "')]";
    }


    private static class PageElements extends AbstractPageElements {
        private String message = "//div[contains(@class,'DialogBox')]";
        private String topic = "//div[contains(@class,'topicArea')]/p[contains(.,'Contract Details')]";
        @FindBy(xpath = "//input[contains(@id,'Effective')]")
        private WebElement contractEffectiveDate;

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
