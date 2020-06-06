package advanced;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class OpenAllLinks 
{

        public static void main(String[] args) 
        {
     
        	System.setProperty("webdriver.chrome.driver", "C:\\Users\\gkuma222\\Documents\\ppp\\Practice\\driver\\chromedriver.exe");
        	WebDriver driver =new ChromeDriver();
        	
        	driver.get("https://www.facebook.com/");
        	driver.manage().window().maximize();
        	
        	List<WebElement> link = driver.findElements(By.tagName("a"));
        	 
        	System.out.println(link.size());
        	 
        	 for (WebElement link2: link)
        	 {
        		 System.out.println(link2.getAttribute("href"));
        		 System.out.println(link2.getText());
        	
        	 }
        	
}
}
