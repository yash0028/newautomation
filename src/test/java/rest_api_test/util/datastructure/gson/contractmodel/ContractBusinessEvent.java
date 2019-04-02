
package rest_api_test.util.datastructure.gson.contractmodel;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class ContractBusinessEvent {

    @Expose
    private String contractTransactionID;
    @Expose
    private String eventName;
    @Expose
    private String timestamp;

    public String getContractTransactionID() {
        return contractTransactionID;
    }

    public String getEventName() {
        return eventName;
    }

    public String getTimestamp() {
        return timestamp;
    }

    public static class Builder {

        private String contractTransactionID;
        private String eventName;
        private String timestamp;

        public ContractBusinessEvent.Builder withContractTransactionID(String contractTransactionID) {
            this.contractTransactionID = contractTransactionID;
            return this;
        }

        public ContractBusinessEvent.Builder withEventName(String eventName) {
            this.eventName = eventName;
            return this;
        }

        public ContractBusinessEvent.Builder withTimestamp(String timestamp) {
            this.timestamp = timestamp;
            return this;
        }

        public ContractBusinessEvent build() {
            ContractBusinessEvent contractBusinessEvent = new ContractBusinessEvent();
            contractBusinessEvent.contractTransactionID = contractTransactionID;
            contractBusinessEvent.eventName = eventName;
            contractBusinessEvent.timestamp = timestamp;
            return contractBusinessEvent;
        }

    }

}
