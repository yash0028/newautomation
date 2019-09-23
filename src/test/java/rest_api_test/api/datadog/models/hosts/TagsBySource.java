
package rest_api_test.api.datadog.models.hosts;

import java.util.List;
import javax.annotation.Generated;
import com.google.gson.annotations.SerializedName;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class TagsBySource {

    @SerializedName("Datadog")
    private List<String> datadog;

    public List<String> getDatadog() {
        return datadog;
    }

    public void setDatadog(List<String> datadog) {
        this.datadog = datadog;
    }

}
