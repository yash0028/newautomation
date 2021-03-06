package ui_test.step;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import exari_test.eif.data.EifTestData;
import exari_test.eif.flow.ContractFlow;
import exari_test.eif.flow.IContractFlowLoader;
import general_test.util.ISharedValuePoster;
import io.cucumber.datatable.DataTable;
import io.restassured.RestAssured;
import io.restassured.response.Response;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import io.restassured.specification.RequestSpecification;

import org.junit.Assert;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import ui_test.page.exari.ProtoStep;
import ui_test.page.exari.contract.ContractPage;
import ui_test.pages.BasePage;
import ui_test.pages.csvReader.CSVReader;
import ui_test.util.IUiStep;
import util.configuration.IConfigurable;
import util.file.IFileReader;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class ExariSteps implements IUiStep, IFileReader, IConfigurable, ISharedValuePoster, IContractFlowLoader {
    private static final Logger log = LoggerFactory.getLogger(ExariSteps.class);
    private static final String DEFAULT_FLOW = "eif-basic-contract.json";
    String home = System.getProperty("user.dir");
    Path contractDetailsTextFile = Paths.get(home, "src", "test", "resources", "support", "hive", "textFiles", "contractDetails.txt");
    Path contractNumberCSVFile = Paths.get(home, "src", "test", "resources", "support", "hive", "csvFiles", "contractNumberFile.csv");
    Path cancelcontractNumberCSVFile = Paths.get(home, "src", "test", "resources", "support", "hive", "csvFiles", "contractNumberFile_Cancel.csv");
    Path contractFlowPath = Paths.get(home, "src", "test", "resources", "support", "hive", "dataMap");
    private ProtoStep protoStep;
    private BasePage basePage;
    private ContractFlow contractFlow;


    public static HashMap<String, String> hmap = new HashMap<>();

    @Given("^I am using the \"([^\"]*)\" flow$")
    public void prepareEIF(String fileName) {
        contractFlow = loadFlowContract(fileName);
    }

    @Given("^I am using the \"([^\"]*)\" data from \"([^\"]*)\" of \"([^\"]*)\" and paper type \"([^\"]*)\"$")
    public void getData(String testName, String fileName, String site, String paperType) {
        Path CSVpath = Paths.get(contractFlowPath.toString(), site, paperType, fileName);
        CSVReader csvReader = new CSVReader();
        this.hmap = csvReader.readFile(CSVpath.toString(), testName, hmap);
    }

    @Given("^I am logged into Exari Dev as a valid user and go to the \"([^\"]*)\" site$")
    public void loginSitePage(String siteOption) {
        initializeObj();
        this.protoStep.loginHome();
        this.protoStep.setSite(siteOption);
    }

    @Given("^I author a contract using the \"([^\"]*)\" flow$")
    public void authorContract(String fileName) {
        contractFlow = loadFlowContract(fileName);
        setupProtoStep();
        this.protoStep.authorContract();
        this.protoStep.finalCapture();
    }

    @And("^I author a contract using the \"([^\"]*)\" flow without final capture$")
    public void authorContractNoCapture(String fileName) {
        contractFlow = loadFlowContract(fileName);
        this.protoStep.authorContract();
    }

    @And("^I enter PES Inputs$")
    public void PESInputs() {
        Assert.assertTrue(this.protoStep.sitePage.startContractAuthor());
        basePage.getPesInputActions().enterPESInput(hmap);

    }

    @And("^I enter PES Response$")
    public void PESResponse() {
        basePage.getPes_response().selectCounterParty(hmap);
        basePage.getPes_response().specifyApproachForCounter(hmap);
    }

    @And("^I enter PES Responses$")
    public void PESResponses() {
        basePage.getPes_response().selectCounterParty(hmap);
        basePage.getPes_response().specifyApproachForCounter(hmap);

    }

    @And("^I select Market Number$")
    public void selectMarketNumber() {
        basePage.getProviderDetails().selectEntry(hmap);

    }

    @And("^new step$")
    public void newmethod() {
        basePage.getProviderDetails().selectEntry(hmap);

    }

    @And("^I enter Request For Participation Response$")
    public void RequestForParticipationResponse() {
        basePage.getRequestForParticipationResponse().performAction();
    }

    @And("^I enter Document Selection$")
    public void DocumentSelection() {
        basePage.getDocumentSelection().selectDocumentType(hmap);

    }

    @And("^I preview Provider Details$")
    public void reviewProviderDetails() {
        basePage.getProviderDetails().previewProfile(hmap);

    }

    @And("^I enter Practice Locations for SPGA Contract$")
    public void SPGAPracticeLocations() {
        basePage.getPracticeLocations().selectLocation(hmap);
    }

    @And("^I enter Practice Locations for MGA Contract$")
    public void MGAPracticeLocations() {
        basePage.getPracticeLocations().selectPracticeLocation(hmap);
    }

    @And("^I enter Practice Locations for SMGA Contract$")
    public void SMGAPracticeLocations() {
        basePage.getPracticeLocations().selectLocation(hmap);
    }

    @And("^I enter Practice Locations for SPA Contract$")
    public void SPAPracticeLocations() {
        basePage.getPracticeLocations().selectLocation(hmap);
    }

    @And("^I enter Practice Locations for PAT Contract$")
    public void PATPracticeLocations() {
        basePage.getPracticeLocations().selectLocation(hmap);
    }

    @And("^I enter Market Exception Grid$")
    public void MarketExceptionGrid() {
        basePage.getMarketExceptionGrid().previewMarketDetails(hmap);
    }

    @And("^I enter Contract Details$")
    public void ContractDetails() {
        basePage.getContractDetails().enterPhyConNumber(hmap);
    }

    @And("^I enter HBPs Red Door$")
    public void HBPsRedDoor() {
        basePage.getHbPsRedDoor().selectRedDoor(hmap);
    }

    @And("^I enter Article Page$")
    public void Article() {
        basePage.getArticle().handleArticle(hmap);
    }

    @And("^I enter Signature Block$")
    public void SignatureBlock() {
        basePage.getSignatureBlock().handleSignatureBlock(hmap);
    }

    @And("^I enter Market Strategy Grid$")
    public void MarketStrategyGrid() {
        basePage.getMarketStrategyGrid().marketStrategyGridCheck();
    }

    @And("^I enter Appendix 2$")
    public void Appendix2() throws InterruptedException {
        basePage.getAppendix2().selectAppendix(hmap);
    }

    @And("^I enter Appendix 1$")
    public void Appendix1() {
        basePage.getAppendix2().SelectAppedix1("No");
    }

    @And("^I enter Payment Appendix$")
    public void PaymentAppendix() {
        basePage.getPaymentAppendix().selectPaymentAppendix(hmap);
        basePage.getPaymentAppendix().enterFeeScheduleID(hmap,false);
        basePage.getPaymentAppendix().verifyFeeScheduleID(hmap);
        basePage.getPaymentAppendix().enterMedicaidCHIPPaymentAppendix(hmap);
    }

    @And("^I enter Payment Appendix in Rhode Island$")
    public void PaymentAppendixforRhodeIsland() {
        basePage.getPaymentAppendix().enterRhodeIslandPaymentAppendix(hmap);



        }

    @And("^I enter payment Appendix in Make Correction$")
    public void PaymentAppendixmakecorrection() {
        basePage.getPaymentAppendix().makecorrectionMSPS();
        basePage.getPaymentAppendix().verifyFeeScheduleID(hmap);

    }

    @And("^I enter Rate Escalator$")
    public void Payment() {
        basePage.getPaymentAppendix().payment();
    }

    @And("^I enter Additional Locations$")
    public void AdditionalLocations() {
        basePage.getAdditionalLocations().selectAdditionalLocations(hmap);
    }

    @And("^I enter Regulatory Appendices$")
    public void RegulatoryAppendices() {
        basePage.getRegulatoryAppendices().selectRegulatoryAppendix(hmap);
    }

    @And("^I enter Regulatory Appendices in Amendment$")
    public void RegulatoryAppendicesAmendment() {
        basePage.getRegulatoryAppendices().selectRegulatoryAppendixAmendment(hmap);
    }
    @And("^I enter Amendments$")
    public void Amendments() {
        basePage.getAmendements().authorAmendments(hmap);
    }

    @And("I select Amendment in Document Selection")
    public void selectAmendmentDocumentSelection() {
        basePage.getDocumentSelection().selectVACCNAmendmentType(hmap);
    }

    @And("^I enter Group Summary$")
    public void GroupSummary() {
        basePage.getGroupSummary().readInterviewSummary();
    }

    @Then("^I Complete Wizard$")
    public void WizardComplete() {
        basePage.getWizardComplete().completeWizard(hmap);
    }

    @When("^I author a contract using the following contract information$")
    public void authorContractWithSubstitute(DataTable contractDataTable) {
        setupProtoStep(contractDataTable);
        this.protoStep.authorContract();
        this.protoStep.finalCapture();
    }

    @When("^I create a Contract$")
    public void createContract() {
        //setupProtoStep();
        Assert.assertTrue(this.protoStep.sitePage.startContractAuthor());
    }

    @Then("^I have an active contract in Exari$")
    public void checkActiveContact() {
        log.info("checking for active status");
        Assert.assertTrue(this.protoStep.checkActiveContractStatus());
    }

    @And("^I Start Workflow$")
    public void workflow() {
        basePage.getContractDetailsDashboard().startWorkFlow();
    }

    @And("^I Start Process for Initial Transaction$")
    public void initialTransaction() {
        basePage.getInitialTransaction().initialTransaction(hmap);
    }

    @And("^I Set Status as Final Pending QA in Amendment$")
    public void finalPendingQAAmendment() {
        if (!hmap.get("Tier").equals("")) {
            if (hmap.get("Tier").equals("1")) {
                basePage.getContractDetailsDashboard().handleApprovals(configGetOptionalString("exari.tier1_approval_type").orElse(""), true, "Amendment","NOT_MANDATORY", hmap);
                initializeObj();
            } else {
                basePage.getContractDetailsDashboard().handleApprovals(configGetOptionalString("exari.tier23E_approval_type").orElse(""), true, "Amendment","NOT_MANDATORY", hmap);
                initializeObj();
            }
        }
        basePage.getContractDetailsDashboard().editStatus("Final Pending QA", "Amendment", hmap);
    }

    @And("^I Approve HBP Red Door in Amendment$")
    public void approveHBPRedDoorAmendment() {
        basePage.getContractDetailsDashboard().handleApprovals(configGetOptionalString("exari.red_door_approval_type").orElse(""), false, "Amendment","MANDATORY", hmap);
        initializeObj();
    }

    @And("^I Approve Payment Appendix in Amendment$")
    public void approvePaymentAppendixAmendment() {
        basePage.getContractDetailsDashboard().handleApprovals(configGetOptionalString("exari.non_std_approval_type").orElse(""), false, "Amendment","MANDATORY", hmap);
        initializeObj();
    }

    @And("^I Approve HBP Red Door$")
    public void approveHBPRedDoor() {
        basePage.getContractDetailsDashboard().handleApprovals(configGetOptionalString("exari.red_door_approval_type").orElse(""), false, "Draft","MANDATORY", hmap);
        initializeObj();
    }

    @And("^I Approve Payment Appendix$")
    public void approvePaymentAppendix() {
        basePage.getContractDetailsDashboard().handleApprovals(configGetOptionalString("exari.non_std_approval_type").orElse(""), false, "Draft","MANDATORY", hmap);
        initializeObj();
    }

    @And("^I Set Status as Final Pending QA$")
    public void finalPendingQA() {
        if (!hmap.get("Tier").equals("")) {
            if (hmap.get("Tier").equals("1")) {
                basePage.getContractDetailsDashboard().handleApprovals(configGetOptionalString("exari.tier1_approval_type").orElse(""), true, "Draft","NOT_MANDATORY", hmap);
                initializeObj();
            } else {
                basePage.getContractDetailsDashboard().handleApprovals(configGetOptionalString("exari.tier23E_approval_type").orElse(""), true, "Draft","NOT_MANDATORY", hmap);
                initializeObj();
            }
        }
        basePage.getContractDetailsDashboard().editStatus("Final Pending QA", "Draft", hmap);

    }

    @And("^I Start Final Capture$")
    public void finalCapture() {
        basePage.getContractDetailsDashboard().finalCapture();

    }

    @And("^I enter Contract Details in Final Capture$")
    public void contractDetailsFinalCapture() {
        basePage.getContractDetails().contractEffectiveDate(hmap);
    }

    @And("^I enter Contract Details in Amendments Final Capture$")
    public void contractDetailsAmendmentsFinalCapture() {
        basePage.getContractDetails().contractEffectiveDate(hmap);
    }


    @And("^I enter Provider Signatory$")
    public void providerSignatory() {
        basePage.getProviderSignatory().ProviderSignatory(hmap);
    }

    @And("^I enter Provider Signatory in Amendment$")
    public void Providertitle() {
        basePage.getProviderSignatory().ProviderTitle(hmap);
    }

    @And("^I enter Our Signatory in Amendment$")
    public void OurSignatorytitle() {
        basePage.getOurSignatory().ourSignatorytitle(hmap);
    }

    @And("^I enter Our Signatory$")
    public void ourSignatory() {
        basePage.getOurSignatory().ourSignatoryDate(hmap);

    }

    @And("^I enter Market Exception Grid in Final Capture$")
    public void MEGFinalCapture() {
        basePage.getMarketExceptionGrid().checkForDuplicate(hmap);
        basePage.getMarketExceptionGrid().chooseTask(hmap, "Task");

    }

    @And("^I enter retro code in Provider Roster$")
    public void retrocodeProviderRoster() {
        basePage.getProviderRoaster().selectretrocode(hmap);

    }

    @And("^I acknowledge the warning$")
    public void warning() {
        basePage.getWarning().acknowledgment();

    }

    @And("^I Set Status as Active$")
    public void setStatusActive() {
        basePage.getContractDetailsDashboard().editStatus("Active", "Draft", hmap);

    }

    @And("^I Set Status as Active in Amendment$")
    public void setStatusActiveAfterAmendment() {
        basePage.getContractDetailsDashboard().editStatus("Active", "Amendment", hmap);

    }

    @And("^I click Make Correction$")
    public void makeCorrection() {
        basePage.getContractDetailsDashboard().makeCorrection();
    }

    @And("^I enter Market Exception Grid in Make Correction$")
    public void MEGMakeCorrection() {
        basePage.getMarketExceptionGrid().checkForDuplicate(hmap);
        basePage.getMarketExceptionGrid().chooseTask(hmap, "MC_Task");

    }

    @And("^I Download Current Roster$")
    public void downloadCurrentRoster() {
        basePage.getProviderRoaster().downloadCurrentRoster(hmap);

    }

    @And("^I Upload Completed Roster$")
    public void uploadCompletedRoster() throws IOException {
        basePage.getProviderRoaster().uploadCompletedRoster(hmap);

    }

    @And("^I enter warning in Make Correction$")
    public void warningMakeCorrection() {
        basePage.getWarning().warningMakeCorrection();
    }

    @And("^I enter validation$")
    public void validation() {
        basePage.getValidation().validation();

    }

    @And("^I select Providers$")
    public void selectProviders() {
        basePage.getProviderRoaster().selectProviders(hmap);
    }

    @And("^I verify Providers$")
    public void verifyProviders() {
        basePage.getProviderRoaster().verifyProviders(hmap);

    }

    @And("^I enter Provider Start Date$")
    public void providerStartDate() {
        basePage.getProviderRoaster().providerStartDate(hmap);
    }

    @And("^I select provider and cancel date$")
    public void providerandcanceldate() {
        basePage.getProviderRoaster().providerandcanceldate(hmap);
    }

    @And("^I enter cancel reason$")
    public void cancelreason() {
        basePage.getProviderRoaster().cancelreason(hmap);
    }

    @And("^I select Provider Roster as None$")
    public void ProviderRoster_SelectNone() {
        basePage.getProviderRoaster().roasterAction("NONE");
    }

    @And("^I add provider using TIN$")
    public void addProvider_TIN() {
        basePage.getProviderRoaster().roasterAction("Add");
        basePage.getProviderRoaster().approachForProvider(hmap, "TIN", false);
        basePage.getProviderRoaster().enterTIN(hmap);
    }

    @And("^I set Roster Action as Cancel$")
    public void cancelProvider() {
        basePage.getProviderRoaster().roasterAction("Cancel");
    }

    @And("^I set Roster Action as Upload$")
    public void uploadProvider() {
        basePage.getProviderRoaster().roasterAction("Upload");
    }


    @And("I capture Contract Number")
    public void iCaptureContractNumber() {
        basePage.getContractDetailsDashboard().captureContractNumber(hmap, contractDetailsTextFile.toString(), contractNumberCSVFile.toString());
    }

    @And("I create supporting document")
    public void createSupportingDocuments() {
        basePage.getContractDetailsDashboard().cickToCreateSupportingDocument(hmap);
    }

    @And("I review supporting document")
    public void reviewSupportingDocuments() {
        basePage.getSupportingDocumentSummary().reviewSupportingDocument();
        basePage.getWizardComplete().completeWizard(hmap);
    }


    @And("^I search Contract using Contract Number$")
    public void searchContractByContractNumber() {
        basePage.getDashboard().searchContaractByContractNumber(hmap);
        basePage.getDashboard().openContractDetails();
        basePage.getContractDetailsDashboard().clickForContractSummary();

    }


    @And("^And I select provider using MPIN$")
    public void selectProvider_MPIN() {
        basePage.getProviderRoaster().roasterAction("Add");
        basePage.getProviderRoaster().approachForProvider(hmap, "MPIN", false);
        basePage.getProviderRoaster().enterMPIN(hmap);
    }

    @When("^I am logged into Exari Dev$")
    public void I_am_Logged_intoExari() {
        String url = configGetOptionalString("exari.stageURL").orElse("");
        getDriver().get(url);
        basePage.waitForPageLoad();
    }
    /*
    HELPER METHODS
     */

    private void setupProtoStep(DataTable contractDataTable) {
        EifTestData contractParam = new EifTestData(contractDataTable.asMap(String.class, String.class));

        //check if contractFlow has be init
        if (contractFlow == null) {
            log.info("loading default flow {}", DEFAULT_FLOW);
            contractFlow = loadFlowContract(DEFAULT_FLOW);
        }

        contractFlow.connectEifTestData(contractParam);

        this.protoStep.setFlow(contractFlow);
    }

    private void setupProtoStep() {
        setupProtoStep(null);
    }

    @And("I select the contract")
    public void contractSelection() {
        basePage.getContractDetailsDashboard().goToContractSummaryPage();
    }


    @And("I click on Create Amendment")
    public void createAmendment() {
        basePage.getContractDetailsDashboard().startAmendmentProcess(hmap);

    }

    @And("I enter title")
    public void enterTitle() {
        basePage.getContractDetailsDashboard().enterAmendmentTitle(hmap);
    }

    @And("I enter Amendment Selection")
    public void enterAmendmentSelection() {
        basePage.getAmendmentSelection().selectAmendmentTobeUsed(hmap);
    }


    @And("I select Amendments needed in Amendment Selection")
    public void selectAmendmentsNeeded() {
        basePage.getAmendmentSelection().amendmentNeeded(hmap);

    }

    @And("I select Amendment Type in Provider Details")
    public void selectAmendmentType() {
        basePage.getProviderDetails().amendmentType(hmap);

    }

    @And("I check Provider Details")
    public void checkProviderDetails() {

    }

    @And("I select Types of Amendments")
    public void selectTypesOfAmendments() {
        basePage.getAmendements().typeOfAmendmentsNeeded(hmap);
    }

    @And("I choose Types of Amendments")
    public void chooseAmendmentsNeeded() {
        basePage.getAmendements().chooseAmendmentsNeeded(hmap);
    }

    @And("I select Contract Applied in Amendments")
    public void selectContractApplied() {
        basePage.getAmendements().typeOfContractApplied(hmap);

    }

    @And("I enter Contract Details in Amendments")
    public void enterContractDetails() {
        basePage.getContractDetails().setSpecificEffectiveDate(hmap);

    }

    @And("I enter Effective date in Contract Details")
    public void enterEffectiveDate() {
        basePage.getContractDetails().contractEffectiveDate(hmap);

    }

    @And("I enter Appendix 2 in Amendments")
    public void enterAppendix2InAmendments() {
        basePage.getAppendix2().productsExcludedFromAgreement(hmap);

    }

    @And("I select applied Payment Appendix")
    public void selectAppliedPaymentAppendix() {
        basePage.getPaymentAppendix().appliedPaymentAppendix(hmap);

    }

    @And("I enter Payment Appendix in Amendments for SPGA contracts")
    public void enterPaymentAppendixforSPGAContracts() {
        basePage.getPaymentAppendix().enterPaymentAppenidix(hmap);

    }

    @And("I enter Payment Appendix in Amendments for SPA contracts")
    public void enterPaymentAppendixforSPAContracts() {
        basePage.getPaymentAppendix().enterDataInPaymentAppendixForSPA(hmap);
    }
    @And("I select Payment Appendix to include in Amendments for SPA contracts")
    public void includePaymentAppendixforSPAContracts() {
        basePage.getPaymentAppendix().paymentAppendixToIncludeMGA(hmap);

    }

    @And("I enter Payment Appendix in Amendments for SMGA contracts")
    public void enterPaymentAppendixforSMGAContracts() {
        basePage.getPaymentAppendix().enterPaymentAppenidix(hmap);

    }

    @And("I select Payment Appendix to include in Amendments for SMGA contracts")
    public void includePaymentAppendixforSMGAContracts() {
        basePage.getPaymentAppendix().paymentAppendixToInclude(hmap);

    }

    @And("I enter Payment Appendix in Amendments for PAT contracts")
    public void enterPaymentAppendixforPATContracts() {
        basePage.getPaymentAppendix().enterDataInPaymentAppendixForPAT(hmap);

    }

    @And("I select Payment Appendix to include in Amendments for PAT contracts")
    public void includePaymentAppendixforPATContracts() {
        basePage.getPaymentAppendix().paymentAppendixToIncludeMGA(hmap);

    }

    @And("I check Payment Appendix")
    public void checkPaymentAppendix() {
        basePage.getPaymentAppendix().verifyFeeScheduleID(hmap);

    }
    @And("I check Amendments")
    public void checkAmendments() {
        basePage.getPaymentAppendix().verifyAmendments();

    }


    @And("I choose Additional Manuals")
    public void AdditionalManuals() {
        basePage.getAdditionalManuals().chooseAdditionalManuals(hmap);
    }

    @And("I enter Steerage")
    public void enterSteerage() {
        basePage.getSteerage().addLanguage(hmap);
    }


    @And("I enter Amendments Page to amend Payment Appendix")
    public void iEnterAmendmentsPageToAmendPaymentAppendix() {
        basePage.getAmendements().amendPaymentAppendix(hmap);
    }

    @And("I enter Payment Appendix in Amendments to replace Payment Appendix")
    public void iEnterPaymentAppendixInAmendmentsToReplacePaymentAppendix() {
        basePage.getPaymentAppendix().replacePaymentAppendixInAmendments(hmap);
    }

    @And("I select fee schedule id in Amendments")
    public void iSelectFeeScheduleIdInAmendments() {
        //TODO handle multiple payment appendix
        basePage.getPaymentAppendix().enterPaymentAppenidix(hmap);
        basePage.getPaymentAppendix().verifyFeeScheduleID(hmap);
    }

    @And("I enter OurSignatory")
    public void iEnterOurSignatoryinAmendments() {
        basePage.getOurSignatory().ourSignatorytitle(hmap);
    }

    @And("I select Provider Type Radio Button in Amendments")
    public void iSelectProviderTypeRadioButtonInAmendments() {
        basePage.getAmendements().selectproviderTypeInAmendments(hmap);
    }

    @And("I enter Opt-out in Amendments")
    public void iEnterOptOutInAmendments() {
        basePage.getAmendements().enterOptOut(hmap);
    }

    @And("I enter Opt-out in Amendments finalcapture")
    public void iEnterOptOutInAmendmentsfinalcapture() {
        basePage.getAmendements().enterOptOut(hmap);
    }

    @And("I enter Opt-out Address in Amendments")
    public void iEnterOptOutAddressInAmendments() {
        basePage.getAmendements().enterOptOutadress(hmap);
    }

    @And("I enter Opt-out Address in Amendments finalCapture")
    public void ienterOptOutFinalcapture() {
        basePage.getAmendements().enterOptOutFinalcapture();
    }

    private void initializeObj() {
        protoStep = new ProtoStep(getDriver());
        basePage = new BasePage();
    }

    @And("I enter Payment Appendix in Amendments FinalCapture")
    public void iEnterPaymentAppendixInAmendmentsFC() {
        basePage.getPaymentAppendix().enterPaymentAppendixinAmendmentsFC(hmap);
    }

    @And("I enter Appendix 2 in Amendments FinalCapture")
    public void iEnterAppendixInAmendmentsFC() {
        basePage.getAppendix2().enterAppendix2FC(hmap);
    }

    @And("^I enter Clause Language$")
    public void clauseLanguage() {
        basePage.getClauseLanguage().clauseLanguage(hmap);
    }

    @And("I select Payment Appendix for SMGA contracts")
    public void iSelectPaymentAppendixForSMGAContracts() {
        basePage.getPaymentAppendixAmendment().selectPaymentAppendixAmendmentSMGA(hmap);
    }

    @And("I enter Benefit Plan Descriptions Provision")
    public void benefitPlanDescriptionsProvision() {
        basePage.getAdditionalManuals().applyToBenefitPlans(hmap);
    }

    @And("I enter Benefit Plan Descriptions Provision For Canceling Product")
    public void benefitPlanDescriptionsProvisionCnclProd() {
        basePage.getAdditionalManuals().applyToBenefitPlansCnclProd(hmap);
    }


    @And("I select Payment Appendix to include in Amendments for MGA contracts")
    public void includePaymentAppendixforMGAContracts() {
        basePage.getPaymentAppendix().paymentAppendixToIncludeMGA(hmap);
    }

    @And("I enter Medicare Advantage Payment Appendix in MGA")
    public void medicareAdvantagePaymentAppendixMGA() {
        basePage.getPaymentAppendix().medicareAdvantagePaymentAppendixMGA(hmap);
        basePage.getPaymentAppendix().enterMedicaidCHIPPaymentAppendix(hmap);

    }

    @And("I verify Medicare Advantage")
    public void verifyMedicareAdvantage() {
        basePage.getPaymentAppendix().verifyMedicareAdvantage();
        basePage.getPaymentAppendix().enterMedicaidCHIPPaymentAppendix(hmap);
    }


    @And("I enter Payment Appendix Amendments in Spga Contracts")
    public void iEnterPaymentAppendixAmendmentsInSpgaContracts() {
        basePage.getPaymentAppendixAmendment().paymentApppendixforSPGA();
    }

    @And("I enter Date in Provider Roster Page")
    public void iEnterDateInProviderRosterPage() {
        basePage.getProviderRoaster().enterStartDate(hmap);
    }

    @And("I enter Opt-out Address in Amendments in IL")
    public void iEnterOptOutAddressInAmendmentsInIL() {
        basePage.getAmendements().enterOptOutadressIL(hmap);
    }

    @And("I enter Payment")
    public void iEnterPayment() {
        basePage.getPayment().negotiateRateEscalator(hmap);
    }

    @Given("^I am logged into Exari Dev as a valid user and launch contract using \"([^\"]*)\"")
    public void loginPage(String testCase) {
        Path CSVpath = Paths.get(contractNumberCSVFile.toString());
        initializeObj();
        CSVReader csvReader = new CSVReader();
        System.out.println(CSVpath);
        this.hmap = csvReader.readFile(CSVpath.toString(), testCase, hmap);
        if (hmap.containsKey("Contract Link")) {
            this.protoStep.loginHomeByContractLink(hmap.get("Contract Link").toString());
        } else {
            this.protoStep.loginHome();
            basePage.getDashboard().searchContaractByContractNumber(hmap);
            basePage.getDashboard().openContractDetails();
            basePage.getContractDetailsDashboard().clickForContractSummary();
        }
    }

    @And("I select Provider Signatory")
    public void handleDBA_Agreement() {
        basePage.getProviderSignatory().handleDBA_Agreement();
    }

    @And("I enter Payment Appendix to select Standered Payment Appendix")
    public void iEnterPaymentAppendixToSelectStanderedPaymentAppendix()
    {
        basePage.getPaymentAppendix().selectStandered();
    }

    @And("I enter Payment Appendix for Louisiana")
    public void iEnterPaymentAppendixForLouisiana()
    {
        basePage.getPaymentAppendix().selectPaymentAppendixForLouisiana(hmap);
    }

    @And("I enter FL Medicaid for Alabama")
    public void iEnterPaymentAppendixForAlabama() {
        basePage.getPaymentAppendix().selectPaymentAppendix(hmap);
        basePage.getPaymentAppendix().enterFeeScheduleID(hmap,false);
        basePage.getPaymentAppendix().verifyFeeScheduleID(hmap);
        basePage.getPaymentAppendix().FLmedicaid();
        basePage.getPaymentAppendix().enterMedicaidCHIPPaymentAppendixFL();
    }
    @And("I enter FL Medicaid&Long term for Alabama")
    public void iEnterPaymentAppendixForAlabamafl() {
        basePage.getPaymentAppendix().selectPaymentAppendix(hmap);
        basePage.getPaymentAppendix().FLmedicaid();
        basePage.getPaymentAppendix().enterMedicaidCHIPPaymentAppendixFL();

    }
    @And("I enter Payment Appendix for Mississippi CHIP")
    public void iEnterPaymentAppendixMississippichip() {
        basePage.getPaymentAppendix().selectPaymentAppendix(hmap);
        basePage.getPaymentAppendix().enterMississippiMedicaidMGA();
        basePage.getPaymentAppendix().enterFeeScheduleIDMS(hmap);
        basePage.getPaymentAppendix().verifyFeeScheduleID(hmap);
    }
    @And("I enter Appendix for Louisiana Medicaid and CHIP Only")
    public void iEnterAppendixForLouisianaMedicaidAndCHIPOnly(int arg0)
    {
        basePage.getAppendix2().enterLouisiana(hmap);
    }

    @And("I enter FeeScheduleID in Payment Appendix")
    public void iEnterFeeScheduleIDInPaymentAppendix()
    {
        basePage.getPaymentAppendix().enterFeeScheduleID(hmap,false);
        basePage.getPaymentAppendix().verifyFeeScheduleID(hmap);

    }

    @And("I enter FeeScheduleID in Payment Appendix for Nexus-CO")
    public void iEnterFeeScheduleIDInPaymentAppendixForNexusCO()
    {
        basePage.getPaymentAppendix().enterFeeScheduleIDNexus(hmap);
        basePage.getPaymentAppendix().verifyFeeScheduleID(hmap);
    }

    @And("^I click on Termination$")
    public void startTerminationProcess() {
//        basePage.getDashboard().searchContaractByContractNumberForTermination("25488556");
//        basePage.getDashboard().openContractDetails();
        ContractPage page = new ContractPage(getDriver());
        page.startTerminate();

    }
    @And("^I enter Termination details$")
    public void iEnteredTerminationDetails() {

        basePage.getTerminationData().clickNext();
        basePage.getTerminationData().submitTermination();
    }
    @And("^I select Provider Roaster as None$")
    public void iSelectProviderRoasterAsNone() {
        basePage.getTerminationData().clickNext();


    }
    @And("^I Select Contract Action$")
    public void clicknextbtncontract() {
        basePage.getTerminationData().clickNext();


    }

    @And("^I Set Status as Final Pending QA in Termination$")
    public void finalPendingQATermination()
    {

        basePage.getContractDetailsDashboard().handleApprovals(configGetOptionalString("exari.termination_approval_type").orElse(""), true, "Termination","MANDATORY", hmap);
        //basePage.getContractDetailsDashboard().handleApprovals_Termination();
        //initializeObj();
        basePage.getContractDetailsDashboard().editStatus("Final Pending QA", "Termination", hmap);
    }
    @And("^I Set Status as Active in Termination$")
    public void setStatusActiveTerminatio() {
        basePage.getContractDetailsDashboard().editStatus("Active", "Termination", hmap);

    }

    @And("I select Additional Mannuals to Include")
    public void iSelectAdditionalMannualsToInclude()
    {
        basePage.getAdditionalManuals().additionalMannualsToInclude();
    }

    @And("I enter Payment Appendix in Amendments for MGA contracts")
    public void iEnterPaymentAppendixInAmendmentsForMGAContracts()
    {
        basePage.getPaymentAppendix().selectPaymentAppendixInAmendments(hmap);
        basePage.getPaymentAppendix().enterFeeScheduleID(hmap,false);
        basePage.getPaymentAppendix().verifyFeeScheduleID(hmap);
    }

    @And("I select included Additional Manuals in Appendix1")
    public void iSelectIncludedAdditionalManualsInAppendix() {
        basePage.getAppendix2().includeAdditionalManualsAppendix1();
    }

    @And("I enter Payment Appendix in Amendments to add Payment Appendix")
    public void iEnterPaymentAppendixInAmendmentsToAddPaymentAppendix() {
        basePage.getPaymentAppendixAmendment().addPaymentAppendixInAmendment(hmap);
    }
    
    
    @And("I complete final capture by add provider using TIN")
    public void completeFinalCapture_using_TIN() {
    	
        //And I Start Final Capture
    	basePage.getContractDetailsDashboard().finalCapture();
    	
        //And I enter Contract Details in Final Capture
    	basePage.getContractDetails().contractEffectiveDate(hmap);
       
    	//And I enter Provider Signatory
    	basePage.getProviderSignatory().ProviderSignatory(hmap);

    	//TODO Provider Roster   -> select retro code (is showing for PAT CEN)
        //And I enter Our Signatory
    	basePage.getOurSignatory().ourSignatoryDate(hmap);

        //And I enter Market Exception Grid in Final Capture
    	basePage.getMarketExceptionGrid().checkForDuplicate(hmap);
        basePage.getMarketExceptionGrid().chooseTask(hmap, "Task");
        
        //And I enter Market Exception Grid
        basePage.getMarketExceptionGrid().previewMarketDetails(hmap);

        //And I add provider using TIN
        basePage.getProviderRoaster().roasterAction("Add");
        basePage.getProviderRoaster().approachForProvider(hmap, "TIN", false);
        basePage.getProviderRoaster().enterTIN(hmap);
        
        //And I select Providers
        basePage.getProviderRoaster().selectProviders(hmap);
        
        //And I verify Providers
        basePage.getProviderRoaster().verifyProviders(hmap);
           
        //And I acknowledge the warning
        basePage.getWarning().acknowledgment();
        
        //And I enter Group Summary
        basePage.getGroupSummary().readInterviewSummary();
        
        //Then I Complete Wizard
        basePage.getWizardComplete().completeWizard(hmap);
    } 
    
    @And("I complete final capture with Roaster as None")
    public void completeFinalCapture() {
    	
        //And I Start Final Capture
    	basePage.getContractDetailsDashboard().finalCapture();
    	
        //And I enter Contract Details in Final Capture
    	basePage.getContractDetails().contractEffectiveDate(hmap);
       
    	//And I enter Provider Signatory
    	basePage.getProviderSignatory().ProviderSignatory(hmap);
    	
        //And I enter Our Signatory
    	basePage.getOurSignatory().ourSignatoryDate(hmap);

        //And I enter Market Exception Grid in Final Capture
    	basePage.getMarketExceptionGrid().checkForDuplicate(hmap);
        basePage.getMarketExceptionGrid().chooseTask(hmap, "Task");
        
        //And I enter Market Exception Grid
        basePage.getMarketExceptionGrid().previewMarketDetails(hmap);

        //And I enter retro code in Provider Roster 
        basePage.getProviderRoaster().roasterAction("NONE");
        
        //And I enter retro code in Provider Roster 
        basePage.getProviderRoaster().selectretrocode(hmap);
        
        //And I acknowledge the warning
        basePage.getWarning().acknowledgment();
        
        //And I enter Group Summary
        basePage.getGroupSummary().readInterviewSummary();
        
        //Then I Complete Wizard
        basePage.getWizardComplete().completeWizard(hmap);
    } 
    
    
    @And("I complete final capture for MGA by add provider using TIN")
    public void completeFinalCapture_Using_TIN_MGA() {
    	
        //And I Start Final Capture
    	basePage.getContractDetailsDashboard().finalCapture();
    	
        //And I enter Contract Details in Final Capture
    	basePage.getContractDetails().contractEffectiveDate(hmap);
       
    	//And I enter Provider Signatory
    	basePage.getProviderSignatory().ProviderSignatory(hmap);

    	//TODO Clause Language page is showing for MGA VA
        //And I enter Our Signatory
    	basePage.getOurSignatory().ourSignatoryDate(hmap);

        //And I enter Market Exception Grid in Final Capture
    	basePage.getMarketExceptionGrid().checkForDuplicate(hmap);
        basePage.getMarketExceptionGrid().chooseTask(hmap, "Task");
        
        //And I enter Market Exception Grid
        basePage.getMarketExceptionGrid().previewMarketDetails(hmap);
        
        //I enter Clause Language
        basePage.getClauseLanguage().clauseLanguage(hmap);
        
        //And I add provider using TIN
        basePage.getProviderRoaster().roasterAction("Add");
        basePage.getProviderRoaster().approachForProvider(hmap, "TIN", false);
        basePage.getProviderRoaster().enterTIN(hmap);
        
        //And I select Providers
        basePage.getProviderRoaster().selectProviders(hmap);
        
        //And I verify Providers
        basePage.getProviderRoaster().verifyProviders(hmap);
           
        //And I acknowledge the warning
        basePage.getWarning().acknowledgment();
        
        //And I enter Group Summary
        basePage.getGroupSummary().readInterviewSummary();
        
        //Then I Complete Wizard
        basePage.getWizardComplete().completeWizard(hmap);
    }
    @And("I complete final capture for MGA with Roaster as None")
    public void completeFinalCapture_MGA() {
    	
        //And I Start Final Capture
    	basePage.getContractDetailsDashboard().finalCapture();
    	
        //And I enter Contract Details in Final Capture
    	basePage.getContractDetails().contractEffectiveDate(hmap);
       
    	//And I enter Provider Signatory
    	basePage.getProviderSignatory().ProviderSignatory(hmap);
    	
        //And I enter Our Signatory
    	basePage.getOurSignatory().ourSignatoryDate(hmap);

        //And I enter Market Exception Grid in Final Capture
    	basePage.getMarketExceptionGrid().checkForDuplicate(hmap);
        basePage.getMarketExceptionGrid().chooseTask(hmap, "Task");
        
        //And I enter Market Exception Grid
        basePage.getMarketExceptionGrid().previewMarketDetails(hmap);
        
        //I enter Clause Language
        basePage.getClauseLanguage().clauseLanguage(hmap);
        
        //And I enter retro code in Provider Roster 
        basePage.getProviderRoaster().roasterAction("NONE");
        
        //And I enter retro code in Provider Roster 
        basePage.getProviderRoaster().selectretrocode(hmap);
        
        //And I acknowledge the warning
        basePage.getWarning().acknowledgment();
        
        //And I enter Group Summary
        basePage.getGroupSummary().readInterviewSummary();
        
        //Then I Complete Wizard
        basePage.getWizardComplete().completeWizard(hmap);
    } 
    
    @SuppressWarnings("unchecked")
	@When("I Cancel contracts using API")
    public void CancelContract()
    {
    	try
    	{

    		RestAssured.baseURI = "http://cancel-cm-service-clm-dev.ocp-ctc-dmz-nonprod.optum.com/";
 			RequestSpecification request = RestAssured.given();
      	    request.header("Content-Type","application/json");

      	    Path CSVpath = Paths.get(cancelcontractNumberCSVFile.toString());
	      	CSVReader csvReader = new CSVReader();
	        System.out.println(CSVpath);
	        List<String> Contracts = new ArrayList<String>();
	        Contracts = csvReader.readcsvFile_Cancel(CSVpath.toString());
		    JSONParser parser = new JSONParser();


		    for (String item : Contracts)
		    {
		   	   String contractnum = item.trim();
		   	   String strcontr = "\""+contractnum+"\"";
		   	   String payload ="{\"ContractIds\": [{\"ContractId\":"+strcontr+" }]}";
		   	   JSONObject requestParams = (JSONObject) parser.parse(payload);
		   	   request.body(requestParams.toJSONString());
		   	   Response response = request.post("/v1.0/cancel/ndb-cosmos/contract-masters/contractIds/test");
		   	   int statusCode = response.getStatusCode();
			   Object resmsg = response.jsonPath().get();
			   System.out.println(statusCode+":"+ resmsg.toString());
		    }

    	}
    	catch(Exception ex)
    	{
    		System.out.println("Error while cancel Contract: Please verify csv");
    	}
    }
    
}