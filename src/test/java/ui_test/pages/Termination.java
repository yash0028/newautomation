package ui_test.pages;

import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import ui_test.page.exari.contract.GenericInputPage;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;
import ui_test.util.AbstractPageElements;

public class Termination extends GenericInputPage {

	private PageElements elements;

	public Termination(WebDriver driver) {
		this.elements = new PageElements(driver);
	}

	public void submitTermination() {
		selectDropDownByValue("Termination Intiator", elements.terminationIntiator, "Triage (Non UHN)");
		click(elements.terminationReasoncode);
		sendKeys(elements.terminationReasoncode, "Network Optimization Term");
		click("Termination reason code", elements.terminationReason);
		pause(5);
		sendKeys("Termination effective date", elements.terminationEffectiveDate, "January 21, 2020");
		clickNext();
	}

	private static class PageElements extends AbstractPageElements {
		@FindBy(xpath = "(//select[starts-with(@id,'MCQAnswerBlock')])[1]")
		private WebElement terminationIntiator;
		@FindBy(xpath = "(//span[contains(@id,'select2-MCQAnswerBlock')])[2]")
		private WebElement terminationReasoncode;		
		@FindBy(xpath = "//li[contains(@id,'Network Optimization Term')]")
		private WebElement terminationReason;
		@FindBy(xpath = "//input[@class='Answer input-text hasDatepicker']")
		private WebElement terminationEffectiveDate;

		public PageElements(SearchContext context) {
			super(context);
		}
	}

}
