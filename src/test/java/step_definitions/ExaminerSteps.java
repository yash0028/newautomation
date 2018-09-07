package step_definitions;


import java.util.logging.Logger;

import com.google.gson.JsonObject;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import io.restassured.http.Method;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.openqa.selenium.By;
import pages.CrosswalkPage;
import utils.RestHelper;
import utils.SeleniumHelper;
import org.openqa.selenium.support.ui.Select;
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
    public void buildRequest(){
        buildValidRequest();
    }

    @When("^A REST Service call is made$")
    public void getValidResponse() {
        response = request.param("contractNumbers", "124319").get(RESOURCE);
    }

    @When("^A REST Service call is made with invalid data$")
    public void getInValidResponse() {
        response = request.param("contractId", "124319").get(RESOURCE);
    }

    @Then("^The service will return an error$")
    public void validateInValidReponse() {
        JsonObject result = RestHelper.getInstance().parseJsonResponse(response);
        Assert.assertEquals("Error code is 400", 400, response.getStatusCode());
        Assert.assertEquals("Required error message is displayed : Required String[] parameter 'contractNumbers' is not present :", "Required String[] parameter 'contractNumbers' is not present", result.get("message").getAsString());
    }

    @Then("^The contract data is sent back to PIC or Examiner$")
    public void validateValidResponse(){
        JsonObject result = RestHelper.getInstance().parseJsonResponse(response);
        //List<String> keys

    }

    @When("^The REST service is unavailable$")
    public void verifyServiceUnavailable(){
        //need to add code to automatically down the service and up the service, post this scenario execution
        response = request.request(Method.GET);
        Assert.assertEquals("Rest Service needs to be down but it is available (up and running)", 503, response.getStatusCode());
    }

    @Then("^An server error will be returned$")
    public void verifyServerError(){
        Assert.assertEquals("Server doesn't returned 503 error code", 503, response.statusCode());
    }
}

