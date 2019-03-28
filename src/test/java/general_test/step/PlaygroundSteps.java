package general_test.step;

import cucumber.api.java.en.Then;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.interview.flow.IFlowContractLoader;
import util.map.IMapSub;

public class PlaygroundSteps implements IMapSub, IFlowContractLoader {
    private static final Logger log = LoggerFactory.getLogger(PlaygroundSteps.class);


    @Then("^I do something$")
    public void playground() throws Throwable {

    }
}
