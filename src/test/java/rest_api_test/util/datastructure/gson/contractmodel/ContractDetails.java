
package rest_api_test.util.datastructure.gson.contractmodel;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;
import java.util.List;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class ContractDetails {

    @Expose
    private String capture;
    @Expose
    private String contractFolderName;
    @Expose
    private String contractName;
    @Expose
    private String contractOwner;
    @Expose
    private String contractStructure;
    @Expose
    private String contractTitle;
    @Expose
    private String contractValueCommitted;
    @Expose
    private List<String> counterpartyLegalName;
    @Expose
    private String createInParentFolder;
    @Expose
    private String created;
    @Expose
    private String dateEffective;
    @Expose
    private String dateExpiry;
    @Expose
    private String externalID;
    @Expose
    private String hasDraft;
    @Expose
    private String masterAgreement;
    @Expose
    private String modified;
    @Expose
    private List<String> ourLegalName;
    @Expose
    private String parentContractID;
    @Expose
    private String status;
    @Expose
    private StorageNode storageNode;
    @Expose
    private String superStatus;

    public String getCapture() {
        return capture;
    }

    public String getContractFolderName() {
        return contractFolderName;
    }

    public String getContractName() {
        return contractName;
    }

    public String getContractOwner() {
        return contractOwner;
    }

    public String getContractStructure() {
        return contractStructure;
    }

    public String getContractTitle() {
        return contractTitle;
    }

    public String getContractValueCommitted() {
        return contractValueCommitted;
    }

    public List<String> getCounterpartyLegalName() {
        return counterpartyLegalName;
    }

    public String getCreateInParentFolder() {
        return createInParentFolder;
    }

    public String getCreated() {
        return created;
    }

    public String getDateEffective() {
        return dateEffective;
    }

    public String getDateExpiry() {
        return dateExpiry;
    }

    public String getExternalID() {
        return externalID;
    }

    public String getHasDraft() {
        return hasDraft;
    }

    public String getMasterAgreement() {
        return masterAgreement;
    }

    public String getModified() {
        return modified;
    }

    public List<String> getOurLegalName() {
        return ourLegalName;
    }

    public String getParentContractID() {
        return parentContractID;
    }

    public String getStatus() {
        return status;
    }

    public StorageNode getStorageNode() {
        return storageNode;
    }

    public String getSuperStatus() {
        return superStatus;
    }

    public static class Builder {

        private String capture;
        private String contractFolderName;
        private String contractName;
        private String contractOwner;
        private String contractStructure;
        private String contractTitle;
        private String contractValueCommitted;
        private List<String> counterpartyLegalName;
        private String createInParentFolder;
        private String created;
        private String dateEffective;
        private String dateExpiry;
        private String externalID;
        private String hasDraft;
        private String masterAgreement;
        private String modified;
        private List<String> ourLegalName;
        private String parentContractID;
        private String status;
        private StorageNode storageNode;
        private String superStatus;

        public ContractDetails.Builder withCapture(String capture) {
            this.capture = capture;
            return this;
        }

        public ContractDetails.Builder withContractFolderName(String contractFolderName) {
            this.contractFolderName = contractFolderName;
            return this;
        }

        public ContractDetails.Builder withContractName(String contractName) {
            this.contractName = contractName;
            return this;
        }

        public ContractDetails.Builder withContractOwner(String contractOwner) {
            this.contractOwner = contractOwner;
            return this;
        }

        public ContractDetails.Builder withContractStructure(String contractStructure) {
            this.contractStructure = contractStructure;
            return this;
        }

        public ContractDetails.Builder withContractTitle(String contractTitle) {
            this.contractTitle = contractTitle;
            return this;
        }

        public ContractDetails.Builder withContractValueCommitted(String contractValueCommitted) {
            this.contractValueCommitted = contractValueCommitted;
            return this;
        }

        public ContractDetails.Builder withCounterpartyLegalName(List<String> counterpartyLegalName) {
            this.counterpartyLegalName = counterpartyLegalName;
            return this;
        }

        public ContractDetails.Builder withCreateInParentFolder(String createInParentFolder) {
            this.createInParentFolder = createInParentFolder;
            return this;
        }

        public ContractDetails.Builder withCreated(String created) {
            this.created = created;
            return this;
        }

        public ContractDetails.Builder withDateEffective(String dateEffective) {
            this.dateEffective = dateEffective;
            return this;
        }

        public ContractDetails.Builder withDateExpiry(String dateExpiry) {
            this.dateExpiry = dateExpiry;
            return this;
        }

        public ContractDetails.Builder withExternalID(String externalID) {
            this.externalID = externalID;
            return this;
        }

        public ContractDetails.Builder withHasDraft(String hasDraft) {
            this.hasDraft = hasDraft;
            return this;
        }

        public ContractDetails.Builder withMasterAgreement(String masterAgreement) {
            this.masterAgreement = masterAgreement;
            return this;
        }

        public ContractDetails.Builder withModified(String modified) {
            this.modified = modified;
            return this;
        }

        public ContractDetails.Builder withOurLegalName(List<String> ourLegalName) {
            this.ourLegalName = ourLegalName;
            return this;
        }

        public ContractDetails.Builder withParentContractID(String parentContractID) {
            this.parentContractID = parentContractID;
            return this;
        }

        public ContractDetails.Builder withStatus(String status) {
            this.status = status;
            return this;
        }

        public ContractDetails.Builder withStorageNode(StorageNode storageNode) {
            this.storageNode = storageNode;
            return this;
        }

        public ContractDetails.Builder withSuperStatus(String superStatus) {
            this.superStatus = superStatus;
            return this;
        }

        public ContractDetails build() {
            ContractDetails contractDetails = new ContractDetails();
            contractDetails.capture = capture;
            contractDetails.contractFolderName = contractFolderName;
            contractDetails.contractName = contractName;
            contractDetails.contractOwner = contractOwner;
            contractDetails.contractStructure = contractStructure;
            contractDetails.contractTitle = contractTitle;
            contractDetails.contractValueCommitted = contractValueCommitted;
            contractDetails.counterpartyLegalName = counterpartyLegalName;
            contractDetails.createInParentFolder = createInParentFolder;
            contractDetails.created = created;
            contractDetails.dateEffective = dateEffective;
            contractDetails.dateExpiry = dateExpiry;
            contractDetails.externalID = externalID;
            contractDetails.hasDraft = hasDraft;
            contractDetails.masterAgreement = masterAgreement;
            contractDetails.modified = modified;
            contractDetails.ourLegalName = ourLegalName;
            contractDetails.parentContractID = parentContractID;
            contractDetails.status = status;
            contractDetails.storageNode = storageNode;
            contractDetails.superStatus = superStatus;
            return contractDetails;
        }

    }

}
