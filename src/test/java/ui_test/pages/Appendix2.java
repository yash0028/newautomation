package ui_test.pages;

import org.openqa.selenium.WebDriver;
import ui_test.page.exari.contract.GenericInputPage;
public class Appendix2 extends GenericInputPage {

    public Appendix2(WebDriver driver) {
        super(driver);
    }

    public void selectAppendix(){
        assert clickNext();
        assert waitForPageLoad();
    }

}
