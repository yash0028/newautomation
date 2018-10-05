package general_test.step;

import cucumber.api.PendingException;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by jwacker on 8/1/2018.
 */
public class TestAppSteps {
    private static final Logger log = LoggerFactory.getLogger(TestAppSteps.class);

    @When("^the Acceptance-Testing stage is executing on Jenkins$")
    public void theAcceptanceTestingStageIsExecutingOnJenkins() throws Throwable {
        log.info("when step of test app");
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Then("^this test will pass and it will move on to the next stage$")
    public void thisTestWillPassAndItWillMoveOnToTheNextStage() throws Throwable {
        log.error("then step of test app");
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }
}
