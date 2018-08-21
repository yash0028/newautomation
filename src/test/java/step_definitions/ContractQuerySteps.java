package step_definitions;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;
import utils.RestHelper;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import static io.restassured.RestAssured.given;

/**
 * Created by aberns on 8/14/2018.
 */
public class ContractQuerySteps {

    private static final String BASE_URI = "http://contracts-query-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static final String ENDPOINT = "/v1.0/exari/ecm";

    private static final String ECM_MASTER = "businessEventDetails\n" +
            "contractDetails.capture\n" +
            "contractDetails.contractFolderName\n" +
            "contractDetails.contractName\n" +
            "contractDetails.contractOwner\n" +
            "contractDetails.contractStructure\n" +
            "contractDetails.contractTitle\n" +
            "contractDetails.contractValueCommitted\n" +
            "contractDetails.counterpartyLegalName\n" +
            "contractDetails.created\n" +
            "contractDetails.createInParentFolder\n" +
            "contractDetails.dateEffective\n" +
            "contractDetails.dateExpiry\n" +
            "contractDetails.dealID\n" +
            "contractDetails.dealName\n" +
            "contractDetails.externalID\n" +
            "contractDetails.hasDraft\n" +
            "contractDetails.masterAgreement\n" +
            "contractDetails.modified\n" +
            "contractDetails.ourLegalName\n" +
            "contractDetails.parentContractID\n" +
            "contractDetails.status\n" +
            "contractDetails.storageNode\n" +
            "contractDetails.storageNode.properties.mpin_tin\n" +
            "contractDetails.storageNode.properties.UHG_CounterpartyAddressCity\n" +
            "contractDetails.storageNode.properties.UHG_CounterpartyAddressStreet\n" +
            "contractDetails.storageNode.properties.UHG_CounterpartyAddressZip\n" +
            "contractDetails.storageNode.properties.uhg_Market_Number_DMCQ\n" +
            "contractDetails.superStatus\n" +
            "contractDetails.workflowInstances\n" +
            "contractID\n" +
            "contractOrders\n" +
            "contractTransactions\n" +
            "contractTransactions.storageNode\n" +
            "docGenID\n" +
            "providerRoster\n" +
            "siteInfo\n" +
            "supportingDocuments\n" +
            "templateDocument\n" +
            "templateDocument.storageNode\n" +
            "type\n" +
            "workflowInstances\n";

    //    private JsonObject payload;
    private RequestSpecification request;
    private Response response;


    @Given("^the Domain Service has received a business event from Exari$")
    public void buildValidRequest() throws Throwable {
        this.request = given().baseUri(BASE_URI).header("Content-Type", "application/json");
    }

    @When("^the Domain Service queries for additional contract details from Exari$")
    public void getValidResponse() throws Throwable {
        response = request.param("contractId", "455293").get(ENDPOINT);
    }

    @Then("^the Domain Service receives the Exari contract model$")
    public void checkValidResponse() throws Throwable {
        JsonObject result = RestHelper.getInstance().parseJsonResponse(response);
        Assert.assertEquals("Unexpected response", 200, result.get("responseCode").getAsInt());

        String tempMessage = result.get("responseMessage").getAsString();
        JsonObject ecm = RestHelper.getInstance().parseJsonString(tempMessage);

        System.out.println(ecm.size());
        verifyECM(ecm);
    }

    @When("^the Domain Service queries for invalid contract details from Exari$")
    public void getInvalidResponse() throws Throwable {
        response = request.param("contractId", "455292").get(ENDPOINT);
    }

    @Then("^the Domain Service returns a service error$")
    public void checkInvalidResponse() throws Throwable {
        JsonObject result = RestHelper.getInstance().parseJsonResponse(response);
        Assert.assertEquals("Unexpected response: should have received a service error", 500, result.get("responseCode").getAsInt());
    }

    @Deprecated
    private void verifyExariContractModel(JsonObject ecm) throws Throwable {
        String[] ecmKeySet = ECM_MASTER.split("\n");

        for (String key : ecmKeySet) {
            String trimmedKey = key.trim();
            //Shallow Check
            if (!trimmedKey.contains(".")) {
                Assert.assertTrue("Found that the ecm object does not have the key " + trimmedKey, ecm.has(trimmedKey));
            } else {
                //Perform deep check

                //Get each sub key
                List<String> keySetDeep = Arrays.stream(trimmedKey.split("\\.")).map(String::trim).collect(Collectors.toList());
//                List<String> keySetDeep = Arrays.asList(trimmedKey.split("."));

                //Set current json to the ecm
                JsonObject currJson = ecm;
                StringBuilder path = new StringBuilder();

//                System.out.println(">>> " + keySetDeep + " :: " + trimmedKey);

                //Check each level
                //If no asserts failed, then ecm has each key found in the ECM_MASTER row
                for (int i = 0; i < keySetDeep.size(); i++) {
                    String trimmedDeepKey = keySetDeep.get(i).trim();
                    path.append(trimmedDeepKey);

//                    System.out.println(path.toString());

                    //Check that current json has the key in keySetDeep[i]
                    if (!currJson.has(trimmedDeepKey)) {
//                        Assert.fail("Found that the ecm object does not have the key " + path.toString() + " within the key set " + currJson.keySet());
                        System.out.println("----- Missing key " + path.toString());
                        if (trimmedDeepKey.contains("storage")) {
                            System.out.println(currJson.keySet());
                        }
//                        break;
                    }
//                        Assert.assertTrue("Found that the ecm object does not have the key " + path.toString() + " within the key set " + currJson.keySet(), currJson.has(trimmedDeepKey));

                    try {

                        if (currJson.get(trimmedDeepKey).isJsonArray()) {
                            path.append("[0]");
                            System.out.println("### array :: " + path.toString());
                            currJson = currJson.getAsJsonArray().get(0).getAsJsonObject();
                        } else if (currJson.get(trimmedDeepKey).isJsonPrimitive()) {
                            //skip
//                            System.out.println("### primitive :: " + path.toString());
                        } else if (currJson.get(trimmedDeepKey).isJsonNull()) {
                            //skip
//                            System.out.println("### null :: " + path.toString());
                        } else {
                            //Update current json to be the value we just checked
                            System.out.println("### object :: " + path.toString());
                            currJson = currJson.get(trimmedDeepKey).getAsJsonObject();
                        }

                    } catch (Exception e) {
//                        System.out.println("^Skipped " + trimmedDeepKey);
//                        e.printStackTrace();
                    }

                    //Do only if not the end
                    if (i < keySetDeep.size() - 1) {
                        path.append(".");
                    }
                }
            }
        }
        System.out.println(ecm.get("contractTransactions").getAsJsonArray().get(0).getAsJsonObject().keySet());
    }

    private void verifyECM(JsonElement ecmRoot) throws Throwable {
        List<String> masterSet = Arrays.stream(ECM_MASTER.split("\n")).map(String::trim).collect(Collectors.toList());
        int failCount = 0;

        for (String masterKey : masterSet) {
            List<String> deepKeySet = Arrays.stream(masterKey.split("\\.")).map(String::trim).collect(Collectors.toList());
            StringBuilder traveledPath = new StringBuilder("ecmObject");
            boolean tempTest = verifySingleKey(deepKeySet, 0, ecmRoot, traveledPath);
            if (tempTest) {
                UtilSteps.write2Scenario("Found all keys for " + traveledPath.toString());
            } else {
                failCount++;
            }
        }

        Assert.assertEquals("At least 1 key set did not exist", 0, failCount);
    }

    private boolean verifySingleKey(List<String> keySet, int index, JsonElement currJson, StringBuilder traveledPath) throws Throwable {
        JsonElement nextJson;

        //Move into array
        while (currJson.isJsonArray() && currJson.getAsJsonArray().size() > 0) {
            currJson = currJson.getAsJsonArray().get(0);
            traveledPath.append("[0]");
        }

        //Check that the previous json is still usable and not at the end of the check
        if (index >= keySet.size()) {
            return true;
        }

        String errorMessage = "Missing key <" + keySet.get(index) + "> in " + traveledPath.toString();
//        Assert.assertTrue(errorMessage, currJson.getAsJsonObject().has(keySet.get(index)));
        if (currJson.isJsonPrimitive() || currJson.isJsonNull() || currJson.isJsonArray() || !currJson.getAsJsonObject().has(keySet.get(index))) {
            UtilSteps.write2Scenario(errorMessage);
            return false;
        }

        nextJson = currJson.getAsJsonObject().get(keySet.get(index));
        traveledPath.append(".").append(keySet.get(index));
        return verifySingleKey(keySet, index + 1, nextJson, traveledPath);
    }
}
