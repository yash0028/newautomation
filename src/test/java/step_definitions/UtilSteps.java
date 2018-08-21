package step_definitions;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;

/**
 * Created by aberns on 8/6/2018.
 */
public class UtilSteps {
    public static Scenario scenario;

    public static void write2Scenario(String message) {
        if(scenario != null) {
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

    @After
    public void sendRallyUpdate(){
        //TODO
    }
}
