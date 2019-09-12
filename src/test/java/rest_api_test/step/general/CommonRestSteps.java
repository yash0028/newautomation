package rest_api_test.step.general;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import general_test.util.ISharedValuePayload;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CommonRestSteps implements ISharedValuePayload {
    private static final Logger log = LoggerFactory.getLogger(CommonRestSteps.class);


    @Given("^\"([^\"]*)\" contains \"([^\"]*)\"$")
    public void addField2Payload_contains(String field, String value) throws Throwable {
        getPayload().put(field, value);
    }

    @And("^\"([^\"]*)\" = \"([^\"]*)\"$")
    public void addField2Payload_equalsSymbol(String field, String value) {
        getPayload().put(field, value);
    }

    @Given("^\"([^\"]*)\" equals \"([^\"]*)\"$")
    public void addField2Payload_equalsString(String field, String value) throws Throwable {
        getPayload().put(field, value);
    }

    @When("^\"([^\"]*)\" equals one of \"([^\"]*)\"$")
    public void addField2Payload_equalsOnOf(String field, String value) throws Throwable {
        getPayload().put(field, value);
    }

    @Given("^\"([^\"]*)\" includes \"([^\"]*)\"$")
    public void addField2Payload_includes(String field, String value) throws Throwable {
        getPayload().put(field, value);
    }

    @And("^\"([^\"]*)\" is \"([^\"]*)\"$")
    public void addField2Payload_is(String field, String value) throws Throwable {
        getPayload().put(field, value);

    }
}
