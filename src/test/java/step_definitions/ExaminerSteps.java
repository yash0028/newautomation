package step_definitions;


import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.logging.Logger;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import io.restassured.http.Method;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import utils.RestHelper;
import org.junit.Assert;

public class ExaminerSteps {

    private static Logger logger = Logger.getLogger("ExaminerSteps");
    private static final String END_POINT = "http://contracts-query-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE = "/v1.0/exari/acocontracts";
    private RequestSpecification request = null;
    private Response response = null;

    @Given("^A contract inquiry request from PIC or Examiner$")
    public void buildValidRequest() {
        request = RestAssured.given().baseUri(END_POINT).contentType(ContentType.JSON);
    }

    @Given("^A contract request from PIC or Examiner$")
    public void buildRequest() {
        buildValidRequest();
    }

    @When("^A REST Service call is made$")
    public void getValidResponse() {
        response = request.param("contractNumbers", "124319").get(RESOURCE);
    }

    @When("^A REST Service call is made with invalid data \"([^\"]*)\"$")
    public void getInValidResponse(String inputData) {
        response = request.param("contractNumbers", inputData).get(RESOURCE);
    }

    @Then("^The service will return an error \"([^\"]*)\"$")
    public void validateInValidReponse(String responseCode) {
        Assert.assertEquals("Wrong Error code displayed", Integer.valueOf(responseCode).longValue(), RestHelper.getInstance().parseJsonResponse(response).get("responseCode").getAsLong());
    }

    @Then("^The contract data is sent back to PIC or Examiner$")
    public void validateValidResponse() {
        Set<String> setOfRequiredKeys = new HashSet<>();
        setOfRequiredKeys.addAll(Arrays.asList(new String[]{"lob", "contractNumber", "legalEntityName", "agreementEffDate", "agreementCancelDate", "legalDocumentStatus", "associatedAgreements"}));
        Set<String> setOfAssociatedRequiredKeys = new HashSet<>();
        setOfAssociatedRequiredKeys.addAll(Arrays.asList(new String[]{"legalDocumentStatus", "associatedAgreementLegalDocId", "associatedAgreementEffDate", "associatedAgreementEndDate", "associatedLegalEntityName", "associatedRegionNumber", "associatedMarketNumber"}));
        JsonArray responseArray = RestHelper.getInstance().parseJsonResponse(response).get("responseData").getAsJsonArray();
        Set<String> setOfKeys = null;
        for (JsonElement element : responseArray) {
            setOfKeys = ((JsonObject) element).keySet();
            Assert.assertEquals("All keys related to contract are not available in the response", true, setOfKeys.containsAll(setOfRequiredKeys));
            JsonArray associatedAgreements = ((JsonObject) element).get("associatedAgreements").getAsJsonArray();
            if (associatedAgreements.size() > 0) {
                Set<String> setOfAssociatedKeys = null;
                for (JsonElement ele : associatedAgreements) {
                    setOfAssociatedKeys = ((JsonObject) ele).keySet();
                    Assert.assertEquals("All keys related to associated agreements are not available in the response", true, setOfAssociatedKeys.containsAll(setOfAssociatedRequiredKeys));
                }
            }
        }
    }

    @When("^The REST service is unavailable$")
    public void verifyServiceUnavailable() {
        //need to add code to automatically down the service and up the service, post this scenario execution
        response = request.request(Method.GET);
        Assert.assertEquals("Rest Service needs to be down but it is available (up and running)", 503, response.getStatusCode());
    }

    @Then("^An server error will be returned$")
    public void verifyServerError() {
        Assert.assertEquals("Server doesn't returned 503 error code", 503, response.statusCode());
    }
}