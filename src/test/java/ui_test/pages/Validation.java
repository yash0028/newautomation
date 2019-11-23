package ui_test.pages;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;

public class Validation extends GenericInputPage {

    public Validation(WebDriver driver) {
    }

    public void validation() {
         clickNext();
         waitForPageLoad();
    }

}
