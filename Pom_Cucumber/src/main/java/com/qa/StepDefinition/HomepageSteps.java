package com.qa.StepDefinition;

import java.io.IOException;

import com.qa.pages.HomePage;
import com.qa.pages.LoginPage;
import com.qa.util.TestBase;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

public class HomepageSteps extends TestBase {
	public HomepageSteps() throws IOException {
		super();
		// TODO Auto-generated constructor stub
	}

	LoginPage login = new LoginPage() ;
	HomePage home;
	
	

@Given("^User opens browser$")
public void user_opens_browser() throws Throwable {
    
	TestBase.intialisation();

	
}

/*
 * @Then("^search for yatra page$") public void search_for_yatra_page() throws
 * Throwable {
 * 
 * }
 */

@Then("^Submit username and password$")
public void submit_username_and_password() throws Throwable {
	/*
	 * String title = login.pageTitle(); System.out.println(title);
	 */
	
home = login.login(prop.getProperty("username"), prop.getProperty("password"));

}



/*
 * @Then("^click Login$") public void click_Login() throws Throwable {
 * 
 * login.
 * 
 * }
 */
 
@Then("^homepage is displaed$")

public void homepage_is_displaed() throws Throwable {
	
    
}


}
