package rest_api_test.api.fallout.model.contract;

import com.google.gson.annotations.Expose;
import io.restassured.response.Response;

import javax.annotation.Generated;
import java.util.List;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class ContractModel {

    @Expose
    private String contractID;
    @Expose
    private List<ContractMasterDetail> contractMasterDetails;
    @Expose
    private String contractOrg;
    @Expose
    private ContractUCMDetails contractUCMDetails;
    @Expose
    private String enwOptOutIndicator;
    @Expose
    private List<FeeScheduleDetail> feeScheduleDetails;
    @Expose
    private String financialPenaltyTable;
    @Expose
    private String mednecEffectiveDate;
    @Expose
    private String mednecIndicator;
    @Expose
    private List<ProductDetail> productDetails;
    @Expose
    private String reassignedEpdAddressSequence;
    @Expose
    private String reassignedIpa;
    @Expose
    private String reassignedMpin;
    @Expose
    private String type;
    @Expose
    private UhcMarketDetails uhcMarketDetails;

    private Response response;

    /*
    CLASS METHODS
     */

    public Response getResponse() {
        return response;
    }

    public void setResponse(Response response) {
        this.response = response;
    }

    public String getContractID() {
        return contractID;
    }

    public List<ContractMasterDetail> getContractMasterDetails() {
        return contractMasterDetails;
    }

    public String getContractOrg() {
        return contractOrg;
    }

    public ContractUCMDetails getContractUCMDetails() {
        return contractUCMDetails;
    }

    public String getEnwOptOutIndicator() {
        return enwOptOutIndicator;
    }

    public List<FeeScheduleDetail> getFeeScheduleDetails() {
        return feeScheduleDetails;
    }

    public String getFinancialPenaltyTable() {
        return financialPenaltyTable;
    }

    public String getMednecEffectiveDate() {
        return mednecEffectiveDate;
    }

    public String getMednecIndicator() {
        return mednecIndicator;
    }

    public List<ProductDetail> getProductDetails() {
        return productDetails;
    }

    public String getReassignedEpdAddressSequence() {
        return reassignedEpdAddressSequence;
    }

    public String getReassignedIpa() {
        return reassignedIpa;
    }

    public String getReassignedMpin() {
        return reassignedMpin;
    }

    public String getType() {
        return type;
    }

    public UhcMarketDetails getUhcMarketDetails() {
        return uhcMarketDetails;
    }

    public static class Builder {

        private String contractID;
        private List<ContractMasterDetail> contractMasterDetails;
        private String contractOrg;
        private ContractUCMDetails contractUCMDetails;
        private String enwOptOutIndicator;
        private List<FeeScheduleDetail> feeScheduleDetails;
        private String financialPenaltyTable;
        private String mednecEffectiveDate;
        private String mednecIndicator;
        private List<ProductDetail> productDetails;
        private String reassignedEpdAddressSequence;
        private String reassignedIpa;
        private String reassignedMpin;
        private String type;
        private UhcMarketDetails uhcMarketDetails;

        public ContractModel.Builder withContractID(String contractID) {
            this.contractID = contractID;
            return this;
        }

        public ContractModel.Builder withContractMasterDetails(List<ContractMasterDetail> contractMasterDetails) {
            this.contractMasterDetails = contractMasterDetails;
            return this;
        }

        public ContractModel.Builder withContractOrg(String contractOrg) {
            this.contractOrg = contractOrg;
            return this;
        }

        public ContractModel.Builder withContractUCMDetails(ContractUCMDetails contractUCMDetails) {
            this.contractUCMDetails = contractUCMDetails;
            return this;
        }

        public ContractModel.Builder withEnwOptOutIndicator(String enwOptOutIndicator) {
            this.enwOptOutIndicator = enwOptOutIndicator;
            return this;
        }

        public ContractModel.Builder withFeeScheduleDetails(List<FeeScheduleDetail> feeScheduleDetails) {
            this.feeScheduleDetails = feeScheduleDetails;
            return this;
        }

        public ContractModel.Builder withFinancialPenaltyTable(String financialPenaltyTable) {
            this.financialPenaltyTable = financialPenaltyTable;
            return this;
        }

        public ContractModel.Builder withMednecEffectiveDate(String mednecEffectiveDate) {
            this.mednecEffectiveDate = mednecEffectiveDate;
            return this;
        }

        public ContractModel.Builder withMednecIndicator(String mednecIndicator) {
            this.mednecIndicator = mednecIndicator;
            return this;
        }

        public ContractModel.Builder withProductDetails(List<ProductDetail> productDetails) {
            this.productDetails = productDetails;
            return this;
        }

        public ContractModel.Builder withReassignedEpdAddressSequence(String reassignedEpdAddressSequence) {
            this.reassignedEpdAddressSequence = reassignedEpdAddressSequence;
            return this;
        }

        public ContractModel.Builder withReassignedIpa(String reassignedIpa) {
            this.reassignedIpa = reassignedIpa;
            return this;
        }

        public ContractModel.Builder withReassignedMpin(String reassignedMpin) {
            this.reassignedMpin = reassignedMpin;
            return this;
        }

        public ContractModel.Builder withType(String type) {
            this.type = type;
            return this;
        }

        public ContractModel.Builder withUhcMarketDetails(UhcMarketDetails uhcMarketDetails) {
            this.uhcMarketDetails = uhcMarketDetails;
            return this;
        }

        public ContractModel build() {
            ContractModel contractModel = new ContractModel();
            contractModel.contractID = contractID;
            contractModel.contractMasterDetails = contractMasterDetails;
            contractModel.contractOrg = contractOrg;
            contractModel.contractUCMDetails = contractUCMDetails;
            contractModel.enwOptOutIndicator = enwOptOutIndicator;
            contractModel.feeScheduleDetails = feeScheduleDetails;
            contractModel.financialPenaltyTable = financialPenaltyTable;
            contractModel.mednecEffectiveDate = mednecEffectiveDate;
            contractModel.mednecIndicator = mednecIndicator;
            contractModel.productDetails = productDetails;
            contractModel.reassignedEpdAddressSequence = reassignedEpdAddressSequence;
            contractModel.reassignedIpa = reassignedIpa;
            contractModel.reassignedMpin = reassignedMpin;
            contractModel.type = type;
            contractModel.uhcMarketDetails = uhcMarketDetails;
            return contractModel;
        }

    }

}
