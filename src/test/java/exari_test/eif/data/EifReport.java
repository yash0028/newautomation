package exari_test.eif.data;

import exari_test.eif.report.Match;
import exari_test.eif.report.Result;
import exari_test.eif.report.Step;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * EifReport tracks the failed stage for a Hive Test
 */
public class EifReport {
    private static final Logger log = LoggerFactory.getLogger(EifReport.class);

    private int stage;

    private String name;
    private Map<String, String> noteMap;

    /*
    CONSTRUCTOR
    */

    /**
     * Create new EifReport with default stage of 100
     */
    EifReport() {
        stage = 100;
        noteMap = new HashMap<>();
    }

    /*
    CLASS METHODS
    */

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void addNote(String key, String value) {
        this.noteMap.put(key, value);
    }

    /**
     * Mark the test as a failure at the login stage = 1
     */
    public void markLoginFail() {
        this.stage = 1;
        log.trace("Hive failed at Login");
    }

    /**
     * Mark the test as a failure at the site stage = 2
     */
    public void markSetSiteFail() {
        this.stage = 2;
        log.trace("Hive failed at Site");

    }

    /**
     * Mark the test as a failure at the author stage = 3
     */
    public void markAuthorFail() {
        this.stage = 3;
        log.trace("Hive failed at Author");

    }

    /**
     * Mark the test as a failure at the capture stage = 4
     */
    public void markCaptureFail() {
        this.stage = 4;
        log.trace("Hive failed at Capture");

    }

    /**
     * Mark the test as a failure at the active stage = 5
     */
    public void markActiveFail() {
        this.stage = 5;
        log.trace("Hive failed at Active");

    }

    /**
     * Get the current failure stage index. 100 means no failure
     *
     * @return failure stage index
     */
    public int getFailureStage() {
        return stage;
    }

    /**
     * Create a List of Steps for a Cucumber Report
     * @return List of Steps with states and any additional details
     */
    public List<Step> getStepsReport() {
        List<Step> steps = new ArrayList<>();

        // Create new output array and Step Builder. Used with the GIVEN STEP
        List<String> output = new ArrayList<>();
        Step.Builder builder = new Step.Builder();

        final String siteName = noteMap.getOrDefault("siteName", "unknown");
        final String contractId = noteMap.getOrDefault("contractId", "unknown");

        /* GIVEN I login to Exari Test */
        builder.withKeyword(Step.Keyword.GIVEN);
        builder.withLine(1);
        builder.withName("I login to Exari Test");
        builder.withMatch(new Match("ProtoStep.loginHome()"));

        // Check login
        if (stage == 1) {
            // failed on login
            builder.withResult(new Result(10L, Result.Status.FAILED));
        } else if (stage < 1) {
            // failed before login
            builder.withResult(new Result(10L, Result.Status.SKIPPED));
        } else {
            // passed login
            builder.withResult(new Result(10L, Result.Status.PASSED));
        }

        // Add and reset
        if (!output.isEmpty()) {
            builder.withOutput(output);
        }
        steps.add(builder.build());

        // Create new output array and Step Builder. Used with the WHEN STEP
        output = new ArrayList<>();
        builder = new Step.Builder();

        /* WHEN I navigate to the site */
        builder.withKeyword(Step.Keyword.WHEN);
        builder.withLine(2);
        builder.withName("I navigate to the site: " + siteName);
        builder.withMatch(new Match("ProtoStep.setSite()"));

        // Check Site
        if (stage == 2) {
            // failed on site
            builder.withResult(new Result(10L, Result.Status.FAILED));
        } else if (stage < 2) {
            // failed before site
            builder.withResult(new Result(10L, Result.Status.SKIPPED));
        } else {
            // passed site
            builder.withResult(new Result(10L, Result.Status.PASSED));
        }

        // Add and reset
        if (!output.isEmpty()) {
            builder.withOutput(output);
        }
        steps.add(builder.build());

        // Create new output array and Step Builder. Used with the AND STEP
        output = new ArrayList<>();
        builder = new Step.Builder();

        /* AND I author a contract */
        builder.withKeyword(Step.Keyword.AND);
        builder.withLine(3);
        builder.withName("I author a contract");
        builder.withMatch(new Match("ProtoStep.authorContract()"));

        // Check author
        if (stage == 3) {
            // failed on author
            builder.withResult(new Result(10L, Result.Status.FAILED));
        } else if (stage < 2) {
            // failed before author
            builder.withResult(new Result(10L, Result.Status.SKIPPED));
        } else {
            // passed author
            builder.withResult(new Result(10L, Result.Status.PASSED));
        }

        // Add and reset
        if (!output.isEmpty()) {
            builder.withOutput(output);
        }
        steps.add(builder.build());

        // Create new output array and Step Builder. Used with the AND STEP
        output = new ArrayList<>();
        builder = new Step.Builder();

        /* AND I sign the final capture */
        builder.withKeyword(Step.Keyword.AND);
        builder.withLine(4);
        builder.withName("I sign the final capture");
        builder.withMatch(new Match("ProtoStep.finalCapture()"));

        // Check capture
        if (stage == 4) {
            // failed on capture
            builder.withResult(new Result(10L, Result.Status.FAILED));
        } else if (stage < 4) {
            // failed before capture
            builder.withResult(new Result(10L, Result.Status.SKIPPED));
        } else {
            // passed capture
            builder.withResult(new Result(10L, Result.Status.PASSED));
            output.add("Contract Id: " + contractId);
        }

        // Add and reset
        if (!output.isEmpty()) {
            builder.withOutput(output);
        }
        steps.add(builder.build());

        // Create new output array and Step Builder. Used with the THEN STEP
        output = new ArrayList<>();
        builder = new Step.Builder();

        /* THEN I have an active contract */
        builder.withKeyword(Step.Keyword.THEN);
        builder.withLine(5);
        builder.withName("I have an active contract");
        builder.withMatch(new Match("ProtoStep.checkActiveContractStatus()"));

        // Check capture
        if (stage == 5) {
            // failed on capture
            builder.withResult(new Result(10L, Result.Status.FAILED));
        } else if (stage < 5) {
            // failed before capture
            builder.withResult(new Result(10L, Result.Status.SKIPPED));
        } else {
            // passed capture
            builder.withResult(new Result(10L, Result.Status.PASSED));
        }

        // Add
        if (!output.isEmpty()) {
            builder.withOutput(output);
        }
        steps.add(builder.build());

        return steps;
    }

    /*
    HELPER METHODS
    */
    
    /*
    UTILITY CLASS
    */
}
