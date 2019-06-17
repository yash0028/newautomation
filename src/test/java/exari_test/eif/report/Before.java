
package exari_test.eif.report;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;
import java.util.List;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class Before {

    @Expose
    private Match match;
    @Expose
    private Result result;
    @Expose
    private List<String> output;

    public Before() {
        this.match = new Match("Hooks.setUp(Scenario)");
        this.result = new Result(1L, Result.Status.PASSED);

    }

    public Match getMatch() {
        return match;
    }

    public Result getResult() {
        return result;
    }

    public List<String> getOutput() {
        return output;
    }

    public static class Builder {

        private Match match;
        private Result result;
        private List<String> output;

        public Before.Builder withMatch(Match match) {
            this.match = match;
            return this;
        }

        public Before.Builder withResult(Result result) {
            this.result = result;
            return this;
        }

        public Before.Builder withOutput(List<String> output) {
            this.output = output;
            return this;
        }

        public Before build() {
            Before before = new Before();
            before.match = match;
            before.result = result;
            before.output = output;
            return before;
        }

    }

}
