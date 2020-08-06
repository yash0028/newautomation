package module9.TestCase;

import java.io.IOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import sun.awt.SunHints.Value;

public class SampleTest {
	public static WebDriver driver;
	static CsvFile csv = new CsvFile();
	public static String CaseId = "A--06";

	public static void main(String[] args) throws Exception {

		//setUp(CsvFile.loadCsv(), CaseId);
		//setup1(CsvFile.loadCsv(), CaseId);
		setup3();
	}
	
		public static void setUp(Map<String,Map<String,String>> loadCsv, String CaseId) throws IOException {
			System.setProperty("webdriver.chrome.driver", "G:\\Folder Structure\\Installation Stuff\\Drivers\\chromedriver.exe");

			driver=new ChromeDriver();
			driver.manage().deleteAllCookies();
			driver.manage().timeouts().pageLoadTimeout(25, TimeUnit.SECONDS);
			driver.get("https://www.facebook.com/");
			Map<String, String>value =	loadCsv.get(CaseId);
			driver.findElement(By.id("email")).sendKeys(value.get("Currency"));
			driver.findElement(By.name("pass")).sendKeys(value.get("Day"));
			driver.findElement(By.xpath("//*[@id='u_0_m']")).sendKeys(value.get("Email"));
			driver.quit();
			
			
		}
		public static void setup1(Map<String,Map<String,String>> loadCsv, String CaseId) throws Exception{
			Map<String,String> value1=loadCsv.get(CaseId);
			System.setProperty("webdriver.chrome.driver", "G:\\Folder Structure\\Installation Stuff\\Drivers\\chromedriver.exe");

			driver=new ChromeDriver();
			driver.manage().deleteAllCookies();
			driver.manage().timeouts().pageLoadTimeout(25, TimeUnit.SECONDS);
			driver.get("https://www.gmail.com/");
			driver.findElement(By.name("identifier")).sendKeys(value1.get("Email"));
			
		}
		public static void setup3() throws IOException {
			Map<String, String> getValue=CsvFile.retrieveData(CsvFile.loadCsv(), CaseId);

			System.setProperty("webdriver.chrome.driver", "G:\\Folder Structure\\Installation Stuff\\Drivers\\chromedriver.exe");
			driver=new ChromeDriver();
			driver.manage().deleteAllCookies();
			driver.manage().timeouts().pageLoadTimeout(25, TimeUnit.SECONDS);
			driver.get("https://www.gmail.com/");
			driver.findElement(By.name("identifier")).sendKeys(getValue.get("Email"));
			
			
		}
		
		
	}

