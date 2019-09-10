
package rest_api_test.api.contractsquery.model;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;
import java.util.List;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class DefinitionParameter {

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

        public DefinitionParameter.Builder withDefaultValue(Object defaultValue) {
            this.defaultValue = defaultValue;
            return this;
        }

        public DefinitionParameter.Builder withDescription(String description) {
            this.description = description;
            return this;
        }

        public DefinitionParameter.Builder withDisplayValues(List<String> displayValues) {
            this.displayValues = displayValues;
            return this;
        }

        public DefinitionParameter.Builder withEditable(Boolean editable) {
            this.editable = editable;
            return this;
        }

        public DefinitionParameter.Builder withKey(String key) {
            this.key = key;
            return this;
        }

        public DefinitionParameter.Builder withLabel(String label) {
            this.label = label;
            return this;
        }

        public DefinitionParameter.Builder withType(String type) {
            this.type = type;
            return this;
        }

        public DefinitionParameter.Builder withValues(List<String> values) {
            this.values = values;
            return this;
        }

        public DefinitionParameter build() {
            DefinitionParameter definitionParameter = new DefinitionParameter();
            definitionParameter.defaultValue = defaultValue;
            definitionParameter.description = description;
            definitionParameter.displayValues = displayValues;
            definitionParameter.editable = editable;
            definitionParameter.key = key;
            definitionParameter.label = label;
            definitionParameter.type = type;
            definitionParameter.values = values;
            return definitionParameter;
        }

    }

}
