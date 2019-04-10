
package rest_api_test.api.datastructure.gson.fallout;

import com.google.gson.annotations.Expose;
import io.restassured.response.Response;

import javax.annotation.Generated;
import java.util.List;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class WorkObjectItem {

    @Expose
    private String comsosContractNumber;
    @Expose
    private String comsosDiv;
    @Expose
    private String comsosPanel;
    @Expose
    private List<ContractMaster> contractMasters;
    @Expose
    private String feeSchedule;
    @Expose
    private Long id;
    @Expose
    private String ndbMarketNumber;
    @Expose
    private String ndbProductCode;
    @Expose
    private String status;
    @Expose
    private Long timestamp;
    @Expose
    private String transactionId;
    @Expose
    private String type;

    private Response response;

    public Response getResponse() {
        return response;
    }

    public void setResponse(Response response) {
        this.response = response;
    }

    public String getComsosContractNumber() {
        return comsosContractNumber;
    }

    public String getComsosDiv() {
        return comsosDiv;
    }

    public String getComsosPanel() {
        return comsosPanel;
    }

    public List<ContractMaster> getContractMasters() {
        return contractMasters;
    }

    public String getFeeSchedule() {
        return feeSchedule;
    }

    public Long getId() {
        return id;
    }

    public String getNdbMarketNumber() {
        return ndbMarketNumber;
    }

    public String getNdbProductCode() {
        return ndbProductCode;
    }

    public String getStatus() {
        return status;
    }

    public Long getTimestamp() {
        return timestamp;
    }

    public String getTransactionId() {
        return transactionId;
    }

    public String getType() {
        return type;
    }

    public static class Builder {

        private String comsosContractNumber;
        private String comsosDiv;
        private String comsosPanel;
        private List<ContractMaster> contractMasters;
        private String feeSchedule;
        private Long id;
        private String ndbMarketNumber;
        private String ndbProductCode;
        private String status;
        private Long timestamp;
        private String transactionId;
        private String type;

        public WorkObjectItem.Builder withComsosContractNumber(String comsosContractNumber) {
            this.comsosContractNumber = comsosContractNumber;
            return this;
        }

        public WorkObjectItem.Builder withComsosDiv(String comsosDiv) {
            this.comsosDiv = comsosDiv;
            return this;
        }

        public WorkObjectItem.Builder withComsosPanel(String comsosPanel) {
            this.comsosPanel = comsosPanel;
            return this;
        }

        public WorkObjectItem.Builder withContractMasters(List<ContractMaster> contractMasters) {
            this.contractMasters = contractMasters;
            return this;
        }

        public WorkObjectItem.Builder withFeeSchedule(String feeSchedule) {
            this.feeSchedule = feeSchedule;
            return this;
        }

        public WorkObjectItem.Builder withId(Long id) {
            this.id = id;
            return this;
        }

        public WorkObjectItem.Builder withNdbMarketNumber(String ndbMarketNumber) {
            this.ndbMarketNumber = ndbMarketNumber;
            return this;
        }

        public WorkObjectItem.Builder withNdbProductCode(String ndbProductCode) {
            this.ndbProductCode = ndbProductCode;
            return this;
        }

        public WorkObjectItem.Builder withStatus(String status) {
            this.status = status;
            return this;
        }

        public WorkObjectItem.Builder withTimestamp(Long timestamp) {
            this.timestamp = timestamp;
            return this;
        }

        public WorkObjectItem.Builder withTransactionId(String transactionId) {
            this.transactionId = transactionId;
            return this;
        }

        public WorkObjectItem.Builder withType(String type) {
            this.type = type;
            return this;
        }

        public WorkObjectItem build() {
            WorkObjectItem workObjectItem = new WorkObjectItem();
            workObjectItem.comsosContractNumber = comsosContractNumber;
            workObjectItem.comsosDiv = comsosDiv;
            workObjectItem.comsosPanel = comsosPanel;
            workObjectItem.contractMasters = contractMasters;
            workObjectItem.feeSchedule = feeSchedule;
            workObjectItem.id = id;
            workObjectItem.ndbMarketNumber = ndbMarketNumber;
            workObjectItem.ndbProductCode = ndbProductCode;
            workObjectItem.status = status;
            workObjectItem.timestamp = timestamp;
            workObjectItem.transactionId = transactionId;
            workObjectItem.type = type;
            return workObjectItem;
        }

    }

}
