package ui_test.pages;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;

public class WizardComplete extends GenericInputPage
{

    public WizardComplete(WebDriver driver)
    {
        super(driver);
    }

    public void completeWizard(){
        assert clickNext();
        assert waitForPageLoad();
    }

}
