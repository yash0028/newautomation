package exari_test.eif.report;

import com.google.gson.annotations.Expose;

import javax.annotation.Generated;

@Generated("net.hexar.json2pojo")
@SuppressWarnings("unused")
public class Match {

    @Expose
    private String location;

    /*
    CONSTRUCTOR
    */

    public Match() {
    }

    public Match(String location) {
        this.location = location;
    }

    /*
    STATIC METHODS
    */

    /*
    CLASS METHODS
    */

    public String getLocation() {
        return location;
    }

    /*
    HELPER METHODS
    */

    /*
    UTILITY CLASS
    */

    public static class Builder {

        private String location;

        public Match.Builder withLocation(String location) {
            this.location = location;
            return this;
        }

        public Match build() {
            Match match = new Match();
            match.location = location;
            return match;
        }

    }

}
