
package rest_api_test.api.fallout.model.contract;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;
import java.util.List;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class ContractDocument {

    @Expose
    private String contentsUrl;
    @Expose
    private String created;
    @Expose
    private String docGenDocumentName;
    @Expose
    private String docGenID;
    @Expose
    private List<String> documentClassification;
    @Expose
    private String documentName;
    @Expose
    private String externalID;
    @Expose
    private String modified;
    @Expose
    private String status;
    @Expose
    private StorageNode storageNode;

    public String getContentsUrl() {
        return contentsUrl;
    }

    public String getCreated() {
        return created;
    }

    public String getDocGenDocumentName() {
        return docGenDocumentName;
    }

    public String getDocGenID() {
        return docGenID;
    }

    public List<String> getDocumentClassification() {
        return documentClassification;
    }

    public String getDocumentName() {
        return documentName;
    }

    public String getExternalID() {
        return externalID;
    }

    public String getModified() {
        return modified;
    }

    public String getStatus() {
        return status;
    }

    public StorageNode getStorageNode() {
        return storageNode;
    }

    public static class Builder {

        private String contentsUrl;
        private String created;
        private String docGenDocumentName;
        private String docGenID;
        private List<String> documentClassification;
        private String documentName;
        private String externalID;
        private String modified;
        private String status;
        private StorageNode storageNode;

        public ContractDocument.Builder withContentsUrl(String contentsUrl) {
            this.contentsUrl = contentsUrl;
            return this;
        }

        public ContractDocument.Builder withCreated(String created) {
            this.created = created;
            return this;
        }

        public ContractDocument.Builder withDocGenDocumentName(String docGenDocumentName) {
            this.docGenDocumentName = docGenDocumentName;
            return this;
        }

        public ContractDocument.Builder withDocGenID(String docGenID) {
            this.docGenID = docGenID;
            return this;
        }

        public ContractDocument.Builder withDocumentClassification(List<String> documentClassification) {
            this.documentClassification = documentClassification;
            return this;
        }

        public ContractDocument.Builder withDocumentName(String documentName) {
            this.documentName = documentName;
            return this;
        }

        public ContractDocument.Builder withExternalID(String externalID) {
            this.externalID = externalID;
            return this;
        }

        public ContractDocument.Builder withModified(String modified) {
            this.modified = modified;
            return this;
        }

        public ContractDocument.Builder withStatus(String status) {
            this.status = status;
            return this;
        }

        public ContractDocument.Builder withStorageNode(StorageNode storageNode) {
            this.storageNode = storageNode;
            return this;
        }

        public ContractDocument build() {
            ContractDocument contractDocument = new ContractDocument();
            contractDocument.contentsUrl = contentsUrl;
            contractDocument.created = created;
            contractDocument.docGenDocumentName = docGenDocumentName;
            contractDocument.docGenID = docGenID;
            contractDocument.documentClassification = documentClassification;
            contractDocument.documentName = documentName;
            contractDocument.externalID = externalID;
            contractDocument.modified = modified;
            contractDocument.status = status;
            contractDocument.storageNode = storageNode;
            return contractDocument;
        }

    }

}
