package module2;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class JavScript {
	
	static WebDriver driver;
	public static void checkPageIsReady()
	{
		 JavascriptExecutor js = (JavascriptExecutor)driver;
		
		 //Initially bellow given if condition will check ready state of page.
		  if (js.executeScript("return document.readyState").toString().equals("complete"))
		  { 
			  
		   System.out.println("Page Is loaded.");
		   }
		  
		//This loop will rotate for 25 times to check If page Is ready after every 1 second.
		 //You can replace your value with 25 If you wants to Increase or decrease wait time.
		  for (int i=0; i<5; i++){ 
		   try 
		   {
		    Thread.sleep(1000);
		    }catch (InterruptedException e) {} 
		   //To check page ready state.
		   if (js.executeScript("return document.readyState").toString().equals("complete"))
		   { 
		    break; 
		   }   
		  }
		  System.out.println("Page Is completely loaded.");
		 
	}
	

	public static void main(String[] args) {
		
        System.setProperty("webdriver.chrome.driver","C:\\Users\\gkuma222\\Documents\\ppp\\Practice\\driver\\chromedriver.exe");
        driver = new ChromeDriver();
		driver.get("http://www.amazon.com");
		JavScript.checkPageIsReady();
		
		
		//To open a new tab using JS
		JavascriptExecutor js = (JavascriptExecutor)driver;
		js.executeScript("window.open('http://www.youtube.com');");
		JavScript.checkPageIsReady();
		
		
		
		
	}

}
