
package rest_api_test.api.datastructure.gson.fallout;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class ContractMaster {

    @Expose
    private String contractMasterEffectiveDate;
    @Expose
    private String contractMasterName;
    @Expose
    private String contractMasterNetworkNumber;
    @Expose
    private String contractMasterNumber;
    @Expose
    private String contractSystem;
    @Expose
    private String feeSchedule;
    @Expose
    private Long id;
    @Expose
    private String ipaNum;
    @Expose
    private String productCodes;
    @Expose
    private String status;
    @Expose
    private String usages;

    public String getContractMasterEffectiveDate() {
        return contractMasterEffectiveDate;
    }

    public String getContractMasterName() {
        return contractMasterName;
    }

    public String getContractMasterNetworkNumber() {
        return contractMasterNetworkNumber;
    }

    public String getContractMasterNumber() {
        return contractMasterNumber;
    }

    public String getContractSystem() {
        return contractSystem;
    }

    public String getFeeSchedule() {
        return feeSchedule;
    }

    public Long getId() {
        return id;
    }

    public String getIpaNum() {
        return ipaNum;
    }

    public String getProductCodes() {
        return productCodes;
    }

    public String getStatus() {
        return status;
    }

    public String getUsages() {
        return usages;
    }

    public static class Builder {

        private String contractMasterEffectiveDate;
        private String contractMasterName;
        private String contractMasterNetworkNumber;
        private String contractMasterNumber;
        private String contractSystem;
        private String feeSchedule;
        private Long id;
        private String ipaNum;
        private String productCodes;
        private String status;
        private String usages;

        public ContractMaster.Builder withContractMasterEffectiveDate(String contractMasterEffectiveDate) {
            this.contractMasterEffectiveDate = contractMasterEffectiveDate;
            return this;
        }

        public ContractMaster.Builder withContractMasterName(String contractMasterName) {
            this.contractMasterName = contractMasterName;
            return this;
        }

        public ContractMaster.Builder withContractMasterNetworkNumber(String contractMasterNetworkNumber) {
            this.contractMasterNetworkNumber = contractMasterNetworkNumber;
            return this;
        }

        public ContractMaster.Builder withContractMasterNumber(String contractMasterNumber) {
            this.contractMasterNumber = contractMasterNumber;
            return this;
        }

        public ContractMaster.Builder withContractSystem(String contractSystem) {
            this.contractSystem = contractSystem;
            return this;
        }

        public ContractMaster.Builder withFeeSchedule(String feeSchedule) {
            this.feeSchedule = feeSchedule;
            return this;
        }

        public ContractMaster.Builder withId(Long id) {
            this.id = id;
            return this;
        }

        public ContractMaster.Builder withIpaNum(String ipaNum) {
            this.ipaNum = ipaNum;
            return this;
        }

        public ContractMaster.Builder withProductCodes(String productCodes) {
            this.productCodes = productCodes;
            return this;
        }

        public ContractMaster.Builder withStatus(String status) {
            this.status = status;
            return this;
        }

        public ContractMaster.Builder withUsages(String usages) {
            this.usages = usages;
            return this;
        }

        public ContractMaster build() {
            ContractMaster contractMaster = new ContractMaster();
            contractMaster.contractMasterEffectiveDate = contractMasterEffectiveDate;
            contractMaster.contractMasterName = contractMasterName;
            contractMaster.contractMasterNetworkNumber = contractMasterNetworkNumber;
            contractMaster.contractMasterNumber = contractMasterNumber;
            contractMaster.contractSystem = contractSystem;
            contractMaster.feeSchedule = feeSchedule;
            contractMaster.id = id;
            contractMaster.ipaNum = ipaNum;
            contractMaster.productCodes = productCodes;
            contractMaster.status = status;
            contractMaster.usages = usages;
            return contractMaster;
        }

    }

}
