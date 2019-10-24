package ui_test.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;
import ui_test.util.IWebInteract;

import java.util.HashMap;
import java.util.List;

public class ContractDetailsDashboard extends GenericInputPage {
    private PageElements elements;
    public ContractDetailsDashboard(WebDriver driver) {
        super(driver);
        this.elements = new PageElements(driver);
    }
    public void startWorkFlow(){
        assert click("Start WorkFlow",this.elements.startWorkFlow);
        assert waitForPageLoad();
    }
    public boolean isElementPresent() {
        try {
            driver.findElement(By.xpath("//div[contains(@class,'edit-status')]/a/span"));
            return true;
        } catch (org.openqa.selenium.NoSuchElementException e) {
            return false;
        }
    }
    public void editStatus(String option){
        int count=1;
        while(true){
            pause(6);
            if(isElementPresent()){
                assert click("Edit Status",this.elements.editStatus);
                break;
            }else{
                refreshPage();
            }
            IWebInteract.log.info("Retrying for Edit Status Option, Retry: {}",count);
            count++;
        }
        pause(3);
        Select status = new Select(this.elements.editStatusPopup.findElement(By.tagName("select")));
        status.selectByVisibleText(option);
        List<WebElement> buttons = this.elements.editStatusPopup.findElements(By.tagName("button"));
        pause(1);
        for(WebElement button : buttons){
            if(button.getText().equals("Save")){
                button.click();
                break;
            }
        }
        List<WebElement> anchors = this.elements.editStatusPopup.findElements(By.tagName("a"));
        for(WebElement anchor : anchors){
            if(anchor.getText().equals("Close")){
                anchor.click();
                break;
            }
        }
    }

    public void finalCapture(){
        assert click("Final Capture",this.elements.finalCapture);
        assert waitForPageLoad();
    }
    public void makeCorrection(){
        assert click("Make Correction",this.elements.makeCorrection);
        assert waitForPageLoad();
    }



    private static class PageElements extends AbstractPageElements {
        @FindBy(xpath = "//div[@id='onStartExariWorkflowClick']/a")
        private WebElement startWorkFlow;
        @FindBy(xpath = "//div[contains(@class,'edit-status')]/a/span")
        private WebElement editStatus;
        @FindBy(xpath = "//div[@class='yui-panel-container yui-dialog shadow']")
        private WebElement editStatusPopup;
        @FindBy(xpath = "//div[@id='onPrepFinalCaptureClick']/a")
        private WebElement finalCapture;
        @FindBy(xpath = "//div[contains(@class,'correction')]/a/span")
        private WebElement makeCorrection;



        public PageElements(SearchContext context) {
            super(context);
        }
    }
}
