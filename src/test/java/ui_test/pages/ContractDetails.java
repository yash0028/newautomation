package ui_test.pages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

import java.util.HashMap;


public class ContractDetails extends GenericInputPage implements IWebInteract, IFactoryPage
{
    private PageElements elements;
    public ContractDetails(WebDriver driver)
    {
        this.elements = new PageElements(driver);
    }

    public void contractEffectiveDate(HashMap<String,String> hmap){
        String date;
        if(hmap.get("Contract Effective Date").equals("today")){
            date = CommonMethods.todaysDate();
        }else{
            date = CommonMethods.formatDate(hmap.get("Contract Effective Date"));
        }
        assert sendKeys("Contract Effective Date", this.elements.contractEffectiveDate, date);
        assert clickNext();
        assert waitForPageLoad();
    }


    public void enterPhyConNumber(HashMap<String,String> hmap){
        if(hmap.containsKey("Phycon")) {
            assert sendKeys("PhyConNumber", this.elements.phyConNumber, hmap.get("Phycon"));
        }
        assert clickNext();
        assert waitForPageLoad();
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//input[contains(@name,'PhyCon')]")
        private WebElement phyConNumber;
        @FindBy(xpath = "//input[contains(@id,'EffectiveDate')]")
        private WebElement contractEffectiveDate;

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}

