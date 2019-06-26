
package exari_test.eif.report;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;
import java.util.List;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class After {

    @Expose
    private Match match;
    @Expose
    private Result result;
    @Expose
    private List<String> output;

    /*
    CONSTRUCTOR
    */

    public After() {
        this.match = new Match("Hooks.tearDown(Scenario)");
        this.result = new Result(1L, Result.Status.PASSED);
    }

    /*
    STATIC METHODS
    */

    /*
    CLASS METHODS
    */

    public Match getMatch() {
        return match;
    }

    public Result getResult() {
        return result;
    }

    public List<String> getOutput() {
        return output;
    }

    /*
    HELPER METHODS
    */

    /*
    UTILITY CLASS
    */

    public static class Builder {

        private Match match;
        private Result result;
        private List<String> output;

        public After.Builder withMatch(Match match) {
            this.match = match;
            return this;
        }

        public After.Builder withResult(Result result) {
            this.result = result;
            return this;
        }

        public After.Builder withOutput(List<String> output) {
            this.output = output;
            return this;
        }

        public After build() {
            After after = new After();
            after.match = match;
            after.result = result;
            after.output = output;
            return after;
        }

    }

}
