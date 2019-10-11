package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;

public class RegulatoryAppendices extends GenericInputPage
{

    private PageElements elements;
    public RegulatoryAppendices(WebDriver driver)
    {
        super(driver);
        this.elements = new PageElements(driver);

    }

    public WebElement regulatory(String Name){
        return findElement(getDriver(), new String[]{"xpath","//input[contains(@value, '"+Name+"')]"});
    }


    public void selectRegulatoryAppendix(HashMap<String,String> hmap) {

        click("Click on Search Bar",elements.clickOnBar);
        pause(2);
        click("Click Regulatory Appendix",regulatory(hmap.get("Regulatory Appendix")));
        assert clickNext();
        assert waitForPageLoad();
    }

    private static class PageElements  extends AbstractPageElements {

        @FindBy(xpath = "//*[@id=\"MCQAnswerBlock244\"]/span[1]/span[1]/span/ul/li/input")
        private WebElement clickOnBar;

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
