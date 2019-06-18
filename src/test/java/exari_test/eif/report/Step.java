package exari_test.eif.report;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import javax.annotation.Generated;
import java.util.List;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class Step {

    @Expose
    private Keyword keyword;
    @Expose
    private int line;
    @Expose
    private Match match;
    @Expose
    private String name;
    @Expose
    private Result result;
    @Expose
    private List<String> output;

    /*
    CONSTRUCTOR
    */

    public Step() {
        this.result = new Result(0L, Result.Status.SKIPPED);
    }

    /*
    STATIC METHODS
    */

    /*
    CLASS METHODS
    */

    public Keyword getKeyword() {
        return keyword;
    }

    public int getLine() {
        return line;
    }

    public Match getMatch() {
        return match;
    }

    public String getName() {
        return name;
    }

    public Result getResult() {
        return result;
    }

    public List<String> getOutput() {
        return output;
    }

    public void setResult(Result result) {
        this.result = result;
    }

    public void setResult(Result.Status status) {
        this.result = new Result(10L, status);
    }

    public void addOutput(String outputLine) {
        this.output.add(outputLine);
    }

    /*
    HELPER METHODS
    */

    /*
    UTILITY CLASS
    */

    public static enum Keyword {
        @SerializedName(value = "Given ", alternate = {"Given", "given"})
        GIVEN,
        @SerializedName(value = "When ", alternate = {"When", "when"})
        WHEN,
        @SerializedName(value = "Then ", alternate = {"Then", "then"})
        THEN,
        @SerializedName(value = "And ", alternate = {"And", "and"})
        AND,
        @SerializedName(value = "But ", alternate = {"But", "but"})
        BUT;
    }

    public static class Builder {

        private Keyword keyword;
        private int line;
        private Match match;
        private String name;
        private Result result;
        private List<String> output;

        public Step.Builder withKeyword(Keyword keyword) {
            this.keyword = keyword;
            return this;
        }

        public Step.Builder withLine(int line) {
            this.line = line;
            return this;
        }

        public Step.Builder withMatch(Match match) {
            this.match = match;
            return this;
        }

        public Step.Builder withName(String name) {
            this.name = name;
            return this;
        }

        public Step.Builder withResult(Result result) {
            this.result = result;
            return this;
        }

        public Step.Builder withOutput(List<String> output) {
            this.output = output;
            return this;
        }

        public Step build() {
            Step step = new Step();
            step.keyword = keyword;
            step.line = line;
            step.match = match;
            step.name = name;
            step.result = result;
            step.output = output;
            return step;
        }

    }

}
