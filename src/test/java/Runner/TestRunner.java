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
        	 plugin = {"pretty", "json:target/json-reports/json-report.json",
        	           "junit:target/xml-reports/xml-report.xml",
                       "com.cucumber.listener.ExtentCucumberFormatter:target/html-reports/html-report.html"},
        	 tags = {"~@ignore","@KAFKA"}) //Should be specified in run configuration
public class TestRunner {}
