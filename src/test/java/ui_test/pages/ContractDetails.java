package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.HashMap;


public class ContractDetails extends GenericInputPage implements IWebInteract, IFactoryPage {
    private PageElements elements;

    public ContractDetails(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void contractEffectiveDate(HashMap<String, String> hmap) {
        String date;
        if (hmap.get("Contract Effective Date").equals("today")) {
            date = CommonMethods.todaysDate();
        } else {
            date = CommonMethods.formatDate(hmap.get("Contract Effective Date"));
        }
        waitForPageLoad(60);
        Assert.assertTrue( sendKeys("Contract Effective Date", this.elements.contractEffectiveDate, date));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }


    public void enterPhyConNumber(HashMap<String, String> hmap) {
        if (hmap.containsKey("Phycon")) {
            Assert.assertTrue( sendKeys("PhyConNumber", this.elements.phyConNumber, hmap.get("Phycon")));
        }
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void setSpecificEffectiveDate(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue( click("Set Specific Effective Date", selectContractDetails(hmap.get("Set Specific Effective Date"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    private WebElement selectContractDetails(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//input[contains(@name,'PhyCon')]")
        private WebElement phyConNumber;
        @FindBy(xpath = "//input[contains(@id,'Effective')]")
        private WebElement contractEffectiveDate;

        private String message = "//div[contains(@class,'DialogBox')]";
        public PageElements(SearchContext context) {
            super(context);
        }
    }
}

