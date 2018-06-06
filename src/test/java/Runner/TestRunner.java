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
        	 plugin = {"pretty", "html:target/test-report",
        	           "json:target/test-report.json",
        	           "junit:target/test-report.xml",
                       "com.cucumber.listener.ExtentCucumberFormatter:target/extent-report.html"},
        	 tags = {"~@ignore","@2018.PI02.01", "@PES,@ETMA"}) //Should be specified in run configuration
public class TestRunner {}
