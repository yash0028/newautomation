/**
 * Created by jwacker on 3/22/2018.
 */
import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.*;

@RunWith(Cucumber.class)
@CucumberOptions(
		plugin = {
				"pretty",
				"json:build/json-reports/json-report.json",
				"junit:build/xml-reports/xml-report.xml"},
		tags = {"@Automated and (@US1185585)"})
public class TestRunner {

}
