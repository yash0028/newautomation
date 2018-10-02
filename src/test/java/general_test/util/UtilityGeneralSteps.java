package general_test.util;

import cucumber.api.Scenario;
import cucumber.api.java.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by aberns on 8/6/2018.
 */
public class UtilityGeneralSteps {
    private static final Logger log = LoggerFactory.getLogger(UtilityGeneralSteps.class);
    public static Scenario scenario;

    public static void write2Scenario(String message) {
        if (scenario != null) {
            scenario.write(message);
        } else {
            System.out.println(message);
        }
    }

    @Before
    public void getScenario(Scenario scenario) {
        UtilityGeneralSteps.scenario = scenario;
    }
}
