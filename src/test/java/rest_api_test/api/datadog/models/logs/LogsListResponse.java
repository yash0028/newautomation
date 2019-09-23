
package rest_api_test.api.datadog.models.logs;

import java.util.List;
import javax.annotation.Generated;
import com.google.gson.annotations.Expose;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class LogsListResponse {

    @Expose
    private List<Log> logs;
    @Expose
    private String nextLogId;
    @Expose
    private String requestId;
    @Expose
    private String status;

    public List<Log> getLogs() {
        return logs;
    }

    public void setLogs(List<Log> logs) {
        this.logs = logs;
    }

    public String getNextLogId() {
        return nextLogId;
    }

    public void setNextLogId(String nextLogId) {
        this.nextLogId = nextLogId;
    }

    public String getRequestId() {
        return requestId;
    }

    public void setRequestId(String requestId) {
        this.requestId = requestId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}
