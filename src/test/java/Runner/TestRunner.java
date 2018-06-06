package Runner;
/**
 * Created by jwacker on 3/22/2018.
 */
import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.*;

@RunWith(Cucumber.class)
@CucumberOptions(features="src/test/features",
        	 glue={"StepDefinitions"},
        	 plugin = {"pretty", "html:target/test-reports/html-cucumber-report",
        	           "json:target/test-reports/json-report.json",
        	           "junit:target/test-reports/xml-report.xml",
                       "com.cucumber.listener.ExtentCucumberFormatter:target/test-reports/html-extent-report.html"},
        	 tags = {"~@ignore","@2018.PI02.01", "@PES,@ETMA"}) //Should be specified in run configuration
public class TestRunner {}
