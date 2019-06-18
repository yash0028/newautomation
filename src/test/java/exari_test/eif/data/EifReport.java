package exari_test.eif.data;

import exari_test.eif.report.Match;
import exari_test.eif.report.Result;
import exari_test.eif.report.Step;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * EifReport tracks the failed stage for a Hive Test
 */
public class EifReport {
    private static final Logger log = LoggerFactory.getLogger(EifReport.class);

    private Step loginStep;
    private Step siteStep;
    private Step authorStep;
    private Step captureStep;
    private Step activeStep;

    private String name;
    private Map<String, String> noteMap;

    /*
    CONSTRUCTOR
    */

    /**
     * Create new EifReport with default stage of 100
     */
    EifReport() {
        this.noteMap = new HashMap<>();
        init();
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


    public void markLogin(Result result) {
        this.loginStep.setResult(result);
    }

    public void markSetSite(Result result) {
        this.siteStep.setResult(result);

    }

    public void markAuthor(Result result) {
        this.authorStep.setResult(result);

    }

    public void markCapture(Result result) {
        this.captureStep.setResult(result);

    }

    public void markActive(Result result) {
        this.activeStep.setResult(result);

    }

    /**
     * Create a List of Steps for a Cucumber Report
     *
     * @return List of Steps with states and any additional details
     */
    public List<Step> getStepsReport() {
        return Arrays.asList(loginStep, siteStep, authorStep, captureStep, activeStep);
    }

    /*
    HELPER METHODS
    */

    private void init() {
        final String siteName = noteMap.getOrDefault("siteName", "unknown");
        final String contractId = noteMap.getOrDefault("contractId", "unknown");
        Step.Builder builder = new Step.Builder();

        /* GIVEN I login to Exari Test */
        builder.withName("I login to Exari Test");
        builder.withKeyword(Step.Keyword.GIVEN);
        builder.withMatch(new Match("ProtoStep.loginHome()"));
        builder.withLine(1);

        this.loginStep = builder.build();
        builder = new Step.Builder();


        /* WHEN I navigate to the site */
        builder.withName("I navigate to the site: " + siteName);
        builder.withKeyword(Step.Keyword.WHEN);
        builder.withMatch(new Match("ProtoStep.setSite()"));
        builder.withLine(2);

        this.siteStep = builder.build();
        builder = new Step.Builder();


        /* AND I author a contract */
        builder.withName("I author a contract");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("ProtoStep.authorContract()"));
        builder.withLine(3);

        this.authorStep = builder.build();
        builder = new Step.Builder();


        /* AND I sign the final capture */
        builder.withName("I sign the final capture");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("ProtoStep.finalCapture()"));
        builder.withLine(4);

        this.captureStep = builder.build();
        builder = new Step.Builder();


        /* THEN I have an active contract */
        builder.withName("I have an active contract");
        builder.withKeyword(Step.Keyword.THEN);
        builder.withMatch(new Match("ProtoStep.checkActiveContractStatus()"));
        builder.withLine(5);

        this.activeStep = builder.build();

        // Add additional output
//        this.captureStep.addOutput("Contract Id: " + contractId);
    }
    
    /*
    UTILITY CLASS
    */
}
