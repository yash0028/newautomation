package step_definitions;


import java.util.logging.Logger;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import pages.CrosswalkPage;
import utils.SeleniumHelper;
import org.openqa.selenium.support.ui.Select;
import org.junit.Assert;

public class CrosswalkSteps {

    private static Logger logger = Logger.getLogger("CrosswalkSteps");
    private CrosswalkPage crosswalkPage = null;

    @Given("^the application screen is ready$")
    public void navigateToContractAdminUI() {
        SeleniumHelper.launchBrowser("chrome");
        SeleniumHelper.getWebDriver().get("http://contract-admin-ui-clm-dev.ocp-ctc-dmz-nonprod.optum.com/metadata");
        crosswalkPage = CrosswalkPage.getCrosswalkPage();
        Assert.assertNotNull("Crosswalk page not displayed", crosswalkPage);
    }

    @Given("^a file is uploaded$")
    public void uploadFile() {
        Assert.assertTrue("Unable to select option from Import dropdown ", crosswalkPage.selectValueFromImportDropdown("Provider Taxonomy Grid"));
        Assert.assertTrue("Unable to click Show Table button", SeleniumHelper.clickWebElement(crosswalkPage.getShowTableButton()));
        Assert.assertTrue("Histroy log is empty", crosswalkPage.getHistoryLogItems().findElements(By.tagName("tr")).size()>0);
        logger.info("need to implement - a file is uploaded");
    }

    @Given("^the previous file record and audit log info is stored in the database$")
    public void previous_versions() {
        logger.info("need to implement - the previous file record and audit log info is stored in the database");
    }

    @Then("^wait for \"(.*)\" seconds$")
    public void wait_for_seconds(String timeToWait) {
        try {
            Thread.sleep(Long.valueOf(timeToWait));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
