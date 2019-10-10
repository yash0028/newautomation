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
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.page.exari.ProtoStep;
import ui_test.page.exari.home.site.subpages.GenericSitePage;
import ui_test.pages.PESInputActions;
import ui_test.pages.csvReader.CSVReader;
import ui_test.util.IUiStep;
import util.configuration.IConfigurable;
import util.file.IFileReader;

import java.util.HashMap;


public class ExariSteps implements IUiStep, IFileReader, IConfigurable, ISharedValuePoster, IContractFlowLoader {
    private static final Logger log = LoggerFactory.getLogger(ExariSteps.class);

    private static final String DEFAULT_FLOW = "eif-basic-contract.json";

    private ProtoStep protoStep = new ProtoStep(getDriver());

    private ContractFlow contractFlow;
    public GenericSitePage sitePage;

    public HashMap<String,String> hmap = null;

    @Given("^I am using the \"([^\"]*)\" flow$")
    public void prepareEIF(String fileName) {
        contractFlow = loadFlowContract(fileName);
    }

    @Given("^I am using the \"([^\"]*)\" data$")
    public void getData(String testName) {
        CSVReader csvReader = new CSVReader();
        String path1="C:\\Users\\asomani1\\Desktop\\pom\\acceptance-testing\\src\\test\\resources\\support\\hive\\dataMap\\eif-basic-central-list-1.csv";
        hmap = csvReader.readFile(path1, testName);
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
        PESInputActions pesInputPage = new PESInputActions(getDriver());
        pesInputPage.enterPESInput(hmap);
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
