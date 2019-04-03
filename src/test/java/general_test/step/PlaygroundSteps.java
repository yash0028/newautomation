package general_test.step;

import cucumber.api.java.en.Then;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.datastructure.gson.contractmodel.ContractModel;
import rest_api_test.util.eventgateway.IEventGatewayInteract;
import rest_api_test.util.fallout.IFalloutInteract;
import rest_api_test.util.transaction.ITransactionInteract;
import util.map.IMapSub;

public class PlaygroundSteps implements IMapSub, ITransactionInteract, IFalloutInteract, IEventGatewayInteract {
    private static final Logger log = LoggerFactory.getLogger(PlaygroundSteps.class);

    private static final String TID = "c14f37f6-5c05-46f3-94c4-81cb035a0e4b";
    private static final String CID = "";


    @Then("^I do something$")
    public void playground() throws Throwable {

        String tid = eventGatewayPostContractInstalledEvent(CID);

        ContractModel model = falloutQueryContractModel("c14f37f6-5c05-46f3-94c4-81cb035a0e4b");

        System.out.println(model.getFinancialPenaltyTable());

    }
}
