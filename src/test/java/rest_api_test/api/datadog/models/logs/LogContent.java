
package rest_api_test.api.datadog.models.logs;

import java.util.List;
import javax.annotation.Generated;
import com.google.gson.annotations.Expose;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class LogContent {

    @Expose
    private LogAttributes logAttributes;
    @Expose
    private String host;
    @Expose
    private String message;
    @Expose
    private String service;
    @Expose
    private List<String> tags;
    @Expose
    private String timestamp;

    public LogAttributes getLogAttributes() {
        return logAttributes;
    }

    public void setLogAttributes(LogAttributes logAttributes) {
        this.logAttributes = logAttributes;
    }

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public List<String> getTags() {
        return tags;
    }

    public void setTags(List<String> tags) {
        this.tags = tags;
    }

    public String getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp;
    }

}
