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
        super(driver);
        this.elements = new PageElements(driver);
    }



    public void enterPhyConNumber(HashMap<String,String> hmap){
        assert sendKeys("PhyConNumber", this.elements.phyConNumber, hmap.get("Phycon"));
        assert clickNext();
        assert waitForPageLoad();
    }

    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//*[@id=\"xri-PhyCon_Number_UTQ-UTQField_227\"]")
        private WebElement phyConNumber;

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}

