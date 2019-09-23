package rest_api_test.api.datadog;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import rest_api_test.api.IRestApi;
import rest_api_test.api.datadog.models.hosts.HostSearchResponse;
import rest_api_test.api.datadog.models.logs.LogsListResponse;

import javax.annotation.Nullable;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;

public interface IDataDogInteract extends IRestApi {
    Logger log = LoggerFactory.getLogger(IDataDogInteract.class);

    boolean authCheck();

    LogsListResponse getLogsList(String query);

    HostSearchResponse searchHosts();
}
