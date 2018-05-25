/**
 * Created by jwacker on 4/4/2018.
 */

import org.junit.runner.RunWith;
import cucumber.api.junit.*;

import cucumber.api.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features="src/test/features",
		 glue={"StepDefinitions"},
		 plugin = {"pretty",
				   "html:target/test-report-plain-ETMA",
			       "json:target/test-report-plain-ETMA.json",
			       "junit:target/test-report-plain-ETMA.xml",
			       "com.cucumber.listener.ExtentCucumberFormatter:target/ETMA-report.html"},
		 tags = {"~@ignore", "@ETMA", "@2018.PI02.02"})
public class TestRunnerETMA {}
