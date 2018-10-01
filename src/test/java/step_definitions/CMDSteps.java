package step_definitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.WebElement;
import pages.CMDPage;
import utils.SeleniumHelper;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.logging.Logger;
import java.util.stream.Collectors;

public class CMDSteps {

    private static Logger logger = Logger.getLogger("CrosswalkSteps");
    private CMDPage cmdPage = null;
    private String CMD_DASHBOARD_URL = "http://contract-admin-ui-clm-dev.ocp-ctc-dmz-nonprod.optum.com/";

    @Given("^I have entered the CMD dashboard URL$")
    public void navigateToCMDdashboardUrl() {
        SeleniumHelper.launchBrowser("chrome", false);
        SeleniumHelper.getWebDriver().get(CMD_DASHBOARD_URL);
        cmdPage = CMDPage.getCMDPage();
        Assert.assertNotNull("CMD page not displayed", cmdPage);
    }

    @Given("^I am on the CMD dashboard$")
    public void navigateToCMDdashboardPage(){
        navigateToCMDdashboardUrl();
        isDashboardPageDisplayed();
    }

    @And("^I am recognized as a contract administrator with access to CMD$")
    public void verifyAdminUser() {
        //Need to implement code to identify a user is administrator
        /*Recognition of an administrative user is not the highest priority for the current sprint and on hold.
        Per stand up call, it is decided to have User story for this functionality in the future sprints.
         */
    }

    @When("^The dashboard page loads$")
    public void isDashboardPageDisplayed() {
        Assert.assertEquals("Dashboard page not displayed", true, cmdPage.getSubHeaders().size() == 4);
    }

    @Then("^I can see the following buttons \"(.*)\"$")
    public void verifyButtons(String allButtons) {
        List<WebElement> listOfSubHeaders = cmdPage.getSubHeaders();
        listOfSubHeaders.stream().forEach(element -> Assert.assertEquals("SubHeader :" + element.getText() + ": is not displayed", true, allButtons.contains(element.getText())));
    }

    @Then("^I can see the following as a heading on the CMD page \"(.*)\"$")
    public void verifyNavHeaders(String allNavHeaders) {
        Set<String> setOfInputHeaders = Arrays.stream(allNavHeaders.split(",")).map(String::trim).collect(Collectors.toSet());
        Set<String> setOfNavHeaders = new HashSet<>();
        List<WebElement> listOfNavHeaders = cmdPage.getNavHeaders();
        listOfNavHeaders.stream().forEach(s -> setOfNavHeaders.add(s.getText()));
        setOfNavHeaders.add(CMDPage.getHeaderContractMetadata().getText());
        setOfNavHeaders.removeIf(s -> s.contains("more_vert"));
        Assert.assertEquals("All navigation headers are not displayed", true, setOfInputHeaders.containsAll(setOfNavHeaders));
    }

    @When("^There are no completed contract requests$")
    public void verifyNoCompletedContractRequests(){
        throw new PendingException();
    }

    @Then("^On the Completed button display 0 completed$")
    public void verifyCompletedCount(){
        throw new PendingException();
    }
}
