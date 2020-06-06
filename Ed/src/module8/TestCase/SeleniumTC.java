package module8.TestCase;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import module8.Page.SeleniumHomePageObjects;

public class SeleniumTC {

	static WebDriver driver;
	
	public static void main(String[] args) throws InterruptedException {
		
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\gkuma222\\Documents\\ppp\\Practice\\driver\\chromedriver.exe");
		driver = new ChromeDriver();

		driver.get("https://www.seleniumhq.org/");
		
		SeleniumHomePageObjects page = new SeleniumHomePageObjects(driver);
		Thread.sleep(3000);
			
		page.GotoDownload();    //calling GotoDownload Method using page instance
		
							//DownloadHomePageObject page2 = new DownloadHomePageObject(driver);

	  page.GotoProjects();
	  Thread.sleep(2000);
	   driver.close();
	}
	

}
