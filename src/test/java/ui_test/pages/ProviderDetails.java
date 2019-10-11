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


        System.out.println("Answer is " + answer);
        System.out.println("Inside text_dropdown");


        if (elements.dropdown_open == null) {
//            return true;
            System.out.println("I am true");
        }

        elements.dropdown_open.click();

        System.out.println("dropdown_open click");

        selectOption(answer);
        System.out.println("send key executed");


    }

    public WebElement selectOptionForMarketNumber(String answer){
        return findElement(getDriver(), new String[]{"xpath","//li[contains(text(),'"+answer+"'" + ")]"});
    }


    private void selectOption(String answer)  {
//        sendKeys("Market Number Sent", selectOptionForMarketNumber());
        click("MarketNumber",selectOptionForMarketNumber(answer));

        assert clickNext();
        assert waitForPageLoad();

    }

        public void previewProfile() {

            assert clickNext();
            assert waitForPageLoad();

        }

    private static class PageElements  extends AbstractPageElements
    {
        @FindBy(xpath = "//span[@class='select2-selection__arrow']")
        private WebElement dropdown_open;

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
