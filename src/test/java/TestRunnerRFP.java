/**
 * Created by jwacker on 6/6/2018.
 */

import org.junit.runner.RunWith;
import cucumber.api.junit.*;

import cucumber.api.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features="src/test/features",
        glue={"StepDefinitions"},
        plugin = {"pretty",
                "html:target/test-report-plain-RFP",
                "json:target/test-report-plain-RFP.json",
                "junit:target/test-report-plain-RFP.xml",
                "com.cucumber.listener.ExtentCucumberFormatter:target/RFP-report.html"},
        tags = {"~@ignore", "@RFP", "@2018.PI02.03"})
public class TestRunnerRFP {}
