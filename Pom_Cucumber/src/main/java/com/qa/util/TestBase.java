package com.qa.util;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class TestBase {
	
	public static WebDriver driver;
	public static Properties prop;
	
	public TestBase() throws IOException {
		try{
		
		prop = new Properties();
		FileInputStream fis=new FileInputStream("C:/Users/User/Desktop/git/newautomation-normal/Pom_Cucumber/src/main/java/com/qa/config/config.properties");
		prop.load(fis);
		}catch(IOException e)
		{
			e.getMessage();
		}
	}

	 
	public static void intialisation()
	{
		
		String browser = prop.getProperty("browser");
		System.out.println(browser);
		if(browser.equals("chrome"))
		{
		System.setProperty("webdriver.chrome.driver","C:\\Users\\User\\Desktop\\Work\\chromedriver_win32\\chromedriver.exe");
		driver = new ChromeDriver();
		}
		else if(browser.equals("firefox"))
		{
			System.setProperty("webdriver.gecko.driver", "C:\\Users\\User\\Desktop\\Work\\chromedriver_win32\\chromedriver.exe");
			driver = new FirefoxDriver();
		}

		
		driver.manage().window().maximize();
		driver.manage().deleteAllCookies();
		driver.manage().timeouts().pageLoadTimeout(TestUtil.PAGE_LOAD_TIMEOUT,TimeUnit.SECONDS);
		driver.manage().timeouts().implicitlyWait(TestUtil.IMPLICIT_WAIT,TimeUnit.SECONDS);
		driver.get(prop.getProperty("url"));
	
}}