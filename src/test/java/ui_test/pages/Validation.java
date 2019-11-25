package ui_test.pages;

import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;

public class Validation extends GenericInputPage {

    public Validation(WebDriver driver) {
    }

    public void validation() {
        Assert.assertTrue(clickNext());
        Assert.assertTrue(waitForPageLoad());
    }

}
