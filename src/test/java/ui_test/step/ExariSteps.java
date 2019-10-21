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


    @And("^I enter Practice Locations$")
    public void PracticeLocations()
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

    @And("^I enter Market Strategy Grid$")
    public void MarketStrategyGrid()
    {
        basePage.getMarketStrategyGrid().marketStrategyGridCheck();
    }


    @And("^I enter Appendix 2$")
    public void Appendix2()
    {
        basePage.getAppendix2().selectAppendix();
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
        basePage.getProviderRoaster().roasterAction(hmap);
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
        basePage.getWizardComplete().completeWizard();
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
