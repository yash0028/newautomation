package rest_api_test.step;


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
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.util.IRestStep;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class PicExaminerSteps implements IRestStep {
    private static final Logger log = LoggerFactory.getLogger(PicExaminerSteps.class);

    private static final String ENDPOINT = "http://contracts-query-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String RESOURCE_EXARI_ACO_CONTRACTS = "/v1.0/exari/acocontracts";

    private RequestSpecification request = null;
    private Response response = null;

    @Given("^A contract inquiry request from PIC or Examiner$")
    public void buildValidRequest() {
        request = RestAssured.given().baseUri(ENDPOINT).contentType(ContentType.JSON);
    }

    @Given("^A contract request from PIC or Examiner$")
    public void buildRequest() {
        buildValidRequest();
    }

    @When("^A REST Service call is made$")
    public void getValidResponse() {
        response = request.param("contractNumbers", "124319").get(RESOURCE_EXARI_ACO_CONTRACTS);
    }

    @When("^A REST Service call is made with invalid data$")
    public void getInValidResponse() {

        response = request.param("contractNumbers", "abc123").get(RESOURCE_EXARI_ACO_CONTRACTS);
    }

    @Then("^The service will return an error$")
    public void validateInValidReponse() {
        int errorCode = parseJsonElementResponse(response).getAsJsonObject().get("responseCode").getAsInt();

        Assert.assertNotEquals("Wrong status code returned", 200, errorCode);
    }

    @When("^A REST Service call is made with invalid data \"([^\"]*)\"$")
    public void getInValidResponse2(String data) {

        response = request.param("contractNumbers", data).get(RESOURCE_EXARI_ACO_CONTRACTS);
    }

    @Then("^The service will return an error \"([^\"]*)\"$")
    public void validateInValidReponse2(String error) {
        int errorCode = parseJsonElementResponse(response).getAsJsonObject().get("responseCode").getAsInt();

        Assert.assertEquals("Wrong status code returned", Integer.parseInt(error), errorCode);
    }

    @Then("^The contract data is sent back to PIC or Examiner$")
    public void validateValidResponse() {
        Set<String> setOfRequiredKeys = new HashSet<>();
        setOfRequiredKeys.addAll(Arrays.asList(new String[]{"lob", "contractNumber", "legalEntityName", "agreementEffDate", "agreementCancelDate", "legalDocumentStatus", "associatedAgreements"}));
        Set<String> setOfAssociatedRequiredKeys = new HashSet<>();
        setOfAssociatedRequiredKeys.addAll(Arrays.asList(new String[]{"legalDocumentStatus", "associatedAgreementLegalDocId", "associatedAgreementEffDate", "associatedAgreementEndDate", "associatedLegalEntityName", "associatedRegionNumber", "associatedMarketNumber"}));
        JsonArray responseArray = parseJsonElementResponse(response).getAsJsonObject().get("responseData").getAsJsonArray();
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