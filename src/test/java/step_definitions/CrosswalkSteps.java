package step_definitions;

import java.util.logging.Logger;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import pages.CrosswalkPage;
import utils.SeleniumHelper;
import org.openqa.selenium.support.ui.Select;
import org.junit.Assert;

import com.google.gson.JsonObject;
import cucumber.api.PendingException;
import cucumber.api.java.en.*;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

import static io.restassured.RestAssured.given;

public class CrosswalkSteps {

    private static Logger logger = Logger.getLogger("CrosswalkSteps");
    private CrosswalkPage crosswalkPage = null;

    public static final String ENDPOINT = "";
    public static final String RESOURCE_PRODUCTCODES = "/productcodes";

    private RequestSpecification request;
    private Response response;

    @When("^the product codes are called from the crosswalk tables$")
    public void getProductCodes() throws Throwable {
        this.request = given().baseUri(ENDPOINT).header("Content-Type", "application/json").body(getPayload());
        this.response = request.post(RESOURCE_PRODUCTCODES);
        Assert.assertEquals(200, response.getStatusCode());
    }

    @Then("^the correct product codes are returned\\.$")
    public void theCorrectProductCodesAreReturned() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    private JsonObject getPayload() {
        JsonObject jsonObject = new JsonObject();
        //TODO
        return jsonObject;
    }

    @Given("^the application screen is ready$")
    public void navigateToContractAdminUI() {
        //This works only in local machine, need to setup env in docker
        /*SeleniumHelper.launchBrowser("chrome");
        SeleniumHelper.getWebDriver().get("http://contract-admin-ui-clm-dev.ocp-ctc-dmz-nonprod.optum.com/metadata");
        crosswalkPage = CrosswalkPage.getCrosswalkPage();
        Assert.assertNotNull("Crosswalk page not displayed", crosswalkPage);*/
        throw new PendingException();
    }

    @Given("^a file is uploaded$")
    public void uploadFile() {
        //need to implement - a file is uploaded
        throw new PendingException();
    }

    @Given("^the previous file record and audit log info is stored in the database$")
    public void previous_versions() {
        //need to implement - the previous file record and audit log info is stored in the database
        throw new PendingException();
    }
}
