
package exari_test.eif.report;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class Before {

    @Expose
    private Match match;
    @Expose
    private Result result;

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

    public static class Builder {

        private Match match;
        private Result result;

        public Before.Builder withMatch(Match match) {
            this.match = match;
            return this;
        }

        public Before.Builder withResult(Result result) {
            this.result = result;
            return this;
        }

        public Before build() {
            Before before = new Before();
            before.match = match;
            before.result = result;
            return before;
        }

    }

}
