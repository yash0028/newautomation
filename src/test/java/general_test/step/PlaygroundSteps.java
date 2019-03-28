package general_test.step;

import cucumber.api.java.en.Then;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.transaction.*;
import util.map.IMapSub;

import java.util.ArrayList;
import java.util.List;

public class PlaygroundSteps implements IMapSub, ITransactionInteract {
    private static final Logger log = LoggerFactory.getLogger(PlaygroundSteps.class);


    @Then("^I do something$")
    public void playground() throws Throwable {
        List<TDetailType> list = new ArrayList<>();
        list.add(TDetailType.SUCCESS);

        List<TSortField> sortFields = new ArrayList<>();
        sortFields.add(TSortField.ID);

        TransactionDetails details = transactionQueryDetails(list, sortFields, true, 0, 10);

        for (TransactionDetail detail : details) {
            System.out.println(detail);
        }

    }
}
