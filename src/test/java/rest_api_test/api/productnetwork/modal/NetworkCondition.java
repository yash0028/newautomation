
package rest_api_test.api.productnetwork.modal;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class NetworkCondition {

    @Expose
    private String networkCondition;
    @Expose
    private String networkId;

    public String getNetworkCondition() {
        return networkCondition;
    }

    public String getNetworkId() {
        return networkId;
    }

    public static class Builder {

        private String condition;
        private String networkId;

        public NetworkCondition.Builder withNetworkCondition(String condition) {
            this.condition = condition;
            return this;
        }

        public NetworkCondition.Builder withNetworkId(String networkId) {
            this.networkId = networkId;
            return this;
        }

        public NetworkCondition build() {
            NetworkCondition networkCondition = new NetworkCondition();
            networkCondition.networkCondition = condition;
            networkCondition.networkId = networkId;
            return networkCondition;
        }

    }

}
