package module5;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;

public class KeyboardMouseEvents {

	public static void main(String[] args) throws InterruptedException {

		// Open browser
		System.setProperty("webdriver.chrome.driver",
				"C:\\Users\\gkuma222\\Documents\\ppp\\Practice\\driver\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();

		driver.get("https://seleniumautomationpractice.blogspot.com/2017/10/automation-testing-sample_28.html");

		WebElement add = driver.findElement(By.name("ts_first_name"));
		

		

		Actions act = new Actions(driver); 

		act.moveToElement(add).keyDown(add, Keys.SHIFT).sendKeys("abhresh") 
		.keyUp(add, Keys.SHIFT)		//relese key through keyUp
		//.doubleClick(add)			//left double click of mouse
		//.contextClick(add)			//right double click of mouse
		.build()
		.perform();
		
		//act.moveToElement(add1).doubleClick().contextClick().build().perform();
		WebElement add1 = driver.findElement(By.name("ts_last_name"));

		act.moveToElement(add1).keyDown(add1, Keys.SHIFT).sendKeys("kumar").doubleClick(add1).keyUp(add1, Keys.SHIFT).build().perform();
		Thread.sleep(10000);
		driver.findElement(By.name("ts_last_name")).sendKeys(Keys.CONTROL+"a");
		driver.findElement(By.name("ts_last_name")).sendKeys(Keys.CONTROL+"c");

		driver.findElement(By.name("ts_address")).sendKeys(Keys.CONTROL+"v");
		driver.findElement(By.name("ts_address")).sendKeys(Keys.CONTROL+"v");
		driver.findElement(By.name("ts_address")).sendKeys(Keys.CONTROL+"v");
		driver.findElement(By.name("ts_address")).sendKeys(Keys.CONTROL+"v");
		  
		
		
		/*
		 * Action newAct = act .moveToElement(add) .keyDown(add, Keys.SHIFT)
		 * .sendKeys("abhresh") .keyUp(add, Keys.SHIFT) .build();
		 * 
		 * newAct.perform();
		 */
	}

}
