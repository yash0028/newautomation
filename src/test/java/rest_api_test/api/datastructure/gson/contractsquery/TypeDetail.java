
package rest_api_test.api.datastructure.gson.contractsquery;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;
import java.util.List;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class TypeDetail {

    @Expose
    private String dataManagementType;
    @Expose
    private List<DefinitionParameter> definitionParameters;
    @Expose
    private String description;
    @Expose
    private String name;
    @Expose
    private List<ProjectParameter> projectParameters;
    @Expose
    private String title;
    @Expose
    private List<String> workItemTargetType;

    public String getDataManagementType() {
        return dataManagementType;
    }

    public List<DefinitionParameter> getDefinitionParameters() {
        return definitionParameters;
    }

    public String getDescription() {
        return description;
    }

    public String getName() {
        return name;
    }

    public List<ProjectParameter> getProjectParameters() {
        return projectParameters;
    }

    public String getTitle() {
        return title;
    }

    public List<String> getWorkItemTargetType() {
        return workItemTargetType;
    }

    public static class Builder {

        private String dataManagementType;
        private List<DefinitionParameter> definitionParameters;
        private String description;
        private String name;
        private List<ProjectParameter> projectParameters;
        private String title;
        private List<String> workItemTargetType;

        public TypeDetail.Builder withDataManagementType(String dataManagementType) {
            this.dataManagementType = dataManagementType;
            return this;
        }

        public TypeDetail.Builder withDefinitionParameters(List<DefinitionParameter> definitionParameters) {
            this.definitionParameters = definitionParameters;
            return this;
        }

        public TypeDetail.Builder withDescription(String description) {
            this.description = description;
            return this;
        }

        public TypeDetail.Builder withName(String name) {
            this.name = name;
            return this;
        }

        public TypeDetail.Builder withProjectParameters(List<ProjectParameter> projectParameters) {
            this.projectParameters = projectParameters;
            return this;
        }

        public TypeDetail.Builder withTitle(String title) {
            this.title = title;
            return this;
        }

        public TypeDetail.Builder withWorkItemTargetType(List<String> workItemTargetType) {
            this.workItemTargetType = workItemTargetType;
            return this;
        }

        public TypeDetail build() {
            TypeDetail typeDetail = new TypeDetail();
            typeDetail.dataManagementType = dataManagementType;
            typeDetail.definitionParameters = definitionParameters;
            typeDetail.description = description;
            typeDetail.name = name;
            typeDetail.projectParameters = projectParameters;
            typeDetail.title = title;
            typeDetail.workItemTargetType = workItemTargetType;
            return typeDetail;
        }

    }

}
