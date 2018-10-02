package general_test.step;

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
        System.out.println("Grabbing Scenario Object and waiting for a bit...");
        this.scenario = scenario;
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }


}
