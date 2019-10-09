package ui_test.pages.amendements;

import org.openqa.selenium.WebDriver;
import ui_test.pages.commonMethod;

public class Amendements {
    private final WebDriver driver;

    public Amendements(WebDriver driver)
    {
        this.driver=driver;
    }
    public void authorAmendements() throws InterruptedException {
        Thread.sleep(2000);
        commonMethod.next();
    }
}
