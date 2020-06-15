package runner;


import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;


@RunWith(Cucumber.class)
@CucumberOptions(
		
		features = "G:\\Workspace\\Cucumber_Project\\src\\main\\java\\features\\datatable.feature", //path of feature file
		glue ={"stepDefinition"}, //path of stepdefinition class
		format={"pretty", "html:testoutput","json:json_output/cucumber.json","junit:junit_xml/cucumber.xml"}, //to  generate diff types of reporting
		monochrome =true, // display the console ouput in a proper readble format.
		strict = true, //it will check if any step is not defined in step definition file.
		dryRun=false //to check the mapping is proper between feature file and step definition file.
		//tags= {"@SmokeTest"}
		)
public class DataRunner 
{

	/* feature file with multiple scenarios:
	 * 
	 *@FunctionalTest
Feature: ECommerce Application
 
@SmokeTest @RegressionTest
Scenario: Successful Login
Given This is a blank test
 
@RegressionTest
Scenario: UnSuccessful Login
Given This is a blank test
 
@SmokeTest 
Scenario: Add a product to bag
Given This is a blank test
--> Single Scenario : tags= {"@SmokeTest"}

--> OR : Execute all tests tagged as @SmokeTest OR @RegressionTest
		Tags that are comma-separated are ORed.
		tags={"@SmokeTest,@RegressionTest"}
		
--> AND : Execute all tests tagged as @SmokeTest AND @RegressionTest --> Which have both tags together
		tags={"@SmokeTest","@RegressionTest"}
		
--> Exclude : 
		tags= {"~@SmokeTest"}




	 */
	

}
