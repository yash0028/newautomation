package general_test.util;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by aberns on 8/6/2018.
 *
 * Utility Cucumber steps for Stories to do something before and after
 */
public class UtilityGeneralSteps {
    private static final Logger log = LoggerFactory.getLogger(UtilityGeneralSteps.class);
    public static Scenario scenario;

    /**
     * Write message to scenario
     *
     * @param message
     */
    public static void write2Scenario(String message) {
        if (scenario != null) {
            scenario.write(message);
        } else {
            System.out.println(message);
        }
    }

    /**
     * Before all steps, grab the scenario to be used for logging
     *
     * @param scenario
     */
    @Before(order = BookendOrder.ALPHA)
    public void getScenario(Scenario scenario) {
        UtilityGeneralSteps.scenario = scenario;
    }

    /**
     * After all steps, null the scenario just in case
     *
     * @param scenario
     */
    @After(order = BookendOrder.OMEGA)
    public void removeScenario(Scenario scenario) {
        UtilityGeneralSteps.scenario = null;
    }
}
