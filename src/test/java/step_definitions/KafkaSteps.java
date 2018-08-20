package step_definitions;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import cucumber.api.Scenario;
import cucumber.api.java.Before;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;

import static io.restassured.RestAssured.*;

/**
 * Created by aberns on 6/26/2018.
 */
public class KafkaSteps {
    private static final String benchBaseUri = "http://bench-and-test-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String payloadUri = "/api/test/contracts";
    private static final String resultUri = "/api/test/results";
    private static final String resetUri = "/api/test/reset";

    private static final String transactionBaseUri = "http://transaction-status-clm-dev.ocp-ctc-dmz-nonprod.optum.com/";
    private static final String statusUri = "/v1/transaction/"; //need to add the {trans_id} to the end

    private RequestSpecification request;
    private Response response;
    private JsonObject payload;
    private JsonObject result;
    private int eventCountTotal;
    private Scenario scenario;

    @Before("@KAFKA")
    public void getScenario(Scenario scenario) {
        System.out.println("Grabbing Scenario Object and waiting for a bit...");
        this.scenario = scenario;

        try {
            Thread.sleep(10000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }

    @Given("^I build a payload with \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\"$")
    public void buildPayload(String eventCount, String successfulDomain, String successfulDownstream, String messageSize) {
        //{ "type": "acceptance-test", "numberOfEvents": 5, "isSuccessDomain": true, "isSuccessDownstream": true, "messageSizeKb": 5 }
        payload = new JsonObject();
        payload.addProperty("type", "acceptance-test");
        payload.addProperty("numberOfEvents", eventCount);
        payload.addProperty("isSuccessDomain", successfulDomain);
        payload.addProperty("isSuccessDownstream", successfulDownstream);
        payload.addProperty("messageSizeKb", messageSize);
    }

    @When("^I send the payload$")
    public void sendPayload() {
        eventCountTotal += payload.get("numberOfEvents").getAsInt();
        request = given().baseUri(benchBaseUri).header("Content-Type", "application/json").body(payload);
        response = request.post(payloadUri);
        Assert.assertEquals(response.getStatusCode(), 200);
    }

    @Given("^I send reset command to test bench$")
    public void sendReset() {
        response = when().get(benchBaseUri + resetUri);
        Assert.assertEquals(response.getStatusCode(), 200);

        //Reset all values
        this.request = null;
        this.response = null;
        this.payload = null;
        this.result = null;
        eventCountTotal = 0;
    }

    @Then("^I get the result with an average time less than \"([^\"]*)\"$")
    public void AssertAverageTime(String expectedAverage) throws Throwable {
        Double avg = result.get("average").getAsDouble();
        Double exAvg = Double.valueOf(expectedAverage);
//        System.out.println("Found " + avg + " | " + exAvg);

        Assert.assertFalse("Format Error in response average: " + result.get("average").getAsString(),
                avg.isNaN());
        Assert.assertFalse("Format Error in expected average: " + expectedAverage,
                exAvg.isNaN());
        Assert.assertTrue("Events took an average of " + avg + "ms but should have taken no more than " + exAvg + "ms!",
                avg <= exAvg);
    }

    @Then("^I get the result with more than \"([^\"]*)\" successful events$")
    public void AssertSuccessCount(String exceptedSuccess) throws Throwable {
        Double successCount = result.get("successCount").getAsDouble();
        Double expectedSuccessCount = Double.valueOf(exceptedSuccess);

        Assert.assertFalse("Format Error in response success count: " + result.get("successCount").getAsString(),
                successCount.isNaN());
        Assert.assertFalse("Format Error in expected success count: " + exceptedSuccess,
                expectedSuccessCount.isNaN());
        Assert.assertTrue("Found only " + successCount + " successes but expected  " + expectedSuccessCount + " success!",
                successCount > expectedSuccessCount);
    }

    @Then("^I get the result with more than \"([^\"]*)\" total events$")
    public void AssertTotalCountMin(String expectedTotal) throws Throwable {
        Double totalCount = result.get("totalCounter").getAsDouble();
        Double expectedTotalCount = Double.valueOf(expectedTotal);

        Assert.assertFalse("Format Error in response total count: " + result.get("successCount").getAsString(),
                totalCount.isNaN());
        Assert.assertFalse("Format Error in expected total count: " + expectedTotal,
                expectedTotalCount.isNaN());
        Assert.assertTrue("Found only " + totalCount + " events but expected " + expectedTotalCount + " events!",
                totalCount >= expectedTotalCount);
    }

    @Then("^I get the result with no more than \"([^\"]*)\" total events$")
    public void AssertTotalCountMax(String expectedTotal) throws Throwable {
        Double totalCount = result.get("totalCounter").getAsDouble();
        Double expectedTotalCount = Double.valueOf(expectedTotal);

        Assert.assertFalse("Format Error in response total count: " + result.get("successCount").getAsString(),
                totalCount.isNaN());
        Assert.assertFalse("Format Error in expected total count: " + expectedTotal,
                expectedTotalCount.isNaN());
        Assert.assertTrue("Found " + totalCount + " events but expected no more than" + expectedTotalCount + " events!",
                totalCount <= expectedTotalCount);
    }

    @And("^I wait (\\d+) seconds for the result$")
    public void waitSecondsAndGetResults(int seconds) {
        try {
            Thread.sleep(seconds * 1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        getResults();
        this.scenario.write(result.toString());
    }

    private void getResults() {
        JsonParser parser = new JsonParser();
        response = when().get(benchBaseUri + resultUri);
        result = parser.parse(response.asString()).getAsJsonObject();
    }

}
