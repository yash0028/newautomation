package general_test.step;

import cucumber.api.java.en.Then;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.contractsquery.IContractsQueryInteract;
import rest_api_test.api.datastructure.gson.contractsquery.QueryResponse;
import util.map.IMapSub;

public class PlaygroundSteps implements IMapSub, IContractsQueryInteract {
    private static final Logger log = LoggerFactory.getLogger(PlaygroundSteps.class);


    @Then("^I do something$")
    public void playground() throws Throwable {
        String id = "3645f720-435a-4941-8b66-15c808b93805";


        QueryResponse response = getExariMassAction(id);

        log.info("{} -> {}", id, response);


    }
}
