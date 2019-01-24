package general_test.step;

import cucumber.api.java.en.Then;
import io.cucumber.datatable.DataTable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.map.IMapSub;

import java.util.Map;

public class PlaygroundSteps implements IMapSub {
    private static final Logger log = LoggerFactory.getLogger(PlaygroundSteps.class);


    @Then("^I do something$")
    public void playground(DataTable dataTable) throws Throwable {
        Map<String, String> map = subMapStringValues(dataTable.asMap(String.class, String.class));

        map.entrySet().forEach(e -> log.info("'{}' : '{}'", e.getKey(), e.getValue()));
    }
}
