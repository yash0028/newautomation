/**
 * Created by jwacker on 4/4/2018.
 */

import org.junit.runner.RunWith;
import cucumber.api.junit.*;

import cucumber.api.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(format={"pretty",
        "html:target/test-report",
        "json:target/test-report.json",
        "junit:target/test-report.xml"},
        features="src/test/features",
        glue={"StepDefinitions"},
        tags = {"not @ignore", "@ETMA", "@2018.PI02.01"})
public class TestRunnerETMA {}
