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
import java.util.List;

public class Amendements extends GenericInputPage {

    private PageElements elements;

    public Amendements(WebDriver driver) {
        this.elements = new PageElements(driver);
    }

    public void authorAmendments(HashMap<String, String> hmap) {
        click("Amendments", selectAmendments(hmap.get("Amendments")));
        //waitForElementToDissapear(getDriver(),waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void typeOfAmendmentsNeeded(HashMap<String, String> hmap) {
        waitForElementToDissapear(getDriver(), waitForElementToAppear(getDriver(), By.xpath(elements.message)));
        Assert.assertTrue(click("Type of Amendment needed in Amendments Page", selectAmendments(hmap.get("Amendment Type Needed"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());

    }

    public void typeOfContractApplied(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Open Dropdown", elements.clickOnSearch));
        Assert.assertTrue(sendKeys("Select Type of Contract", elements.clickOnBar, hmap.get("Contract Type in Amendments")));
        pause(1);
        Assert.assertTrue(click("Click Type of Amendments", elements.dropdown_selection.get(0)));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public WebElement selectAmendments(String Name) {
        return findElement(getDriver(), new String[]{"xpath", "//input[contains(@value, '" + Name + "')]"});
    }

    public void amendPaymentAppendix(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Amend Payment Appendix", selectAmendments(hmap.get("Amend Payment Appendix"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void selectUnilateralContract(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Select Unilateral Contract", selectAmendments(hmap.get("Unilateral Contract"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void selectproviderTypeInAmendments(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Select Provider Type in Amendments", selectAmendments(hmap.get("Contract Type in Amendments"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    public void enterOptOut(HashMap<String, String> hmap) {
        Assert.assertTrue(click("Select OptOut option in Amendments", selectAmendments(hmap.get("OptOut"))));
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());


    }

    public void enterOptOutadress(HashMap<String, String> hmap) {
        sendKeys("textbox", this.elements.optadress, hmap.get("Opt_adress"));
        pause(1);
        waitForPageLoad(60);

        sendKeys("textbox", this.elements.optcity, hmap.get("Opt_city"));
        pause(1);
        waitForPageLoad(60);

        click("dropdown open", this.elements.optstatedropdown);
        pause(1);
        waitForPageLoad(60);
        //Enter search term
       sendKeys("dropdown textbox", this.elements.optstatetext, hmap.get("statecode"));
       pause(1);
       //System.out.println(getDriver().getPageSource());
       waitForPageLoad(60);

        //Click index option
       WebElement EL = selectOptionForstate(hmap.get("statecode"));
        EL.click();

        sendKeys("textbox", this.elements.optzipcode, hmap.get("Opt_zipcode"));
        pause(1);
        waitForPageLoad(60);


        if(hmap.containsKey("Name_Opt_Out")) {
            sendKeys("Name to be provided Opt Out", this.elements.optNameIL, hmap.get("Name_Opt_Out"));
            Assert.assertTrue(clickNext());
            Assert.assertTrue(waitForPageLoad());
        }


    }

    public WebElement selectOptionForstate(String answer) {
        return findElement(getDriver(), new String[]{"xpath", "//li[contains(text(),'"+answer+"')]"});

    }

    public void enterOptOutadressIL(HashMap<String, String> hmap)
    {

        sendKeys("textbox", this.elements.optAddrIL, hmap.get("Opt_adress"));
        pause(1);
        waitForPageLoad(60);

        sendKeys("textbox", this.elements.optcityIL, hmap.get("Opt_city"));
        pause(1);
        waitForPageLoad(60);

        click("dropdown open", this.elements.optstatedropdownIL);
        pause(1);
        waitForPageLoad(60);
        //Enter search term
        sendKeys("dropdown textbox", this.elements.optstatetext, hmap.get("statecode"));
        pause(1);
        waitForPageLoad(60);
        //Click index option
        WebElement EL= selectOptionForstate(hmap.get("statecode"));
        EL.click();

        sendKeys("textbox", this.elements.optzipcodeIL, hmap.get("Opt_zipcode"));
        pause(1);
        waitForPageLoad(60);

        if(hmap.containsKey("Name_Opt_Out"))
        {
            sendKeys("Name to be provided Opt Out", this.elements.optNameIL, hmap.get("Name_Opt_Out"));

        }

        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

    private static class PageElements extends AbstractPageElements {


        @FindBy(xpath="//b[contains(text(),'Address for Notice:')]/../../../../div[@class='AnswerAboveAndBelow interview-item__answer']/span/div/input")
        private WebElement optAddrIL;
        @FindBy(xpath = "//b[contains(text(),'Notice City:')]/../../../../div[@class='AnswerAboveAndBelow interview-item__answer']/span/div/input")
        private WebElement optcityIL;
        @FindBy(xpath = "//b[contains(text(),'Notice Zip Code:')]/../../../../div[@class='AnswerAboveAndBelow interview-item__answer']/span/div/input")
        private WebElement optzipcodeIL;
        @FindBy(xpath = "//b[contains(text(),'Notice State:')]/../../../../div[@class='AnswerAboveAndBelow interview-item__answer']/div//span/span[@class='select2-selection__arrow']")
        private WebElement optstatedropdownIL;
        @FindBy(xpath = "//b[contains(text(),'Name to whom this notice should be provided:')]/../../../../div[@class='AnswerAboveAndBelow interview-item__answer']/span/div/input")
        private WebElement optNameIL;

        @FindBy(xpath = "//b[contains(text(),'Address for Notice:')]/../../../../div[@class='AnswerAboveAndBelow interview-item__answer']/span/div/input")
        private WebElement optadress;

        @FindBy(xpath = "//b[contains(text(),'Notice City:')]/../../../../div[@class='AnswerAboveAndBelow interview-item__answer']/span/div/input")
        private WebElement optcity;

        @FindBy(xpath = "//b[contains(text(),'Notice Zip Code:')]/../../../../div[@class='AnswerAboveAndBelow interview-item__answer']/span/div/input")
        private WebElement optzipcode;

        @FindBy(xpath = "//b[contains(text(),'Notice State:')]/../../../../div[@class='AnswerAboveAndBelow interview-item__answer']/div//span/span[@class='select2-selection__arrow']")
        private WebElement optstatedropdown;

        @FindBy(xpath = "//input[@class='select2-search__field']")
        private WebElement optstatetext;

        @FindBy(xpath = "//span[@role='combobox']")
        private WebElement clickOnSearch;

        @FindBy(xpath = "//input[@type='search']")
        private WebElement clickOnBar;

        @FindBy(xpath = "//span[@class='select2-results']//li")
        public List<WebElement> dropdown_selection;

        private String message = "//div[contains(@class,'DialogBox')]";

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
