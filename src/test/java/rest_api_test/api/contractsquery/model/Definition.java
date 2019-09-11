
package rest_api_test.api.contractsquery.model;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class Definition {

    @Expose
    private String description;
    @Expose
    private Parameters parameters;
    @Expose
    private Boolean published;
    @Expose
    private Boolean requiresApproval;
    @Expose
    private Long reviewDueDaysOffset;
    @Expose
    private Object reviewWorkflowName;
    @Expose
    private String systemUUID;
    @Expose
    private String title;
    @Expose
    private String type;
    @Expose
    private TypeDetail typeDetail;

    public String getDescription() {
        return description;
    }

    public Parameters getParameters() {
        return parameters;
    }

    public Boolean getPublished() {
        return published;
    }

    public Boolean getRequiresApproval() {
        return requiresApproval;
    }

    public Long getReviewDueDaysOffset() {
        return reviewDueDaysOffset;
    }

    public Object getReviewWorkflowName() {
        return reviewWorkflowName;
    }

    public String getSystemUUID() {
        return systemUUID;
    }

    public String getTitle() {
        return title;
    }

    public String getType() {
        return type;
    }

    public TypeDetail getTypeDetail() {
        return typeDetail;
    }

    public static class Builder {

        private String description;
        private Parameters parameters;
        private Boolean published;
        private Boolean requiresApproval;
        private Long reviewDueDaysOffset;
        private Object reviewWorkflowName;
        private String systemUUID;
        private String title;
        private String type;
        private TypeDetail typeDetail;

        public Definition.Builder withDescription(String description) {
            this.description = description;
            return this;
        }

        public Definition.Builder withParameters(Parameters parameters) {
            this.parameters = parameters;
            return this;
        }

        public Definition.Builder withPublished(Boolean published) {
            this.published = published;
            return this;
        }

        public Definition.Builder withRequiresApproval(Boolean requiresApproval) {
            this.requiresApproval = requiresApproval;
            return this;
        }

        public Definition.Builder withReviewDueDaysOffset(Long reviewDueDaysOffset) {
            this.reviewDueDaysOffset = reviewDueDaysOffset;
            return this;
        }

        public Definition.Builder withReviewWorkflowName(Object reviewWorkflowName) {
            this.reviewWorkflowName = reviewWorkflowName;
            return this;
        }

        public Definition.Builder withSystemUUID(String systemUUID) {
            this.systemUUID = systemUUID;
            return this;
        }

        public Definition.Builder withTitle(String title) {
            this.title = title;
            return this;
        }

        public Definition.Builder withType(String type) {
            this.type = type;
            return this;
        }

        public Definition.Builder withTypeDetail(TypeDetail typeDetail) {
            this.typeDetail = typeDetail;
            return this;
        }

        public Definition build() {
            Definition definition = new Definition();
            definition.description = description;
            definition.parameters = parameters;
            definition.published = published;
            definition.requiresApproval = requiresApproval;
            definition.reviewDueDaysOffset = reviewDueDaysOffset;
            definition.reviewWorkflowName = reviewWorkflowName;
            definition.systemUUID = systemUUID;
            definition.title = title;
            definition.type = type;
            definition.typeDetail = typeDetail;
            return definition;
        }

    }

}
