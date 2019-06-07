package exari_test.eif.data;

import com.google.gson.JsonObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class EifReport {
    private static final Logger log = LoggerFactory.getLogger(EifReport.class);

    private int stage;

    /*
    CONSTRUCTOR
    */

    EifReport() {
        stage = 100;
    }

    /*
    CLASS METHODS
    */

    public void markLoginFail() {
        this.stage = 1;
    }

    public void markSetSiteFail() {
        this.stage = 2;
    }

    public void markAuthorFail() {
        this.stage = 3;
    }

    public void markCaptureFail() {
        this.stage = 4;
    }

    public int getFailureStage() {
        return stage;
    }

    public JsonObject getGherkinReport() {
        return new JsonObject();
    }

    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
