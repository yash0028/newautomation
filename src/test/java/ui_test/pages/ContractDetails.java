package ui_test.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;

public class ContractDetails extends GenericInputPage implements IWebInteract, IFactoryPage
{
    private PageElements elements;
    public ContractDetails(WebDriver driver)
    {
        super(driver);
    }

    public void enterPhyConNumber(String phyConNumber){
        assert sendKeys("PhyConNumber", this.elements.phyConNumber, phyConNumber);
        assert clickNext();
        assert waitForPageLoad();
    }

    private static class PageElements{
        @FindBy(xpath = "//*[@id=\"xri-PhyCon_Number_UTQ-UTQField_227\"]")
        private WebElement phyConNumber;

    }
}
