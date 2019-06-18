
package exari_test.eif.report;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class Result {

    @Expose
    private Long duration;
    @Expose
    private Status status;

    /*
    CONSTRUCTOR
    */

    public Result() {
    }

    public Result(Long duration, Status status) {
        this.duration = duration;
        this.status = status;
    }

    /*
    STATIC METHODS
    */

    /*
    CLASS METHODS
    */

    public Long getDuration() {
        return duration;
    }

    public Status getStatus() {
        return status;
    }

    /*
    HELPER METHODS
    */

    /*
    UTILITY CLASS
    */

    public static enum Status {
        @SerializedName(value = "passed")
        PASSED,
        @SerializedName(value = "skipped")
        SKIPPED,
        @SerializedName(value = "pending")
        PENDING,
        @SerializedName(value = "undefined")
        UNDEFINED,
        @SerializedName(value = "ambiguous")
        AMBIGUOUS,
        @SerializedName(value = "failed")
        FAILED;
    }

    public static class Builder {

        private Long duration;
        private Status status;

        public Result.Builder withDuration(Long duration) {
            this.duration = duration;
            return this;
        }

        public Result.Builder withStatus(Status status) {
            this.status = status;
            return this;
        }

        public Result build() {
            Result result = new Result();
            result.duration = duration;
            result.status = status;
            return result;
        }

    }

}
