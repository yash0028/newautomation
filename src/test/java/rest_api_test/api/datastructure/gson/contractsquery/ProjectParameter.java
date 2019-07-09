
package rest_api_test.api.datastructure.gson.contractsquery;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;
import java.util.List;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class ProjectParameter {

    @Expose
    private Object defaultValue;
    @Expose
    private String description;
    @Expose
    private List<String> displayValues;
    @Expose
    private Boolean editable;
    @Expose
    private String key;
    @Expose
    private String label;
    @Expose
    private String type;
    @Expose
    private List<String> values;

    public Object getDefaultValue() {
        return defaultValue;
    }

    public String getDescription() {
        return description;
    }

    public List<String> getDisplayValues() {
        return displayValues;
    }

    public Boolean getEditable() {
        return editable;
    }

    public String getKey() {
        return key;
    }

    public String getLabel() {
        return label;
    }

    public String getType() {
        return type;
    }

    public List<String> getValues() {
        return values;
    }

    public static class Builder {

        private Object defaultValue;
        private String description;
        private List<String> displayValues;
        private Boolean editable;
        private String key;
        private String label;
        private String type;
        private List<String> values;

        public ProjectParameter.Builder withDefaultValue(Object defaultValue) {
            this.defaultValue = defaultValue;
            return this;
        }

        public ProjectParameter.Builder withDescription(String description) {
            this.description = description;
            return this;
        }

        public ProjectParameter.Builder withDisplayValues(List<String> displayValues) {
            this.displayValues = displayValues;
            return this;
        }

        public ProjectParameter.Builder withEditable(Boolean editable) {
            this.editable = editable;
            return this;
        }

        public ProjectParameter.Builder withKey(String key) {
            this.key = key;
            return this;
        }

        public ProjectParameter.Builder withLabel(String label) {
            this.label = label;
            return this;
        }

        public ProjectParameter.Builder withType(String type) {
            this.type = type;
            return this;
        }

        public ProjectParameter.Builder withValues(List<String> values) {
            this.values = values;
            return this;
        }

        public ProjectParameter build() {
            ProjectParameter projectParameter = new ProjectParameter();
            projectParameter.defaultValue = defaultValue;
            projectParameter.description = description;
            projectParameter.displayValues = displayValues;
            projectParameter.editable = editable;
            projectParameter.key = key;
            projectParameter.label = label;
            projectParameter.type = type;
            projectParameter.values = values;
            return projectParameter;
        }

    }

}
