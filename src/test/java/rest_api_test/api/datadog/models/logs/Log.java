
package rest_api_test.api.datadog.models.logs;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class Log {

    @Expose
    private LogContent logContent;
    @Expose
    private String id;

    public LogContent getLogContent() {
        return logContent;
    }

    public void setLogContent(LogContent logContent) {
        this.logContent = logContent;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

}
