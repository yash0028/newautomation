package general_test.util;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;

/**
 * Created by aberns on 8/6/2018.
 * <p>
 * Utility Cucumber steps for Stories to do something before and after
 */
public class UtilityGeneralSteps {
    public static Scenario scenario;

    /**
     * Before all steps, grab the scenario to be used for logging
     *
     * @param scenario
     */
    @Before(order = BookendOrder.ALPHA)
    public void getScenario(Scenario scenario) {
        UtilityGeneralSteps.scenario = scenario;
        SharedValueStore.getInstance().reset();
    }

    /**
     * After all steps, null the scenario just in case
     *
     * @param scenario
     */
    @After(order = -1 * BookendOrder.OMEGA)
    public void removeScenario(Scenario scenario) {
        UtilityGeneralSteps.scenario = null;
    }
}
