
package rest_api_test.util.datastructure.gson.contractmodel;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;
import java.util.List;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class ContractUCMDetails {

    @Expose
    private ContractBusinessEvent contractBusinessEvent;
    @Expose
    private String contractClassification;
    @Expose
    private ContractDetails contractDetails;
    @Expose
    private String contractID;
    @Expose
    private List<ContractTransaction> contractTransactions;
    @Expose
    private String docGenID;
    @Expose
    private List<ProviderRoster> providerRoster;
    @Expose
    private SiteInfo siteInfo;
    @Expose
    private String type;

    public ContractBusinessEvent getContractBusinessEvent() {
        return contractBusinessEvent;
    }

    public String getContractClassification() {
        return contractClassification;
    }

    public ContractDetails getContractDetails() {
        return contractDetails;
    }

    public String getContractID() {
        return contractID;
    }

    public List<ContractTransaction> getContractTransactions() {
        return contractTransactions;
    }

    public String getDocGenID() {
        return docGenID;
    }

    public List<ProviderRoster> getProviderRoster() {
        return providerRoster;
    }

    public SiteInfo getSiteInfo() {
        return siteInfo;
    }

    public String getType() {
        return type;
    }

    public static class Builder {

        private ContractBusinessEvent contractBusinessEvent;
        private String contractClassification;
        private ContractDetails contractDetails;
        private String contractID;
        private List<ContractTransaction> contractTransactions;
        private String docGenID;
        private List<ProviderRoster> providerRoster;
        private SiteInfo siteInfo;
        private String type;

        public ContractUCMDetails.Builder withContractBusinessEvent(ContractBusinessEvent contractBusinessEvent) {
            this.contractBusinessEvent = contractBusinessEvent;
            return this;
        }

        public ContractUCMDetails.Builder withContractClassification(String contractClassification) {
            this.contractClassification = contractClassification;
            return this;
        }

        public ContractUCMDetails.Builder withContractDetails(ContractDetails contractDetails) {
            this.contractDetails = contractDetails;
            return this;
        }

        public ContractUCMDetails.Builder withContractID(String contractID) {
            this.contractID = contractID;
            return this;
        }

        public ContractUCMDetails.Builder withContractTransactions(List<ContractTransaction> contractTransactions) {
            this.contractTransactions = contractTransactions;
            return this;
        }

        public ContractUCMDetails.Builder withDocGenID(String docGenID) {
            this.docGenID = docGenID;
            return this;
        }

        public ContractUCMDetails.Builder withProviderRoster(List<ProviderRoster> providerRoster) {
            this.providerRoster = providerRoster;
            return this;
        }

        public ContractUCMDetails.Builder withSiteInfo(SiteInfo siteInfo) {
            this.siteInfo = siteInfo;
            return this;
        }

        public ContractUCMDetails.Builder withType(String type) {
            this.type = type;
            return this;
        }

        public ContractUCMDetails build() {
            ContractUCMDetails contractUCMDetails = new ContractUCMDetails();
            contractUCMDetails.contractBusinessEvent = contractBusinessEvent;
            contractUCMDetails.contractClassification = contractClassification;
            contractUCMDetails.contractDetails = contractDetails;
            contractUCMDetails.contractID = contractID;
            contractUCMDetails.contractTransactions = contractTransactions;
            contractUCMDetails.docGenID = docGenID;
            contractUCMDetails.providerRoster = providerRoster;
            contractUCMDetails.siteInfo = siteInfo;
            contractUCMDetails.type = type;
            return contractUCMDetails;
        }

    }

}
