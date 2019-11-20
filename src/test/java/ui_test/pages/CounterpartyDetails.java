package ui_test.pages;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;

public class CounterpartyDetails extends GenericInputPage {

    public CounterpartyDetails(WebDriver driver) {
    }

    public void counterpartyTINDuplicateCheck() {
        assert clickNext();
        assert waitForPageLoad();
    }
}
