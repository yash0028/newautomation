package general_test.step;

import cucumber.api.java.en.Then;
import io.cucumber.datatable.DataTable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.contract.interview.flow.FlowContract;
import ui_test.page.exari.contract.interview.flow.IFlowContractLoader;
import util.map.IMapSub;

public class PlaygroundSteps implements IMapSub, IFlowContractLoader {
    private static final Logger log = LoggerFactory.getLogger(PlaygroundSteps.class);


    @Then("^I do something$")
    public void playground(DataTable dataTable) throws Throwable {
        FlowContract flowContract = loadFlowContract("eif-type-2-error-contract.json");

        System.out.println(flowContract.getFlowMap().get("Market Exception Grid (MEG)"));
    }
}
