package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

import java.util.HashMap;
import java.util.List;

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
        assert sendKeys("Send Data to egulatory Appendix",elements.clickOnBar,hmap.get("Regulatory Appendix"));
        pause(1);
        assert click("Click Regulatory Appendix", elements.dropdown_selection.get(0));
        assert clickNext();
        assert waitForPageLoad();
    }

    private static class PageElements  extends AbstractPageElements {

        @FindBy(xpath = "//*[@id=\"MCQAnswerBlock243\"]/span[1]/span[1]/span/ul/li/input")
        private WebElement clickOnBar;
        @FindBy(xpath = "//span[@class='select2-results']//li")
        public List<WebElement> dropdown_selection;

        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
