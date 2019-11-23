package ui_test.pages;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;

public class RequestForParticipationResponse extends GenericInputPage {
    public RequestForParticipationResponse(WebDriver driver) {
    }

    public void performAction() {
         clickNext();
         waitForPageLoad();
    }
}
