package rest_api_test.api.datastructure.gson.contractsquery;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class ResponseMessage {

    @Expose
    private String created;
    @Expose
    private String creator;
    @Expose
    private Definition definition;
    @Expose
    private String definitionUUID;
    @Expose
    private String description;
    @Expose
    private String executionEndTime;
    @Expose
    private String executionStartTime;
    @Expose
    private Parameters parameters;
    @Expose
    private Long referenceNumber;
    @Expose
    private Boolean requiresApproval;
    @Expose
    private String status;
    @Expose
    private String systemUUID;
    @Expose
    private String title;

    public String getCreated() {
        return created;
    }

    public String getCreator() {
        return creator;
    }

    public Definition getDefinition() {
        return definition;
    }

    public String getDefinitionUUID() {
        return definitionUUID;
    }

    public String getDescription() {
        return description;
    }

    public String getExecutionEndTime() {
        return executionEndTime;
    }

    public String getExecutionStartTime() {
        return executionStartTime;
    }

    public Parameters getParameters() {
        return parameters;
    }

    public Long getReferenceNumber() {
        return referenceNumber;
    }

    public Boolean getRequiresApproval() {
        return requiresApproval;
    }

    public String getStatus() {
        return status;
    }

    public String getSystemUUID() {
        return systemUUID;
    }

    public String getTitle() {
        return title;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder(title);
        builder.append(" [").append(status).append("]");
        return builder.toString();
    }

    public static class Builder {

        private String created;
        private String creator;
        private Definition definition;
        private String definitionUUID;
        private String description;
        private String executionEndTime;
        private String executionStartTime;
        private Parameters parameters;
        private Long referenceNumber;
        private Boolean requiresApproval;
        private String status;
        private String systemUUID;
        private String title;

        public ResponseMessage.Builder withCreated(String created) {
            this.created = created;
            return this;
        }

        public ResponseMessage.Builder withCreator(String creator) {
            this.creator = creator;
            return this;
        }

        public ResponseMessage.Builder withDefinition(Definition definition) {
            this.definition = definition;
            return this;
        }

        public ResponseMessage.Builder withDefinitionUUID(String definitionUUID) {
            this.definitionUUID = definitionUUID;
            return this;
        }

        public ResponseMessage.Builder withDescription(String description) {
            this.description = description;
            return this;
        }

        public ResponseMessage.Builder withExecutionEndTime(String executionEndTime) {
            this.executionEndTime = executionEndTime;
            return this;
        }

        public ResponseMessage.Builder withExecutionStartTime(String executionStartTime) {
            this.executionStartTime = executionStartTime;
            return this;
        }

        public ResponseMessage.Builder withParameters(Parameters parameters) {
            this.parameters = parameters;
            return this;
        }

        public ResponseMessage.Builder withReferenceNumber(Long referenceNumber) {
            this.referenceNumber = referenceNumber;
            return this;
        }

        public ResponseMessage.Builder withRequiresApproval(Boolean requiresApproval) {
            this.requiresApproval = requiresApproval;
            return this;
        }

        public ResponseMessage.Builder withStatus(String status) {
            this.status = status;
            return this;
        }

        public ResponseMessage.Builder withSystemUUID(String systemUUID) {
            this.systemUUID = systemUUID;
            return this;
        }

        public ResponseMessage.Builder withTitle(String title) {
            this.title = title;
            return this;
        }

        public ResponseMessage build() {
            ResponseMessage responseMessage = new ResponseMessage();
            responseMessage.created = created;
            responseMessage.creator = creator;
            responseMessage.definition = definition;
            responseMessage.definitionUUID = definitionUUID;
            responseMessage.description = description;
            responseMessage.executionEndTime = executionEndTime;
            responseMessage.executionStartTime = executionStartTime;
            responseMessage.parameters = parameters;
            responseMessage.referenceNumber = referenceNumber;
            responseMessage.requiresApproval = requiresApproval;
            responseMessage.status = status;
            responseMessage.systemUUID = systemUUID;
            responseMessage.title = title;
            return responseMessage;
        }

    }

}
