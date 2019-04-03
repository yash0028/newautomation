
package rest_api_test.util.datastructure.gson.contractmodel;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;
import java.util.List;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class ContractTransaction {

    @Expose
    private Boolean amendment;
    @Expose
    private Boolean capture;
    @Expose
    private List<ContractDocument> contractDocuments;
    @Expose
    private String contractID;
    @Expose
    private String contractTransactionOwner;
    @Expose
    private String created;
    @Expose
    private String creationElapsedTimeDays;
    @Expose
    private String dateEffective;
    @Expose
    private String dateEffectiveTransaction;
    @Expose
    private String dateExpiry;
    @Expose
    private String dateExpiryTransaction;
    @Expose
    private String docGenID;
    @Expose
    private String externalID;
    @Expose
    private Boolean finalized;
    @Expose
    private Boolean metaTransaction;
    @Expose
    private String metaTransactionSubType;
    @Expose
    private String modified;
    @Expose
    private String repositoryTransactionType;
    @Expose
    private Boolean rescission;
    @Expose
    private String status;
    @Expose
    private StorageNode storageNode;
    @Expose
    private String superStatus;
    @Expose
    private Boolean termination;
    @Expose
    private Boolean toBedeleted;
    @Expose
    private String transactionComments;
    @Expose
    private String transactionID;
    @Expose
    private String transactionName;
    @Expose
    private String transactionParties;
    @Expose
    private String transactionTitle;
    @Expose
    private String transactionTxnID;
    @Expose
    private String transactionType;
    @Expose
    private String type;

    public Boolean getAmendment() {
        return amendment;
    }

    public Boolean getCapture() {
        return capture;
    }

    public List<ContractDocument> getContractDocuments() {
        return contractDocuments;
    }

    public String getContractID() {
        return contractID;
    }

    public String getContractTransactionOwner() {
        return contractTransactionOwner;
    }

    public String getCreated() {
        return created;
    }

    public String getCreationElapsedTimeDays() {
        return creationElapsedTimeDays;
    }

    public String getDateEffective() {
        return dateEffective;
    }

    public String getDateEffectiveTransaction() {
        return dateEffectiveTransaction;
    }

    public String getDateExpiry() {
        return dateExpiry;
    }

    public String getDateExpiryTransaction() {
        return dateExpiryTransaction;
    }

    public String getDocGenID() {
        return docGenID;
    }

    public String getExternalID() {
        return externalID;
    }

    public Boolean getFinalized() {
        return finalized;
    }

    public Boolean getMetaTransaction() {
        return metaTransaction;
    }

    public String getMetaTransactionSubType() {
        return metaTransactionSubType;
    }

    public String getModified() {
        return modified;
    }

    public String getRepositoryTransactionType() {
        return repositoryTransactionType;
    }

    public Boolean getRescission() {
        return rescission;
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

    public Boolean getTermination() {
        return termination;
    }

    public Boolean getToBedeleted() {
        return toBedeleted;
    }

    public String getTransactionComments() {
        return transactionComments;
    }

    public String getTransactionID() {
        return transactionID;
    }

    public String getTransactionName() {
        return transactionName;
    }

    public String getTransactionParties() {
        return transactionParties;
    }

    public String getTransactionTitle() {
        return transactionTitle;
    }

    public String getTransactionTxnID() {
        return transactionTxnID;
    }

    public String getTransactionType() {
        return transactionType;
    }

    public String getType() {
        return type;
    }

    public static class Builder {

        private Boolean amendment;
        private Boolean capture;
        private List<ContractDocument> contractDocuments;
        private String contractID;
        private String contractTransactionOwner;
        private String created;
        private String creationElapsedTimeDays;
        private String dateEffective;
        private String dateEffectiveTransaction;
        private String dateExpiry;
        private String dateExpiryTransaction;
        private String docGenID;
        private String externalID;
        private Boolean finalized;
        private Boolean metaTransaction;
        private String metaTransactionSubType;
        private String modified;
        private String repositoryTransactionType;
        private Boolean rescission;
        private String status;
        private StorageNode storageNode;
        private String superStatus;
        private Boolean termination;
        private Boolean toBedeleted;
        private String transactionComments;
        private String transactionID;
        private String transactionName;
        private String transactionParties;
        private String transactionTitle;
        private String transactionTxnID;
        private String transactionType;
        private String type;

        public ContractTransaction.Builder withAmendment(Boolean amendment) {
            this.amendment = amendment;
            return this;
        }

        public ContractTransaction.Builder withCapture(Boolean capture) {
            this.capture = capture;
            return this;
        }

        public ContractTransaction.Builder withContractDocuments(List<ContractDocument> contractDocuments) {
            this.contractDocuments = contractDocuments;
            return this;
        }

        public ContractTransaction.Builder withContractID(String contractID) {
            this.contractID = contractID;
            return this;
        }

        public ContractTransaction.Builder withContractTransactionOwner(String contractTransactionOwner) {
            this.contractTransactionOwner = contractTransactionOwner;
            return this;
        }

        public ContractTransaction.Builder withCreated(String created) {
            this.created = created;
            return this;
        }

        public ContractTransaction.Builder withCreationElapsedTimeDays(String creationElapsedTimeDays) {
            this.creationElapsedTimeDays = creationElapsedTimeDays;
            return this;
        }

        public ContractTransaction.Builder withDateEffective(String dateEffective) {
            this.dateEffective = dateEffective;
            return this;
        }

        public ContractTransaction.Builder withDateEffectiveTransaction(String dateEffectiveTransaction) {
            this.dateEffectiveTransaction = dateEffectiveTransaction;
            return this;
        }

        public ContractTransaction.Builder withDateExpiry(String dateExpiry) {
            this.dateExpiry = dateExpiry;
            return this;
        }

        public ContractTransaction.Builder withDateExpiryTransaction(String dateExpiryTransaction) {
            this.dateExpiryTransaction = dateExpiryTransaction;
            return this;
        }

        public ContractTransaction.Builder withDocGenID(String docGenID) {
            this.docGenID = docGenID;
            return this;
        }

        public ContractTransaction.Builder withExternalID(String externalID) {
            this.externalID = externalID;
            return this;
        }

        public ContractTransaction.Builder withFinalized(Boolean finalized) {
            this.finalized = finalized;
            return this;
        }

        public ContractTransaction.Builder withMetaTransaction(Boolean metaTransaction) {
            this.metaTransaction = metaTransaction;
            return this;
        }

        public ContractTransaction.Builder withMetaTransactionSubType(String metaTransactionSubType) {
            this.metaTransactionSubType = metaTransactionSubType;
            return this;
        }

        public ContractTransaction.Builder withModified(String modified) {
            this.modified = modified;
            return this;
        }

        public ContractTransaction.Builder withRepositoryTransactionType(String repositoryTransactionType) {
            this.repositoryTransactionType = repositoryTransactionType;
            return this;
        }

        public ContractTransaction.Builder withRescission(Boolean rescission) {
            this.rescission = rescission;
            return this;
        }

        public ContractTransaction.Builder withStatus(String status) {
            this.status = status;
            return this;
        }

        public ContractTransaction.Builder withStorageNode(StorageNode storageNode) {
            this.storageNode = storageNode;
            return this;
        }

        public ContractTransaction.Builder withSuperStatus(String superStatus) {
            this.superStatus = superStatus;
            return this;
        }

        public ContractTransaction.Builder withTermination(Boolean termination) {
            this.termination = termination;
            return this;
        }

        public ContractTransaction.Builder withToBedeleted(Boolean toBedeleted) {
            this.toBedeleted = toBedeleted;
            return this;
        }

        public ContractTransaction.Builder withTransactionComments(String transactionComments) {
            this.transactionComments = transactionComments;
            return this;
        }

        public ContractTransaction.Builder withTransactionID(String transactionID) {
            this.transactionID = transactionID;
            return this;
        }

        public ContractTransaction.Builder withTransactionName(String transactionName) {
            this.transactionName = transactionName;
            return this;
        }

        public ContractTransaction.Builder withTransactionParties(String transactionParties) {
            this.transactionParties = transactionParties;
            return this;
        }

        public ContractTransaction.Builder withTransactionTitle(String transactionTitle) {
            this.transactionTitle = transactionTitle;
            return this;
        }

        public ContractTransaction.Builder withTransactionTxnID(String transactionTxnID) {
            this.transactionTxnID = transactionTxnID;
            return this;
        }

        public ContractTransaction.Builder withTransactionType(String transactionType) {
            this.transactionType = transactionType;
            return this;
        }

        public ContractTransaction.Builder withType(String type) {
            this.type = type;
            return this;
        }

        public ContractTransaction build() {
            ContractTransaction contractTransaction = new ContractTransaction();
            contractTransaction.amendment = amendment;
            contractTransaction.capture = capture;
            contractTransaction.contractDocuments = contractDocuments;
            contractTransaction.contractID = contractID;
            contractTransaction.contractTransactionOwner = contractTransactionOwner;
            contractTransaction.created = created;
            contractTransaction.creationElapsedTimeDays = creationElapsedTimeDays;
            contractTransaction.dateEffective = dateEffective;
            contractTransaction.dateEffectiveTransaction = dateEffectiveTransaction;
            contractTransaction.dateExpiry = dateExpiry;
            contractTransaction.dateExpiryTransaction = dateExpiryTransaction;
            contractTransaction.docGenID = docGenID;
            contractTransaction.externalID = externalID;
            contractTransaction.finalized = finalized;
            contractTransaction.metaTransaction = metaTransaction;
            contractTransaction.metaTransactionSubType = metaTransactionSubType;
            contractTransaction.modified = modified;
            contractTransaction.repositoryTransactionType = repositoryTransactionType;
            contractTransaction.rescission = rescission;
            contractTransaction.status = status;
            contractTransaction.storageNode = storageNode;
            contractTransaction.superStatus = superStatus;
            contractTransaction.termination = termination;
            contractTransaction.toBedeleted = toBedeleted;
            contractTransaction.transactionComments = transactionComments;
            contractTransaction.transactionID = transactionID;
            contractTransaction.transactionName = transactionName;
            contractTransaction.transactionParties = transactionParties;
            contractTransaction.transactionTitle = transactionTitle;
            contractTransaction.transactionTxnID = transactionTxnID;
            contractTransaction.transactionType = transactionType;
            contractTransaction.type = type;
            return contractTransaction;
        }

    }

}
