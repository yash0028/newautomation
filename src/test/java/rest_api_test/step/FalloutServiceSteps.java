package rest_api_test.step;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import io.restassured.response.Response;
import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.fallout.IFalloutInteract;
import rest_api_test.api.fallout.model.ContractStatus;
import rest_api_test.api.fallout.model.PageTransactionContract;
import rest_api_test.api.fallout.model.WorkObjectItem;
import rest_api_test.api.fallout.model.contract.ContractModel;
import rest_api_test.api.fallout.model.contract.ProductDetail;
import rest_api_test.util.IRestStep;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by aberns on 6/29/2018.
 */
public class FalloutServiceSteps implements IRestStep, IFalloutInteract {
    private static final Logger log = LoggerFactory.getLogger(FalloutServiceSteps.class);

    private Response response;

    public FalloutServiceSteps(){
    }

    //US1374416 - CMD - Create fallout-service REST endpoints for Contract Management Dashboard

    //TEST CASE :: query work objects

    @When("^I send the work object status \"([^\"]*)\" to the work object endpoint$")
    public void sendStatus(String status) throws Throwable {
        response = falloutQueryWorkObjects(status).getResponse();

        Assert.assertEquals(200, response.getStatusCode());
    }

    @Then("^the response includes a number of transaction ids with the status of \"([^\"]*)\"$")
    public void listFromStatus(String status) throws Throwable {
        JsonElement result = parseJsonElementResponse(response);
        Assert.assertTrue(result.isJsonObject());

        int count = result.getAsJsonObject().get("numberOfElements").getAsInt();
        JsonElement content = result.getAsJsonObject().get("content");
        if (content != null && content.isJsonArray()) {
            Assert.assertEquals("content array is diffrent than reported size", count, content.getAsJsonArray().size());
        } else {
            Assert.assertEquals("count should be zero since content array is missing", 0, count);
        }
    }

    //TEST CASE :: query flag to load override

    @When("^I send the transaction id \"([^\"]*)\" to work object complete endpoint$")
    public void queryCompleteWorkObjects(String tid) throws Throwable {
        response = falloutCompleteTransaction(tid);
        log.info("response: {}", response.asString());

        Assert.assertEquals(200, response.getStatusCode());
    }

    @Then("^the work object is completed$")
    public void checkCompleteWorkObject() throws Throwable {
        JsonElement jsonElement = parseJsonElementResponse(response);
        log.info(jsonElement.toString());
        Assert.assertTrue(jsonElement.isJsonPrimitive());
        Assert.assertTrue(jsonElement.getAsBoolean());
    }

    //TEST CASE :: update work object item contract master

    @When("^I send the following payload to update contract master work object$")
    public void updateWorkObject(DataTable dataTable) throws Throwable {
        getPayload().put2ColDataTable(dataTable);
        response = falloutUpdateWorkObjectItemContractMaster(getPayload());

        Assert.assertEquals(200, response.getStatusCode());
    }

    @Then("^the contract master is updated$")
    public void verifyContractMasterUpdate() throws Throwable {
        JsonElement jsonElement = parseJsonElementResponse(response);
        log.info(jsonElement.toString());

        Thread.sleep(1000);

        WorkObjectItem item = falloutQueryWorkObjectItem(getPayload().getString("id")); //queryWorkObjectItem(getPayload().get("id"));
        Assert.assertTrue( !item.getContractMasters().isEmpty());


//        List<JsonObject> checkList = new ArrayList<>();
//        for (JsonElement element : jsonCheck.getAsJsonObject().get("contractMasters").getAsJsonArray()) {
//            Assert.assertTrue(element.isJsonObject());
//            checkList.add(element.getAsJsonObject());
//        }
//        Assert.assertTrue( checkList.size() > 0);

        final String pSelectId = getPayload().getString("selectedContractMaster");
        final String pUsage = getPayload().getString("usage");

        Assert.assertTrue( item.getContractMasters().stream()
                .filter(cm -> pSelectId.equalsIgnoreCase(String.valueOf(cm.getId())) || pSelectId.equalsIgnoreCase(cm.getContractMasterNumber()))
                .anyMatch(cm -> pUsage.equalsIgnoreCase(cm.getStatus())));
    }

    //TEST CASE :: query product group list by transaction id

    @When("^I send the transaction id \"([^\"]*)\" to products group endpoint$")
    public void queryProductGroupList(String tid) throws Throwable {
        response = falloutQueryProductGroups(tid).getResponse();
        Assert.assertEquals(200, response.getStatusCode());
    }

    @Then("^the response includes valid product groups$")
    public void verifyProductGroup() throws Throwable {
        JsonElement jsonElement = parseJsonElementResponse(response);
        log.info(jsonElement.toString());
        Assert.assertTrue(jsonElement.isJsonArray());
    }

    //TEST CASE :: update work object item ready

    @When("^I send the following payload to update work object ready state$")
    public void updateWorkObjectReady(DataTable dataTable) throws Throwable {
        getPayload().put2ColDataTable(dataTable);
        response = falloutUpdateWorkObjectItemReady(getPayload());

        Assert.assertEquals(200, response.getStatusCode());
    }

    @Then("^the work object is ready$")
    public void theWorkObjectIsReady() throws Throwable {
        JsonElement jsonElement = parseJsonElementResponse(response);
        log.info(jsonElement.toString());

        Assert.assertTrue(jsonElement.isJsonNull());
    }

    //TEST CASE :: query work object item

    @When("^I send the id \"([^\"]*)\" to the work object items endpoint$")
    public void queryWorkObjectItem(String id) throws Throwable {
        response = falloutQueryWorkObjectItem(id).getResponse();
        Assert.assertEquals(200, response.getStatusCode());
    }

    @Then("^the response includes valid contract data$")
    public void theResponseIncludesValidContractData() throws Throwable {
        JsonElement jsonElement = parseJsonElementResponse(response);
        log.info(jsonElement.toString());
        Assert.assertTrue(jsonElement.isJsonObject());

        JsonObject jsonObject = jsonElement.getAsJsonObject();
        Assert.assertTrue(jsonObject.has("id"));
        Assert.assertTrue(jsonObject.has("status"));
        Assert.assertTrue(jsonObject.has("type"));
        Assert.assertTrue(jsonObject.has("feeSchedule"));
    }

    //TEST CASE :: rerun work object

    @When("^I send the transaction id \"([^\"]*)\" to load contract endpoint$")
    public void rerunContract(String tid) throws Throwable {
        response = falloutRerunWorkObject(tid);
        Assert.assertEquals(200, response.getStatusCode());
    }

    @Then("^the contract is rerun$")
    public void verifyContractRerun() throws Throwable {
        JsonElement jsonElement = parseJsonElementResponse(response);
        log.info(jsonElement.toString());
    }

    //TEST CASE :: query work object count

    @When("^I send a request to the work object count endpoint$")
    public void queryWorkObjectCount() throws Throwable {
        response = falloutQueryWorkObjectCount().getResponse();
        Assert.assertEquals(200, response.getStatusCode());
    }

    @Then("^the response includes the current count$")
    public void theResponseIncludesTheCurrentCount() throws Throwable {
        JsonElement jsonElement = parseJsonElementResponse(response);
        log.info(jsonElement.toString());
        Assert.assertTrue(jsonElement.isJsonObject());
        Assert.assertTrue(jsonElement.getAsJsonObject().get("result").isJsonPrimitive());
        Assert.assertTrue(jsonElement.getAsJsonObject().get("count").isJsonPrimitive());
    }

    //TEST CASE :: query work object ready

    @When("^I send the transaction id \"([^\"]*)\" to the ready work object endpoint$")
    public void iSendTheTransactionIdToTheReadyWorkObjectEndpoint(String tid) throws Throwable {
        response = falloutReadyTransaction(tid);
        Assert.assertEquals(200, response.getStatusCode());
    }

    @Then("^the response includes the ready status of the work object$")
    public void theResponseIncludesTheReadyStatusOfTheWorkObject() throws Throwable {
        JsonElement jsonElement = parseJsonElementResponse(response);
        log.info(jsonElement.toString());
        Assert.assertFalse(jsonElement.isJsonObject());
    }

    @And("Network Access Code stored as part of the OCM")
    public void networkAccessCodeStoredAsPartOfTheOCM() {
        // get newest successful contract install
        PageTransactionContract contracts = falloutQueryTransactionContracts(ContractStatus.SUCCESS);
        String txId = contracts.getContent().get(0).getTransactionId();
        ContractModel myContract = falloutQueryContractModel(txId);
        // verify that the NetworkAccessCode field is present in some productDetails
        List<ProductDetail> productDetails = myContract.getProductDetails().stream()
                .filter(n -> !n.getNetworkAccessCode().isEmpty())
                .collect(Collectors.toList());
        Assert.assertTrue( !productDetails.isEmpty());
    }
}
