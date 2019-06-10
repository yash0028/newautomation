
package exari_test.eif.report;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;
import java.util.List;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class Scenario {

    @Expose
    private List<After> after;
    @Expose
    private List<Before> before;
    @Expose
    private String description;
    @Expose
    private String id;
    @Expose
    private String keyword;
    @Expose
    private int line;
    @Expose
    private String name;
    @Expose
    private List<Step> steps;
    @Expose
    private List<Tag> tags;
    @Expose
    private String type;

    public List<After> getAfter() {
        return after;
    }

    public List<Before> getBefore() {
        return before;
    }

    public String getDescription() {
        return description;
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

    public List<Step> getSteps() {
        return steps;
    }

    public List<Tag> getTags() {
        return tags;
    }

    public String getType() {
        return type;
    }

    public static class Builder {

        private List<After> after;
        private List<Before> before;
        private String description;
        private String id;
        private String keyword = "Scenario";
        private int line;
        private String name;
        private List<Step> steps;
        private List<Tag> tags;
        private String type = "scenario";

        public Scenario.Builder withAfter(List<After> after) {
            this.after = after;
            return this;
        }

        public Scenario.Builder withBefore(List<Before> before) {
            this.before = before;
            return this;
        }

        public Scenario.Builder withDescription(String description) {
            this.description = description;
            return this;
        }

        public Scenario.Builder withId(String id) {
            this.id = id;
            return this;
        }

        public Scenario.Builder withKeyword(String keyword) {
            this.keyword = keyword;
            return this;
        }

        public Scenario.Builder withLine(int line) {
            this.line = line;
            return this;
        }

        public Scenario.Builder withName(String name) {
            this.name = name;
            return this;
        }

        public Scenario.Builder withSteps(List<Step> steps) {
            this.steps = steps;
            return this;
        }

        public Scenario.Builder withTags(List<Tag> tags) {
            this.tags = tags;
            return this;
        }

        public Scenario.Builder withType(String type) {
            this.type = type;
            return this;
        }

        public Scenario build() {
            Scenario scenario = new Scenario();
            scenario.after = after;
            scenario.before = before;
            scenario.description = description;
            scenario.id = id;
            scenario.keyword = keyword;
            scenario.line = line;
            scenario.name = name;
            scenario.steps = steps;
            scenario.tags = tags;
            scenario.type = type;
            return scenario;
        }

    }

}
