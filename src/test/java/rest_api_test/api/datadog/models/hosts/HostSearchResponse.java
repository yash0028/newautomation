
package rest_api_test.api.datadog.models.hosts;

import java.util.List;
import javax.annotation.Generated;
import com.google.gson.annotations.SerializedName;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class HostSearchResponse {

    @SerializedName("exact_total_matching")
    private Boolean exactTotalMatching;
    @SerializedName("host_list")
    private List<HostInfo> hostInfo;
    @SerializedName("total_matching")
    private Integer totalMatching;
    @SerializedName("total_returned")
    private Integer totalReturned;

    public Boolean getExactTotalMatching() {
        return exactTotalMatching;
    }

    public void setExactTotalMatching(Boolean exactTotalMatching) {
        this.exactTotalMatching = exactTotalMatching;
    }

    public List<HostInfo> getHostInfo() {
        return hostInfo;
    }

    public void setHostInfo(List<HostInfo> hostInfo) {
        this.hostInfo = hostInfo;
    }

    public Integer getTotalMatching() {
        return totalMatching;
    }

    public void setTotalMatching(Integer totalMatching) {
        this.totalMatching = totalMatching;
    }

    public Integer getTotalReturned() {
        return totalReturned;
    }

    public void setTotalReturned(Integer totalReturned) {
        this.totalReturned = totalReturned;
    }

}
