package ui_test.step;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import exari_test.eif.data.EifReport;
import exari_test.eif.data.EifTestData;
import exari_test.eif.flow.ContractFlow;
import exari_test.eif.flow.IContractFlowLoader;
import exari_test.eif.report.CukeReport;
import exari_test.eif.report.Match;
import exari_test.eif.report.Step;
import exari_test.hive.Hive;
import general_test.util.ISharedValuePoster;
import io.cucumber.datatable.DataTable;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.ProtoStep;
import ui_test.page.exari.home.site.subpages.GenericSitePage;
import ui_test.pages.BasePage;
import ui_test.pages.Report;
import ui_test.pages.csvReader.CSVReader;
import ui_test.util.IUiStep;
import util.TimeKeeper;
import util.configuration.ConfigStub;
import util.configuration.IConfigurable;
import util.file.FileHandler;
import util.file.IFileReader;
import exari_test.eif.report.Result;

import java.lang.reflect.Array;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;


public class ExariSteps implements IUiStep, IFileReader, IConfigurable, ISharedValuePoster, IContractFlowLoader {
    private static final Logger log = LoggerFactory.getLogger(ExariSteps.class);

    private static final String DEFAULT_FLOW = "eif-basic-contract.json";
    String csvFile = configGetOptionalString("exari.csvFile").orElse("");
    String home = System.getProperty("user.dir");
    Path contractFlowPath = Paths.get(home, "src", "test", "resources","support","hive","dataMap",csvFile);
    private ProtoStep protoStep = new ProtoStep(getDriver());


    private ContractFlow contractFlow;
    public GenericSitePage sitePage;
    public BasePage basePage=new BasePage(getDriver());

    public HashMap<String,String> hmap = null;

    @Given("^I am using the \"([^\"]*)\" flow$")
    public void prepareEIF(String fileName) {
        contractFlow = loadFlowContract(fileName);
    }

    @Given("^I am using the \"([^\"]*)\" data$")
    public void getData(String testName) {
        CSVReader csvReader = new CSVReader();
        this.hmap = csvReader.readFile(contractFlowPath.toString(), testName);
    }

    @Given("^I am logged into Exari Dev as a valid user and go to the \"([^\"]*)\" site$")
    public void loginSitePage(String siteOption) {
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
        assert this.protoStep.sitePage.startContractAuthor();
        basePage.getPesInputActions().enterPESInput(hmap);
    }


    @And("^I enter PES Response$")
    public void PESResponse() {
        basePage.getPes_response().selectCounterParty(hmap);
        basePage.getPes_response().specifyApproachForCounter(hmap);
        basePage.getPes_response().selectCounterPartyAddress(hmap);
    }

    @And("^I enter PES Responses$")
    public void PESResponses() {
        basePage.getPes_response().selectCounterParty(hmap);
        basePage.getPes_response().specifyApproachForCounter(hmap);
//        basePage.getPes_response().selectCounterPartyAddress(hmap);
    }

    @And("^I enter Counterparty Details Page$")
    public void CounterpartyDerails() {
        basePage.getCounterpartyDetails().counterpartyTINDuplicateCheck();
    }

    @And("^I select Market Number$")
    public void selectMarketNumber()
    {
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
        basePage.getProviderDetails().previewProfile();

    }


    @And("^I enter Practice Locations for SPGA Contract$")
    public void SPGAPracticeLocations()
    {
        basePage.getPracticeLocations().selectLocation(hmap);
    }

    @And("^I enter Practice Locations for MGA Contract$")
    public void MGAPracticeLocations()
    {
        basePage.getPracticeLocations().selectPracticeLocation();
    }

    @And("^I enter Practice Locations for SMGA Contract$")
    public void SMGAPracticeLocations()
    {
        basePage.getPracticeLocations().selectLocation(hmap);
    }


    @And("^I enter Practice Locations for SPA Contract$")
    public void SPAPracticeLocations()
    {
        basePage.getPracticeLocations().selectLocation(hmap);
    }


    @And("^I enter Market Exception Grid$")
    public void MarketExceptionGrid() {
        basePage.getMarketExceptionGrid().previewMarketDetails();
    }


    @And("^I enter Contract Details$")
    public void ContractDetails()
    {
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
    public void MarketStrategyGrid()
    {
        basePage.getMarketStrategyGrid().marketStrategyGridCheck();
    }


    @And("^I enter Appendix 2$")
    public void Appendix2()
    {
        basePage.getAppendix2().selectAppendix(hmap);
    }

    @And("^I enter Payment Appendix$")
    public void PaymentAppendix()
    {
        basePage.getPaymentAppendix().selectPaymentAppendix(hmap);
        basePage.getPaymentAppendix().enterFeeScheduleID(hmap);
        basePage.getPaymentAppendix().verifyFeeScheduleID();
    }

    @And("^I enter Additional Locations$")
    public void AdditionalLocations()
    {
        basePage.getAdditionalLocations().selectAdditionalLocations(hmap);
    }


    @And("^I enter Regulatory Appendices$")
    public void RegulatoryAppendices()
    {
        basePage.getRegulatoryAppendices().selectRegulatoryAppendix(hmap);
    }


    @And("^I enter Provider Roster$")
    public void ProviderRoster()
    {
        basePage.getProviderRoaster().roasterAction(hmap,"Roster");
    }


    @And("^I enter Amendments$")
    public void Amendments()
    {
        basePage.getAmendements().authorAmendments(hmap);
    }
    @And("^I enter Group Summary$")
    public void GroupSummary()
    {
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
        assert this.protoStep.sitePage.startContractAuthor();

    }

    @Then("^I have an active contract in Exari$")
    public void checkActiveContact() {
        log.info("checking for active status");
        assert this.protoStep.checkActiveContractStatus();
    }
    @And("^I Start Workflow$")
    public void workflow()
    {
        basePage.getContractDetailsDashboard().startWorkFlow();

    }
    @And("^I Start Process for Initial Transaction$")
    public void initialTransaction()
    {
        basePage.getInitialTransaction().initialTransaction(hmap);

    }
    @And("^I Set Status as Final Pending QA$")
    public void finalPendingQA()
    {
        basePage.getContractDetailsDashboard().editStatus("Final Pending QA");

    }
    @And("^I Start Final Capture$")
    public void finalCapture()
    {
        basePage.getContractDetailsDashboard().finalCapture();

    }
    @And("^I enter Contract Details in Final Capture$")
    public void contractDetailsFinalCapture()
    {
        basePage.getContractDetails().contractEffectiveDate(hmap);
    }
    @And("^I enter Provider Signatory$")
    public void providerSignatory()
    {
        basePage.getProviderSignatory().ProviderSignatory(hmap);

    }
    @And("^I enter Our Signatory$")
    public void ourSignatory()
    {
        basePage.getOurSignatory().ourSignatoryDate(hmap);

    }
    @And("^I enter Market Exception Grid in Final Capture$")
    public void MEGFinalCapture()
    {
        basePage.getMarketExceptionGrid().chooseTask(hmap,"Task");

    }
    @And("^I enter retro code in Provider Roster$")
    public void retrocodeProviderRoster()
    {
        basePage.getProviderRoaster().selectretrocode(hmap);

    }
    @And("^I acknowledge the warning$")
    public void warning()
    {
        basePage.getWarning().acknowledgment();

    }
    @And("^I Set Status as Active$")
    public void setStatusActive()
    {
        basePage.getContractDetailsDashboard().editStatus("Active");

    }
    @And("^I click Make Correction$")
    public void makeCorrection()
    {
         basePage.getContractDetailsDashboard().makeCorrection();

    }
    @And("^I enter Market Exception Grid in Make Correction$")
    public void MEGMakeCorrection()
    {
        basePage.getMarketExceptionGrid().chooseTask(hmap,"MC_Task");

    }
    @And("^I enter Provider Roster in Make Correction$")
    public void providerRosterMakeCorrection()
    {
        basePage.getProviderRoaster().roasterAction(hmap,"MC_Roster");

    }
    @And("^I Download Current Roster$")
    public void downloadCurrentRoster()
    {
        basePage.getProviderRoaster().downloadCurrentRoster();

    }
    @And("^I Upload Completed Roster$")
    public void uploadCompletedRoster()
    {
        basePage.getProviderRoaster().uploadCompletedRoster(hmap);

    }
    @And("^I enter warning in Make Correction$")
    public void warningMakeCorrection()
    {
        basePage.getWarning().warningMakeCorrection();
    }
    @And("^I enter validation$")
    public void validation()
    {
        basePage.getValidation().validation();

    }
    @And("^I select approach for Provider Entry$")
    public void approachForProvider()
    {
        basePage.getProviderRoaster().approachForProvider(hmap);

    }
    @And("^I enter TIN in Provider Roster$")
    public void TINinProviderRoster()
    {
        basePage.getProviderRoaster().enterTIN(hmap);

    }
    @And("^I select Providers$")
    public void selectProviders()
    {
        basePage.getProviderRoaster().selectProviders(hmap);

    }
    @And("^I enter Provider Start Date$")
    public void providerStartDate()
    {
        basePage.getProviderRoaster().providerStartDate(hmap);

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


}
