package general_test.step;

import cucumber.api.java.en.Then;
import exari_test.eif.flow.ContractFlow;
import exari_test.eif.flow.IContractFlowLoader;
import exari_test.hive.ContractThread;
import exari_test.hive.Hive;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.eventgateway.IEventGatewayInteract;
import rest_api_test.api.fallout.IFalloutInteract;
import rest_api_test.api.transaction.ITransactionInteract;
import rest_api_test.api.zuul.IMockControllerInteract;
import util.map.IMapSub;

import java.util.List;

public class PlaygroundSteps implements IMapSub, ITransactionInteract, IFalloutInteract, IEventGatewayInteract, IMockControllerInteract, IContractFlowLoader {
    private static final Logger log = LoggerFactory.getLogger(PlaygroundSteps.class);

    private static final String TID = "b9dc6eb1-c29a-47ad-a7d0-54b73978a70b";
    private static final String CID = "123656";


    @Then("^I do something$")
    public void playground() throws Throwable {

        log.info("i am here");


    }

    @Then("I activate the hive")
    public void iActivateTheHive() {
        ContractFlow flow = loadFlowContract("eif-basic-central.json");

        for (int i = 0; i < 3; i++) {
            ContractFlow temp = flow.deepCopy();
            temp.setName(flow.getName() + " - " + i);
            Hive.getInstance().addToQueue(new ContractThread(temp));
        }

        List<String> list = Hive.getInstance().getQueueNames();
        log.info("{}", list);

        Hive.getInstance().start();
    }
}
