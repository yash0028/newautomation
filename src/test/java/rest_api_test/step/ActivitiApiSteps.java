package rest_api_test.step;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.activiti.IActivitiInteract;
import rest_api_test.util.IRestStep;

public class ActivitiApiSteps implements IRestStep, IActivitiInteract {
    private static final Logger log = LoggerFactory.getLogger(ActivitiApiSteps.class);

    private Response response;

    // US1456884

    @When("^hitting the activiti-api with \"([^\"]*)\" of \"([^\"]*)\"$")
    public void hittingTheActivityApiWithOf(String field, String value) throws Throwable {
        getPayload().put(field, value);
    }

    @And("^activiti field \"([^\"]*)\" of \"([^\"]*)\"$")
    public void of(String field, String value) throws Throwable {
        getPayload().put(field, value);
    }

    @Then("^a (\\d+) response code is received from the activiti-api$")
    public void aResponseCodeIsReceived(int responseCode) throws Throwable {
        response = createRecord(getPayload());

        // Assert that the expected response code is received
        Assert.assertEquals(responseCode, response.getStatusCode());
    }
}
