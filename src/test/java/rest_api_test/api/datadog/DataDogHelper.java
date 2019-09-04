package rest_api_test.api.datadog;

import com.google.gson.JsonObject;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.datadog.models.logs.LogsListResponse;

import javax.annotation.Nullable;

import static org.hamcrest.Matchers.equalTo;

import java.io.FileInputStream;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Properties;

public class DataDogHelper implements IDataDogInteract {
    private static final Logger log = LoggerFactory.getLogger(DataDogHelper.class);
    private static final String ENDPOINT = "https://api.datadoghq.com";
    private static String API_KEY;
    private static String APPLICATION_KEY;

    public DataDogHelper() {
        // load properties file
        Properties ddProps = new Properties();
        String configPath = "src/test/resources/configurations/datadog.properties";

        try{
            ddProps.load(new FileInputStream(configPath));
        } catch(Exception e) {
            System.err.println("Unable to initialize DataDogHelper: "+ e.getMessage());
        }

        API_KEY = ddProps.getProperty("datadog.api_key");
        APPLICATION_KEY = ddProps.getProperty("datadog.application_key");
    }

    @Override
    public boolean authCheck() {
        RequestSpecification request = RestAssured.given().baseUri(ENDPOINT)
                .param("api_key", API_KEY);
        Response response = request.get("api/v1/validate");

        response.then().body("valid", equalTo(true));
        return true;
    }


    /*
     *  fromTime: earliest point to search logs, default last 30 mins
     *  limit: from 1 to 1000, default 10
     *  sort: asc or desc, default desc
     */
    public LogsListResponse getLogsList(String query,
                                        @Nullable OffsetDateTime fromTime,
                                        @Nullable Integer limit,
                                        @Nullable String sort) {
        RequestSpecification request = RestAssured.given().baseUri(ENDPOINT)
                .queryParam("api_key", API_KEY)
                .queryParam("application_key", APPLICATION_KEY);
        request.contentType(ContentType.JSON);
        JsonObject requestBody = new JsonObject();

        JsonObject timeBox = new JsonObject();
        timeBox.addProperty("to", "now");
        fromTime = (fromTime == null) ? OffsetDateTime.now().minus(30, ChronoUnit.MINUTES) : fromTime;
        timeBox.addProperty("from", fromTime.format(DateTimeFormatter.ISO_OFFSET_DATE_TIME));
        requestBody.add("time", timeBox);

        requestBody.addProperty("query", query);
        limit = (limit == null) ? 10 : limit;
        requestBody.addProperty("limit", limit);
        sort = (sort == null) ? "desc" : sort;
        requestBody.addProperty("sort", sort);

        request.body(requestBody.toString());
        Response response = request.post("api/v1/logs-queries/list");
        LogsListResponse logsListResponse = response.as(LogsListResponse.class);

        return logsListResponse;
    }
}
