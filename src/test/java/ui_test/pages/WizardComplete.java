package ui_test.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;

public class WizardComplete extends GenericInputPage
{
    private PageElements elements;

    public WizardComplete(WebDriver driver)
    {
        super(driver);
    }

    public void completeWizard(){
        assert click("Complete Wizard",this.elements.completeWizardElement);
        assert waitForPageLoad();
    }
    private static class PageElements{
        @FindBy(xpath = "/html/body/div[3]/div[2]/div[1]/div[1]/div[1]/a")
        private WebElement completeWizardElement;

    }

}