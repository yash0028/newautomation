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
    private Step CSVReaderStep;
    private Step PESInputs;
    private Step PESResponse;
    private Step MarketNumber;
    private Step RequestForParticipationResponse;
    private Step DocumentSelection;
    private Step previewProviderDetails_1;
    private Step PracticeLocationsforSPGAContract;
    private Step PracticeLocationsforMGAContract;
    private Step PracticeLocationsforSPAContract;
    private Step previewProviderDetails_2;
    private Step MarketExceptionGrid_1;
    private Step MarketExceptionGrid_2;
    private Step ContractDetails;
    private Step ArticlePage;
    private Step SignatureBlock;
    private Step HBPsRedDoor;
    private Step MarketStrategyGrid;
    private Step Appendix2;
    private Step PaymentAppendix;
    private Step AdditionalLocations;
    private Step RegulatoryAppendices;
    private Step ProviderRoster;
    private Step Amendments;
    private Step GroupSummary;
    private Step ICompleteWizard;

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
    public EifReport() {
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
    public void markPESInputs(Result result) {
        this.PESInputs.setResult(result);

    }
    public void markPESResponse(Result result) {
        this.PESResponse.setResult(result);

    }
    public void markMarketNumber(Result result) {
        this.MarketNumber.setResult(result);

    }
    public void markRequestForParticipationResponse(Result result) {
        this.RequestForParticipationResponse.setResult(result);

    }
    public void markDocumentSelection(Result result) {
        this.DocumentSelection.setResult(result);

    }
    public void markpreviewProviderDetails_1(Result result) {
        this.previewProviderDetails_1.setResult(result);

    }
    public void markPracticeLocationsforSPGAContract(Result result) {
        this.PracticeLocationsforSPGAContract.setResult(result);

    }
    public void markPracticeLocationsforSPAContract(Result result) {
        this.PracticeLocationsforSPAContract.setResult(result);

    }
    public void markPracticeLocationsforMGAContract(Result result) {
        this.PracticeLocationsforMGAContract.setResult(result);

    }
    public void previewProviderDetails_2(Result result) {
        this.previewProviderDetails_2.setResult(result);

    }
    public void markMarketExceptionGrid_1(Result result) {
        this.MarketExceptionGrid_1.setResult(result);

    }
    public void markMarketExceptionGrid_2(Result result) {
        this.MarketExceptionGrid_2.setResult(result);

    }
    public void markContractDetails(Result result) {
        this.ContractDetails.setResult(result);

    }
    public void markArticlePage(Result result) {
        this.ArticlePage.setResult(result);

    }
    public void markSignatureBlock(Result result) {
        this.SignatureBlock.setResult(result);

    }
    public void markHBPsRedDoor(Result result) {
        this.HBPsRedDoor.setResult(result);

    }
    public void markMarketStrategyGrid(Result result) {
        this.MarketStrategyGrid.setResult(result);

    }
    public void markAppendix2(Result result) {
        this.Appendix2.setResult(result);

    }
    public void markPaymentAppendix(Result result) {
        this.PaymentAppendix.setResult(result);

    }
    public void markAdditionalLocations(Result result) {
        this.AdditionalLocations.setResult(result);

    }
    public void markRegulatoryAppendices(Result result) {
        this.RegulatoryAppendices.setResult(result);

    }
    public void markProviderRoster(Result result) {
        this.ProviderRoster.setResult(result);

    }
    public void markAmendments(Result result) {
        this.Amendments.setResult(result);

    }
    public void markGroupSummary(Result result) {
        this.GroupSummary.setResult(result);

    }
    public void markICompleteWizard(Result result) {
        this.ICompleteWizard.setResult(result);

    }
    public void markCSVReader(Result result) {
        this.CSVReaderStep.setResult(result);

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
        return Arrays.asList(
                loginStep,
                siteStep,
                CSVReaderStep,
                PESInputs,
                PESResponse,
                MarketNumber,
                RequestForParticipationResponse,
                DocumentSelection,
                previewProviderDetails_1,
                PracticeLocationsforSPGAContract,
                PracticeLocationsforMGAContract,
                PracticeLocationsforSPAContract,
                previewProviderDetails_2,
                MarketExceptionGrid_1,
                MarketExceptionGrid_2,
                ContractDetails,
                ArticlePage,
                SignatureBlock,
                HBPsRedDoor,
                MarketStrategyGrid,
                Appendix2,
                PaymentAppendix,
                AdditionalLocations,
                RegulatoryAppendices,
                ProviderRoster,
                Amendments,
                GroupSummary,
                ICompleteWizard,
                authorStep,
                captureStep,
                activeStep);
    }

    /*
    HELPER METHODS
    */

    private void init() {
        final String siteName = noteMap.getOrDefault("siteName", "unknown");
        //final String contractId = noteMap.getOrDefault("contractId", "unknown");
        final String testName = noteMap.getOrDefault("testName", "unknown");

        Step.Builder builder = new Step.Builder();


        /* GIVEN I login to Exari Test */
        builder.withName("I login to Exari Test");
        builder.withKeyword(Step.Keyword.GIVEN);
        builder.withMatch(new Match("ProtoStep.loginHome()"));
        builder.withLine(1);

        this.loginStep = builder.build();
        builder = new Step.Builder();


        /* WHEN I navigate to the site */
        builder.withName("I navigate to the site: noteMap->siteName");
        builder.withKeyword(Step.Keyword.WHEN);
        builder.withMatch(new Match("ProtoStep.setSite()"));
        builder.withLine(2);

        this.siteStep = builder.build();
        builder = new Step.Builder();


        /* And I am using the "<TCName>" data */
        builder.withName("I am using the data: noteMap->testName");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.CSVReaderStep = builder.build();
        builder = new Step.Builder();

        /* And I enter PES Inputs */
        builder.withName("I enter PES Inputs");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("basePage.getPesInputActions().enterPESInput(hmap)"));
        builder.withLine(3);

        this.PESInputs = builder.build();
        builder = new Step.Builder();

        /* And I enter PES Response */
        builder.withName("I enter PES Response");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("basePage.getPes_response().selectCounterParty(hmap)," +
                "basePage.getPes_response().specifyApproachForCounter(hmap)," +
                "basePage.getPes_response().selectCounterPartyAddress(hmap)"));
        builder.withLine(3);

        this.PESResponse = builder.build();
        builder = new Step.Builder();

        /* And I select Market Number */
        builder.withName("I select Market Number");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.MarketNumber = builder.build();
        builder = new Step.Builder();

        /* And I enter Request For Participation Response */
        builder.withName("I enter Request For Participation Response");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.RequestForParticipationResponse = builder.build();
        builder = new Step.Builder();

        /* And I enter Document Selection */
        builder.withName("I enter Document Selection");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.DocumentSelection = builder.build();
        builder = new Step.Builder();

        /* And I preview Provider Details */
        builder.withName("I preview Provider Details");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.previewProviderDetails_1= builder.build();
        builder = new Step.Builder();

        /* And I enter Practice Locations for SPGA Contract */
        builder.withName("I enter Practice Locations for SPGA Contract");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.PracticeLocationsforSPGAContract = builder.build();
        builder = new Step.Builder();

        /* And I enter Practice Locations for MGA Contract */
        builder.withName("I enter Practice Locations for MGA Contract");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.PracticeLocationsforMGAContract = builder.build();
        builder = new Step.Builder();

        /* And I enter Practice Locations for SPA Contract */
        builder.withName("I enter Practice Locations for SPA Contract");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.PracticeLocationsforSPAContract = builder.build();
        builder = new Step.Builder();

        /* And I preview Provider Details */
        builder.withName("I preview Provider Details");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.previewProviderDetails_2 = builder.build();
        builder = new Step.Builder();

        /* And I enter Market Exception Grid */
        builder.withName("I enter Market Exception Grid");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.MarketExceptionGrid_1 = builder.build();
        builder = new Step.Builder();

        /* And I enter Market Exception Grid */
        builder.withName("I enter Market Exception Grid");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.MarketExceptionGrid_2 = builder.build();
        builder = new Step.Builder();

        /* And I enter Contract Details */
        builder.withName("I enter Contract Details");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.ContractDetails = builder.build();
        builder = new Step.Builder();

        /* And I enter Article Page */
        builder.withName("I enter Article Page");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.ArticlePage = builder.build();
        builder = new Step.Builder();

        /* And I enter Signature Block */
        builder.withName("I enter Signature Block");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.SignatureBlock = builder.build();
        builder = new Step.Builder();

        /* And I enter HBPs Red Door */
        builder.withName("I enter HBPs Red Door");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.HBPsRedDoor = builder.build();
        builder = new Step.Builder();

        /* And I enter Market Strategy Grid */
        builder.withName("I enter Market Strategy Grid");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.MarketStrategyGrid = builder.build();
        builder = new Step.Builder();

        /* And I enter Appendix 2 */
        builder.withName("I enter Appendix 2");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.Appendix2 = builder.build();
        builder = new Step.Builder();

        /* And I enter Payment Appendix */
        builder.withName("I enter Payment Appendix");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.PaymentAppendix = builder.build();
        builder = new Step.Builder();

        /* And I enter Additional Locations */
        builder.withName("I enter Additional Locations");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.AdditionalLocations = builder.build();
        builder = new Step.Builder();

        /* And I enter Regulatory Appendices */
        builder.withName("I enter Regulatory Appendices");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.RegulatoryAppendices = builder.build();
        builder = new Step.Builder();

        /* And I enter Provider Roster */
        builder.withName("I enter Provider Roster");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.ProviderRoster = builder.build();
        builder = new Step.Builder();

        /* And I enter Amendments */
        builder.withName("I enter Amendments");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.Amendments = builder.build();
        builder = new Step.Builder();

        /* And I enter Group Summary */
        builder.withName("I enter Group Summary");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.GroupSummary = builder.build();
        builder = new Step.Builder();

        /* Then I Complete Wizard */
        builder.withName("I Complete Wizard");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("CSVReader.readFile()"));
        builder.withLine(3);

        this.ICompleteWizard = builder.build();
        builder = new Step.Builder();


/*
        // AND I author a contract
        builder.withName("I author a contract");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("ProtoStep.authorContract()"));
        builder.withLine(3);

        this.authorStep = builder.build();
        builder = new Step.Builder();

        // AND I sign the final capture

        builder.withName("I sign the final capture");
        builder.withKeyword(Step.Keyword.AND);
        builder.withMatch(new Match("ProtoStep.finalCapture()"));
        builder.withLine(4);

        this.captureStep = builder.build();
        builder = new Step.Builder();
*/
        // THEN I have an active contract
/*
        builder.withName("I have an active contract");
        builder.withKeyword(Step.Keyword.THEN);
        builder.withMatch(new Match("ProtoStep.checkActiveContractStatus()"));
        builder.withLine(5);

        // Add additional output
        this.captureStep.addOutput("Contract Id: " + contractId);

      */
    }
    
    /*
    UTILITY CLASS
    */
}
