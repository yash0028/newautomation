package module3;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class ExplicitWait {
	public static WebDriver driver;
	
	public void wait(WebElement ele) {
		try {
			WebDriverWait wait = new WebDriverWait(driver, 25);
			wait.until(ExpectedConditions.visibilityOf(ele));
		}catch(Exception e)
		
		{
			e.getMessage();
		}
		
	}
	
	
	
	public static void main(String[] args) {

		// Open browser
		System.setProperty("webdriver.chrome.driver", "G:\\Folder Structure\\Installation Stuff\\Drivers\\chromedriver1.exe");
		WebDriver driver = new ChromeDriver();

		// Open AUT
		driver.get("http://seleniumautomationpractice.blogspot.com/2017/10/waitcommands.html");

		WebDriverWait wait = new WebDriverWait(driver, 25);
  
	wait.until(ExpectedConditions.elementToBeClickable(By.linkText("LinkText-6"))).click();
	/*
	wait.until(ExpectedConditions.alertIsPresent());
	wait.until(ExpectedConditions.elementToBeClickable(null)());
	wait.until(ExpectedConditions.presenceOfElementLocated(null)());
	wait.until(ExpectedConditions.frameToBeAvailableAndSwitchToIt(null)());

	
*/
	
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.linkText("LinkText-6"))).click();
	
	}
}