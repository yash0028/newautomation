package rest_api_test.api.datastructure.gson.eventgateway;

import com.google.gson.annotations.Expose;
import rest_api_test.api.datastructure.type.BusinessEventType;
import util.TimeKeeper;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class BusinessEvent {

    @Expose
    private String contractId;
    @Expose
    private String eventName;
    @Expose
    private String orderId;
    @Expose
    private String timestamp;
    @Expose
    private String transactionId;
    @Expose
    private String userId;

    public String getContractId() {
        return contractId;
    }

    public String getEventName() {
        return eventName;
    }

    public String getOrderId() {
        return orderId;
    }

    public String getTimestamp() {
        return timestamp;
    }

    public String getTransactionId() {
        return transactionId;
    }

    public String getUserId() {
        return userId;
    }

    public static class Builder {

        private String contractId;
        private BusinessEventType eventName;
        private String orderId = "";
        private String timestamp = TimeKeeper.getInstance().getCurrentEpochSeconds();
        private String transactionId = " ";
        private String userId = "clmqe1";

        public BusinessEvent.Builder withContractId(String contractId) {
            this.contractId = contractId;
            return this;
        }

        public BusinessEvent.Builder withEventName(BusinessEventType eventName) {
            this.eventName = eventName;
            return this;
        }

        public BusinessEvent.Builder withOrderId(String orderId) {
            this.orderId = orderId;
            return this;
        }

        public BusinessEvent.Builder withTimestamp(String timestamp) {
            this.timestamp = timestamp;
            return this;
        }

        public BusinessEvent.Builder withTransactionId(String transactionId) {
            this.transactionId = transactionId;
            return this;
        }

        public BusinessEvent.Builder withUserId(String userId) {
            this.userId = userId;
            return this;
        }

        public BusinessEvent build() {
            BusinessEvent businessEvent = new BusinessEvent();
            businessEvent.contractId = contractId;
            businessEvent.eventName = eventName.eventName;
            businessEvent.orderId = orderId;
            businessEvent.timestamp = timestamp;
            businessEvent.transactionId = transactionId;
            businessEvent.userId = userId;
            return businessEvent;
        }

    }

}
