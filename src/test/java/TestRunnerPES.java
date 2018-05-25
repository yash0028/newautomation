
/**
 * Created by jwacker on 4/4/2018.
 */

import org.junit.runner.RunWith;
import cucumber.api.junit.*;

import cucumber.api.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/features",
		 glue = { "StepDefinitions" },
		 plugin = { "pretty",
			    "html:target/test-report",
			    "json:target/test-report.json",
			    "junit:target/test-report.xml",
                	    "com.cucumber.listener.ExtentCucumberFormatter:target/PES-report.html"},
		 tags = {"~@ignore", "@PES", "@2018.PI02.01"})
public class TestRunnerPES {
}
