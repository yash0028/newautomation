/**
 * Created by jwacker on 3/22/2018.
 */

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

import java.io.File;

import org.junit.AfterClass;
import org.junit.runner.RunWith;



@RunWith(Cucumber.class)
@CucumberOptions(
			
		plugin = {
				"pretty",
				"html:target/cucumber-html-report",
				"html:build/cucumber-html-report",
				"pretty:target/cucumber-report.json",
				"json:build/json-reports/json-report.json",
				"junit:build/xml-reports/xml-report.xml",
				},
		features="src\\test\\resources\\features\\rcbridge\\Test_Features\\west\\SPGA\\TC_WEST_SPGA_10.feature", glue=""
		
)
public class TestRunner2 
{
	 /*@AfterClass
	 public static void writeExtentReport() {
		//Reporter.loadXMLConfig(new File("extent-config.xml"));
		 Reporter.setSystemInfo("User Name", System.getProperty("user.name"));
		Reporter.setSystemInfo("Time Zone", System.getProperty("user.timezone"));
		Reporter.setSystemInfo("Machine", 	"Windows 10" + "64 Bit");
		Reporter.setSystemInfo("Selenium", "3.7.0");
		Reporter.setSystemInfo("Maven", "3.5.2");
		Reporter.setSystemInfo("Java Version", "1.8.0_151");
	 }*/
}
