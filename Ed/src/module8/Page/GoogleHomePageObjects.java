package module8.Page;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class GoogleHomePageObjects {
//Pageobject model is approch
// Data Driven Framework
//public GoogleHomePageObjects(WebDriver driver) { 	
//define GHPO Constructor which helps to call GHPO class in any other class(Google Search Java).
	

	WebDriver driver;
	
	@FindBy(name = "q")
	WebElement SearchTxt;
	
	@FindBy(partialLinkText = "Selenium - Web Browser Automa")
	WebElement LinkSel;
	
	public GoogleHomePageObjects(WebDriver driver){
	PageFactory.initElements(driver, this);   
	 //intialise the web elements using Page factory Method (@FindBy works with only pagefactory). 
	//PFactory helps you to use this elements when they are called by another class (Google Search Java).
	
	}
		
	
	public void SearchOnGoogle(String SearchInput) {
		
		SearchTxt.clear();
		SearchTxt.sendKeys(SearchInput);
		SearchTxt.submit();
	}
	
	public void ClickSelLink() 
	{
			LinkSel.click();
	}
}
