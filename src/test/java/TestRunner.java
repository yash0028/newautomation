/**
 * Created by jwacker on 3/22/2018.
 */

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
		plugin = {
				"pretty",
				"json:build/json-reports/json-report.json",
				"junit:build/xml-reports/xml-report.xml"},
        dryRun = true
//		tags = {"@US1337392"}
)
public class TestRunner {

}
