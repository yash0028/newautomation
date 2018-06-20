package StepDefinitions;

import com.google.gson.JsonObject;
import cucumber.api.DataTable;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.config.DecoderConfig;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.apache.http.entity.ContentType;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static io.restassured.RestAssured.given;
import static org.junit.Assert.assertTrue;

/**
 * Created by jwacker on 6/13/2018.
 */
public class RFPSteps {
    private RequestSpecification request;
    private Response response;
    private Map<String, String> requestParams = new HashMap<String, String>();
    private static String baseUri  = "http://request-for-part-api-clm-dev.ocp-ctc-dmz-nonprod.optum.com";
    private static String endPoint = "/v1.0/participation_requests";
    private Map<String, String> fieldMap = new HashMap<String, String>();
    private Map<String, String> sampleValueMap = new HashMap<String, String>();
    private static String samplePlaceOfService = "AL";
    private static String sampleOrgType = "021";
    private static String sampleSpecialty = "Dentist";

    public RFPSteps(){
        //Map all the fields to the name they're reflected as in the service
        fieldMap.put("Place of Service","place_of_service");
        fieldMap.put("Specialty Type","specialty");
        fieldMap.put("Organization Type","org_type");
        fieldMap.put("Credentialing Required","credentialingRequired");
        fieldMap.put("Super Script","superscript1");
        fieldMap.put("Credentialing Entity","credentialingEntity");
        fieldMap.put("Accepting Applications (E&I)","acceptingEmployerAndIndividual");
        fieldMap.put("Accepting Applications (C&S)","acceptingCommunityAndState");
        fieldMap.put("Accepting Applications (M&V)","acceptingMilitaryAndVeterans");

        //populate the request fields with sample values
        sampleValueMap.put("Place of Service", samplePlaceOfService);
        sampleValueMap.put("Specialty Type", sampleSpecialty);
        sampleValueMap.put("Organization Type", sampleOrgType);

    }
//F164312

    //US1082300

    @Given("^a request with the following fields:$")
    public void aRequestWithTheFollowingFields(DataTable fieldsDT) throws Throwable {
        List<String> fields = fieldsDT.asList(String.class);

        for(String field: fields){
            requestParams.put(fieldMap.getOrDefault(field, ""), sampleValueMap.getOrDefault(field, ""));
        }

    }

    @When("^the request is made to the RFP service$")
    public void theRequestIsMadeToTheRFPService() throws Throwable {

        request = given().baseUri(baseUri).header("Content-Type", "application/x-www-form-urlencoded").formParams(requestParams);

    }

    @Then("^the following fields should be returned:$")
    public void theFollowingFieldsShouldBeReturned(DataTable fieldsDT) throws Throwable {
        boolean match         = true;
        List<String> fields   = fieldsDT.asList(String.class);

        response              = request.get(endPoint);
        String responseString = response.asString().toLowerCase();

//        System.out.println("RESPONSE: " + responseString);

        for(String field: fields){
            field = field.trim();

            if(!responseString.contains(fieldMap.getOrDefault(field, "").toLowerCase())){
                match = false;
//                System.out.println("-----FAILED FIELD: " + field);
            }
        }
        assertTrue(match);
    }

    //US1035921

    @Given("^the provider's (Specialty|Org Type) \"([^\"]*)\" is passed to the RFP service$")
    public void theProviderSSpecialtyIsPassedToTheRFPService(String parameterType, String value) throws Throwable {
        String propertyName = "";

        //Change request property value to whatever is mentioned in feature file (for 'Specialty' or 'Org Type')
        if(parameterType.equalsIgnoreCase("Specialty")){
            propertyName = "specialty";
        } else {
            propertyName = "orgType";
        }

        requestParams.put(propertyName, value);
        requestParams.put(fieldMap.get("Place of Service"), sampleValueMap.get("Place of Service"));

        request = given().baseUri(baseUri).header("Content-Type", "application/x-www-form-urlencoded").formParams(requestParams);
    }

    @When("^finding the (?:Specialty|Org Type) in RFP$")
    public void findingTheSpecialtyInRFP() throws Throwable {

        response = request.get(endPoint);
        System.out.println("RESPONSE: " + response.asString());

    }

    @Then("^the RFP service will return a \"([^\"]*)\" value$")
    public void theRFPServiceWillReturnAValue(String value) throws Throwable {

        assertTrue(response.asString().toLowerCase().contains(value.toLowerCase()));

    }
}
