package ui_test.pages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class WizardComplete extends GenericInputPage
{
    private PageElements elements;
    private Report report = Report.getReportInstance();

    public WizardComplete(WebDriver driver)
    {
        super(driver);
        this.elements = new PageElements(driver);
    }

    public void completeWizard(HashMap<String, String> hmap){
        assert waitForPageLoad();
        assert click("Complete Wizard",this.elements.completeWizardElement);
        assert waitForPageLoad();
        if (report.getReport() != null) {
            report.saveReport(hmap.get("commonName"));
        }
    }
    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "/html/body/div[3]/div[2]/div[1]/div[1]/div[1]/a")
        private WebElement completeWizardElement;
        public PageElements(SearchContext context) {
            super(context);
        }
    }

}