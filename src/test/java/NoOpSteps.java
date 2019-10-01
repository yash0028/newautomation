import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class NoOpSteps {
    @Given("a product should be included in the OCM")
    public void aProductShouldBeIncludedInTheOCM() {
        // nop
    }

    @When("determining the contract master for a product group")
    public void determiningTheContractMasterForAProductGroup() {
        // nop
    }

    @Then("the CON ARR value is identified from the CMD table or CSI")
    public void theCONARRValueIsIdentifiedFromTheCMDTableOrCSI() {
        // nop
    }

    @And("the CON ARR assigned the title {string}")
    public void theCONARRAssignedTheTitleNetworkAccessCode(String string) {
        // nop
    }
}
