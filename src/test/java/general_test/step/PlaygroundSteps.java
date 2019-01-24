package general_test.step;

import cucumber.api.java.en.Then;
import io.cucumber.datatable.DataTable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.map.IMapSub;

import java.util.Map;

/**
 * Created by jwacker on 8/1/2018.
 */
public class PlaygroundSteps implements IMapSub {
    private static final Logger log = LoggerFactory.getLogger(PlaygroundSteps.class);


    @Then("^I do something$")
    public void playground(DataTable dt) throws Throwable {
        Map<String, String> base = dt.asMap(String.class, String.class);

        base.entrySet().forEach(e -> log.info("{} : {}", e.getKey(), e.getValue()));

        base = subMapStringValues(base);

        base.entrySet().forEach(e -> log.info("'{}' : '{}'", e.getKey(), e.getValue()));


    }
}
