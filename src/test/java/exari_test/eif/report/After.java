
package exari_test.eif.report;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class After {

    @Expose
    private Match match;
    @Expose
    private Result result;

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

    /*
    HELPER METHODS
    */

    /*
    UTILITY CLASS
    */

    public static class Builder {

        private Match match;
        private Result result;

        public After.Builder withMatch(Match match) {
            this.match = match;
            return this;
        }

        public After.Builder withResult(Result result) {
            this.result = result;
            return this;
        }

        public After build() {
            After after = new After();
            after.match = match;
            after.result = result;
            return after;
        }

    }

}
