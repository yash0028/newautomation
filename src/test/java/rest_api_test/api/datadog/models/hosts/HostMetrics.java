
package rest_api_test.api.datadog.models.hosts;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class HostMetrics {

    @Expose
    private Double cpu;
    @Expose
    private Double iowait;
    @Expose
    private Double load;

    public Double getCpu() {
        return cpu;
    }

    public void setCpu(Double cpu) {
        this.cpu = cpu;
    }

    public Double getIowait() {
        return iowait;
    }

    public void setIowait(Double iowait) {
        this.iowait = iowait;
    }

    public Double getLoad() {
        return load;
    }

    public void setLoad(Double load) {
        this.load = load;
    }

}
