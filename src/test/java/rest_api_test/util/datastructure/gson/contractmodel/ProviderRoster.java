
package rest_api_test.util.datastructure.gson.contractmodel;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class ProviderRoster {

    @Expose
    private String cancelCode;
    @Expose
    private String cancelDate;
    @Expose
    private String cancelReason;
    @Expose
    private Boolean credentialingFlag;
    @Expose
    private String degreeCode;
    @Expose
    private String groupSpeciality;
    @Expose
    private String groupSpecialtyDescription;
    @SerializedName("MPIN")
    private String mPIN;
    @Expose
    private String mpin;
    @SerializedName("NPI")
    private String nPI;
    @SerializedName("Name")
    private String name;
    @Expose
    private String npi;
    @Expose
    private String num;
    @Expose
    private String orgTypeDescription;
    @Expose
    private String orgTypeIndicator;
    @Expose
    private String providerClassification;
    @Expose
    private String providerSpecialty;
    @Expose
    private String providerSpecialtyDescription;
    @Expose
    private String providerType;
    @Expose
    private String reassignmentAddressSequenceId;
    @Expose
    private String reassignmentIPA;
    @Expose
    private String reassignmentMPIN;
    @Expose
    private String retroCode;
    @Expose
    private String searchId;
    @Expose
    private String startDate;
    @SerializedName("TIN")
    private String tIN;
    @Expose
    private String tin;
    @Expose
    private String transactionType;

    public String getCancelCode() {
        return cancelCode;
    }

    public String getCancelDate() {
        return cancelDate;
    }

    public String getCancelReason() {
        return cancelReason;
    }

    public Boolean getCredentialingFlag() {
        return credentialingFlag;
    }

    public String getDegreeCode() {
        return degreeCode;
    }

    public String getGroupSpeciality() {
        return groupSpeciality;
    }

    public String getGroupSpecialtyDescription() {
        return groupSpecialtyDescription;
    }

    public String getMPIN() {
        return mPIN;
    }

    public String getMpin() {
        return mpin;
    }

    public String getNPI() {
        return nPI;
    }

    public String getName() {
        return name;
    }

    public String getNpi() {
        return npi;
    }

    public String getNum() {
        return num;
    }

    public String getOrgTypeDescription() {
        return orgTypeDescription;
    }

    public String getOrgTypeIndicator() {
        return orgTypeIndicator;
    }

    public String getProviderClassification() {
        return providerClassification;
    }

    public String getProviderSpecialty() {
        return providerSpecialty;
    }

    public String getProviderSpecialtyDescription() {
        return providerSpecialtyDescription;
    }

    public String getProviderType() {
        return providerType;
    }

    public String getReassignmentAddressSequenceId() {
        return reassignmentAddressSequenceId;
    }

    public String getReassignmentIPA() {
        return reassignmentIPA;
    }

    public String getReassignmentMPIN() {
        return reassignmentMPIN;
    }

    public String getRetroCode() {
        return retroCode;
    }

    public String getSearchId() {
        return searchId;
    }

    public String getStartDate() {
        return startDate;
    }

    public String getTIN() {
        return tIN;
    }

    public String getTin() {
        return tin;
    }

    public String getTransactionType() {
        return transactionType;
    }

    public static class Builder {

        private String cancelCode;
        private String cancelDate;
        private String cancelReason;
        private Boolean credentialingFlag;
        private String degreeCode;
        private String groupSpeciality;
        private String groupSpecialtyDescription;
        private String mPIN;
        private String mpin;
        private String nPI;
        private String name;
        private String npi;
        private String num;
        private String orgTypeDescription;
        private String orgTypeIndicator;
        private String providerClassification;
        private String providerSpecialty;
        private String providerSpecialtyDescription;
        private String providerType;
        private String reassignmentAddressSequenceId;
        private String reassignmentIPA;
        private String reassignmentMPIN;
        private String retroCode;
        private String searchId;
        private String startDate;
        private String tIN;
        private String tin;
        private String transactionType;

        public ProviderRoster.Builder withCancelCode(String cancelCode) {
            this.cancelCode = cancelCode;
            return this;
        }

        public ProviderRoster.Builder withCancelDate(String cancelDate) {
            this.cancelDate = cancelDate;
            return this;
        }

        public ProviderRoster.Builder withCancelReason(String cancelReason) {
            this.cancelReason = cancelReason;
            return this;
        }

        public ProviderRoster.Builder withCredentialingFlag(Boolean credentialingFlag) {
            this.credentialingFlag = credentialingFlag;
            return this;
        }

        public ProviderRoster.Builder withDegreeCode(String degreeCode) {
            this.degreeCode = degreeCode;
            return this;
        }

        public ProviderRoster.Builder withGroupSpeciality(String groupSpeciality) {
            this.groupSpeciality = groupSpeciality;
            return this;
        }

        public ProviderRoster.Builder withGroupSpecialtyDescription(String groupSpecialtyDescription) {
            this.groupSpecialtyDescription = groupSpecialtyDescription;
            return this;
        }

        public ProviderRoster.Builder withMPIN(String mPIN) {
            this.mPIN = mPIN;
            return this;
        }

        public ProviderRoster.Builder withMpin(String mpin) {
            this.mpin = mpin;
            return this;
        }

        public ProviderRoster.Builder withNPI(String nPI) {
            this.nPI = nPI;
            return this;
        }

        public ProviderRoster.Builder withName(String name) {
            this.name = name;
            return this;
        }

        public ProviderRoster.Builder withNpi(String npi) {
            this.npi = npi;
            return this;
        }

        public ProviderRoster.Builder withNum(String num) {
            this.num = num;
            return this;
        }

        public ProviderRoster.Builder withOrgTypeDescription(String orgTypeDescription) {
            this.orgTypeDescription = orgTypeDescription;
            return this;
        }

        public ProviderRoster.Builder withOrgTypeIndicator(String orgTypeIndicator) {
            this.orgTypeIndicator = orgTypeIndicator;
            return this;
        }

        public ProviderRoster.Builder withProviderClassification(String providerClassification) {
            this.providerClassification = providerClassification;
            return this;
        }

        public ProviderRoster.Builder withProviderSpecialty(String providerSpecialty) {
            this.providerSpecialty = providerSpecialty;
            return this;
        }

        public ProviderRoster.Builder withProviderSpecialtyDescription(String providerSpecialtyDescription) {
            this.providerSpecialtyDescription = providerSpecialtyDescription;
            return this;
        }

        public ProviderRoster.Builder withProviderType(String providerType) {
            this.providerType = providerType;
            return this;
        }

        public ProviderRoster.Builder withReassignmentAddressSequenceId(String reassignmentAddressSequenceId) {
            this.reassignmentAddressSequenceId = reassignmentAddressSequenceId;
            return this;
        }

        public ProviderRoster.Builder withReassignmentIPA(String reassignmentIPA) {
            this.reassignmentIPA = reassignmentIPA;
            return this;
        }

        public ProviderRoster.Builder withReassignmentMPIN(String reassignmentMPIN) {
            this.reassignmentMPIN = reassignmentMPIN;
            return this;
        }

        public ProviderRoster.Builder withRetroCode(String retroCode) {
            this.retroCode = retroCode;
            return this;
        }

        public ProviderRoster.Builder withSearchId(String searchId) {
            this.searchId = searchId;
            return this;
        }

        public ProviderRoster.Builder withStartDate(String startDate) {
            this.startDate = startDate;
            return this;
        }

        public ProviderRoster.Builder withTIN(String tIN) {
            this.tIN = tIN;
            return this;
        }

        public ProviderRoster.Builder withTin(String tin) {
            this.tin = tin;
            return this;
        }

        public ProviderRoster.Builder withTransactionType(String transactionType) {
            this.transactionType = transactionType;
            return this;
        }

        public ProviderRoster build() {
            ProviderRoster providerRoster = new ProviderRoster();
            providerRoster.cancelCode = cancelCode;
            providerRoster.cancelDate = cancelDate;
            providerRoster.cancelReason = cancelReason;
            providerRoster.credentialingFlag = credentialingFlag;
            providerRoster.degreeCode = degreeCode;
            providerRoster.groupSpeciality = groupSpeciality;
            providerRoster.groupSpecialtyDescription = groupSpecialtyDescription;
            providerRoster.mPIN = mPIN;
            providerRoster.mpin = mpin;
            providerRoster.nPI = nPI;
            providerRoster.name = name;
            providerRoster.npi = npi;
            providerRoster.num = num;
            providerRoster.orgTypeDescription = orgTypeDescription;
            providerRoster.orgTypeIndicator = orgTypeIndicator;
            providerRoster.providerClassification = providerClassification;
            providerRoster.providerSpecialty = providerSpecialty;
            providerRoster.providerSpecialtyDescription = providerSpecialtyDescription;
            providerRoster.providerType = providerType;
            providerRoster.reassignmentAddressSequenceId = reassignmentAddressSequenceId;
            providerRoster.reassignmentIPA = reassignmentIPA;
            providerRoster.reassignmentMPIN = reassignmentMPIN;
            providerRoster.retroCode = retroCode;
            providerRoster.searchId = searchId;
            providerRoster.startDate = startDate;
            providerRoster.tIN = tIN;
            providerRoster.tin = tin;
            providerRoster.transactionType = transactionType;
            return providerRoster;
        }

    }

}
