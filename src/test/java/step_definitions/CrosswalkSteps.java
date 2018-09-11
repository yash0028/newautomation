package step_definitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import pages.CrosswalkPage;

import java.util.logging.Logger;

public class CrosswalkSteps {


    private static Logger logger = Logger.getLogger("CrosswalkSteps");
    private CrosswalkPage crosswalkPage = null;

    @Given("^the application screen is ready$")
    public void navigateToContractAdminUI() {
        //This works only in local machine, need to setup env in docker
        /*SeleniumHelper.launchBrowser("chrome");
        SeleniumHelper.getWebDriver().get("http://contract-admin-ui-clm-dev.ocp-ctc-dmz-nonprod.optum.com/metadata");
        crosswalkPage = CrosswalkPage.getCrosswalkPage();
        Assert.assertNotNull("Crosswalk page not displayed", crosswalkPage);*/
        throw new PendingException();
    }

    @Given("^a file is uploaded$")
    public void uploadFile() {
        //need to implement - a file is uploaded
        throw new PendingException();
    }

    @Given("^the previous file record and audit log info is stored in the database$")
    public void previous_versions() {
        //need to implement - the previous file record and audit log info is stored in the database
        throw new PendingException();
    }
}
