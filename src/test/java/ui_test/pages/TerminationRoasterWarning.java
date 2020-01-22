package ui_test.pages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.AbstractPageElements;

public class TerminationRoasterWarning extends GenericInputPage {
	 private PageElements elements;

	    public TerminationRoasterWarning(WebDriver driver) {
	        this.elements = new PageElements(driver);
	    }
	    
	    public void acknowledgedTermination() {
	    	click("AcknowledgedCheckbox", elements.acknowledgeCheckbox);
	    }
	    private static class PageElements extends AbstractPageElements {
	        @FindBy(xpath = "//label[text()='I acknowledge this warning and understand the impacts for failure to satisfy the errors.']")
	        private WebElement acknowledgeCheckbox;
	        
	        public PageElements(SearchContext context) {
	            super(context);
	        }
	    }


}
