package exari_test.eif.report;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;
import java.util.List;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class Feature {

    @Expose
    private String description;
    @Expose
    private List<Scenario> elements;
    @Expose
    private String id;
    @Expose
    private String keyword;
    @Expose
    private int line = 1;
    @Expose
    private String name;
    @Expose
    private String uri;

    public String getDescription() {
        return description;
    }

    public List<Scenario> getElements() {
        return elements;
    }

    public String getId() {
        return id;
    }

    public String getKeyword() {
        return keyword;
    }

    public int getLine() {
        return line;
    }

    public String getName() {
        return name;
    }

    public String getUri() {
        return uri;
    }

    public static class Builder {

        private String description;
        private List<Scenario> elements;
        private String id;
        private String keyword = "Feature";
        private int line;
        private String name;
        private String uri;

        public Feature.Builder withDescription(String description) {
            this.description = description;
            return this;
        }

        public Feature.Builder withElements(List<Scenario> elements) {
            this.elements = elements;
            return this;
        }

        public Feature.Builder withId(String id) {
            this.id = id;
            return this;
        }

        public Feature.Builder withKeyword(String keyword) {
            this.keyword = keyword;
            return this;
        }

        public Feature.Builder withLine(int line) {
            this.line = line;
            return this;
        }

        public Feature.Builder withName(String name) {
            this.name = name;
            return this;
        }

        public Feature.Builder withUri(String uri) {
            this.uri = uri;
            return this;
        }

        public Feature build() {
            Feature feature = new Feature();
            feature.description = description;
            feature.elements = elements;
            feature.id = id;
            feature.keyword = keyword;
            feature.line = line;
            feature.name = name;
            feature.uri = uri;
            return feature;
        }

    }

}
