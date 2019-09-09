package rest_api_test.api.datadog;

import com.google.gson.JsonObject;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.datadog.models.hosts.HostSearchResponse;
import rest_api_test.api.datadog.models.logs.LogsListResponse;
import javax.annotation.Nullable;
import java.io.FileInputStream;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Properties;
import static org.hamcrest.Matchers.equalTo;


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

    /**
     *  Get/Search Logs
     *
     *  fromTime: earliest point to search logs, default last 30 mins
     *  limit: from 1 to 1000, default 10
     *  sort: asc or desc, default desc
     */
    public LogsListResponse getLogsList(String query) {
        return getLogsList(query, null, null, null);
    }
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
        assert(response.getStatusCode() == 200);
        LogsListResponse logsListResponse = response.as(LogsListResponse.class);

        return logsListResponse;
    }

    /**
     * SearchHosts:
     *
     * filter [optional, default=None]: Query string to filter search results.
     * sort_field [optional, default=cpu]: Sort hosts by the given field. Options: status, apps, cpu, iowait, load
     * sort_dir [optional, default=desc]: Direction of sort. Options: asc, desc
     * start [optional, default=0]: Host result to start search from.
     * count [optional, default=100]: Number of host results to return. Max 100.
     */
    public HostSearchResponse searchHosts() {
        return searchHosts(null, null, null, null, null);
    }
    public HostSearchResponse searchHosts(@Nullable String filter,
                                          @Nullable String sort_field,
                                          @Nullable String sort_dir,
                                          @Nullable Integer start,
                                          @Nullable Integer count) {
        RequestSpecification request = RestAssured.given().baseUri(ENDPOINT)
                .queryParam("api_key", API_KEY)
                .queryParam("application_key", APPLICATION_KEY);
        request.contentType(ContentType.JSON);

        if(filter != null) {
            request.queryParam("filter", filter);
        }
        if(sort_field != null) {
            request.queryParam("sort_field", sort_field);
        }
        if(sort_dir != null) {
            request.queryParam("sort_dir", sort_dir);
        }
        if(start != null) {
            request.queryParam("start", start);
        }
        if(count != null) {
            request.queryParam("count", count);
        }

        Response response = request.get("api/v1/hosts");
        assert(response.getStatusCode() == 200);
        HostSearchResponse hostSearchResponse = response.as(HostSearchResponse.class);

        return hostSearchResponse;
    }
}
