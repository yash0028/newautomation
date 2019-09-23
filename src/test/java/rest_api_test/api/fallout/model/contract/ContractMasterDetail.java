
package rest_api_test.api.fallout.model.contract;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class ContractMasterDetail {

    @Expose
    private String contractMasterEffectiveDate;
    @Expose
    private String contractMasterIndicator;
    @Expose
    private String contractMasterName;
    @Expose
    private String contractMasterNetworkNumber;
    @Expose
    private String contractMasterNumber;
    @Expose
    private String feeSchedule;
    @Expose
    private String ipaNum;
    @Expose
    private String productCode;
    @Expose
    private String productCodeRef;

    public String getContractMasterEffectiveDate() {
        return contractMasterEffectiveDate;
    }

    public String getContractMasterIndicator() {
        return contractMasterIndicator;
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

    public String getFeeSchedule() {
        return feeSchedule;
    }

    public String getIpaNum() {
        return ipaNum;
    }

    public String getProductCode() {
        return productCode;
    }

    public String getProductCodeRef() {
        return productCodeRef;
    }

    public static class Builder {

        private String contractMasterEffectiveDate;
        private String contractMasterIndicator;
        private String contractMasterName;
        private String contractMasterNetworkNumber;
        private String contractMasterNumber;
        private String feeSchedule;
        private String ipaNum;
        private String productCode;
        private String productCodeRef;

        public ContractMasterDetail.Builder withContractMasterEffectiveDate(String contractMasterEffectiveDate) {
            this.contractMasterEffectiveDate = contractMasterEffectiveDate;
            return this;
        }

        public ContractMasterDetail.Builder withContractMasterIndicator(String contractMasterIndicator) {
            this.contractMasterIndicator = contractMasterIndicator;
            return this;
        }

        public ContractMasterDetail.Builder withContractMasterName(String contractMasterName) {
            this.contractMasterName = contractMasterName;
            return this;
        }

        public ContractMasterDetail.Builder withContractMasterNetworkNumber(String contractMasterNetworkNumber) {
            this.contractMasterNetworkNumber = contractMasterNetworkNumber;
            return this;
        }

        public ContractMasterDetail.Builder withContractMasterNumber(String contractMasterNumber) {
            this.contractMasterNumber = contractMasterNumber;
            return this;
        }

        public ContractMasterDetail.Builder withFeeSchedule(String feeSchedule) {
            this.feeSchedule = feeSchedule;
            return this;
        }

        public ContractMasterDetail.Builder withIpaNum(String ipaNum) {
            this.ipaNum = ipaNum;
            return this;
        }

        public ContractMasterDetail.Builder withProductCode(String productCode) {
            this.productCode = productCode;
            return this;
        }

        public ContractMasterDetail.Builder withProductCodeRef(String productCodeRef) {
            this.productCodeRef = productCodeRef;
            return this;
        }

        public ContractMasterDetail build() {
            ContractMasterDetail contractMasterDetail = new ContractMasterDetail();
            contractMasterDetail.contractMasterEffectiveDate = contractMasterEffectiveDate;
            contractMasterDetail.contractMasterIndicator = contractMasterIndicator;
            contractMasterDetail.contractMasterName = contractMasterName;
            contractMasterDetail.contractMasterNetworkNumber = contractMasterNetworkNumber;
            contractMasterDetail.contractMasterNumber = contractMasterNumber;
            contractMasterDetail.feeSchedule = feeSchedule;
            contractMasterDetail.ipaNum = ipaNum;
            contractMasterDetail.productCode = productCode;
            contractMasterDetail.productCodeRef = productCodeRef;
            return contractMasterDetail;
        }

    }

}
