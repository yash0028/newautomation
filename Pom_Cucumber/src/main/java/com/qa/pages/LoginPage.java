package com.qa.pages;


import java.io.IOException;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.qa.util.TestBase;



	
	
	public class LoginPage extends TestBase {
		
		//Page Factory
		
		public static WebDriver driver;
		
		public void actions(WebElement e){
			
		Actions ac = new Actions(driver);
		ac.moveToElement(e).build().perform();
		
		}
		
		//driver.findElement(By.xpath(//*[@id='userLoginBlock']/a))
		@FindBy(xpath = "//*[@id='userLoginBlock']/a)")
		WebElement login;
		
		@FindBy(xpath = "//*[@id='themeSnipe']/div/div/div[4]/div[1]/a/i")
		WebElement pageHeader;
		
		@FindBy(name = "login-input")
		WebElement userName;
		
		@FindBy(id = "login-password")
		WebElement password;
		
		public LoginPage() throws IOException{
			PageFactory.initElements(driver, this);
		}
		
		//Actions:
		
		public String pageTitle(){
			return driver.getTitle();
		}
		
		public boolean pageHeader(){
			return pageHeader.isDisplayed();
		}
		
		public HomePage login(String un, String pwd) throws IOException{
			login.click();
			userName.sendKeys(un);
			password.sendKeys(pwd);
		
			return new HomePage();

			
			
		}
		
			
			
		}
		
	
		

	
