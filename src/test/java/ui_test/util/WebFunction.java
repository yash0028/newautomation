package ui_test.util;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.util.concurrent.TimeUnit;

public class WebFunction {
    private static WebFunction ourInstance = new WebFunction();

    /*
    CONSTRUCTOR
     */

    private WebFunction() {
    }

    /*
    STATIC METHODS
     */

    public static WebFunction getInstance() {
        return ourInstance;
    }

    public static void reset() {
        ourInstance = new WebFunction();
    }

    /*
    PACKAGE PRIVATE CLASS METHODS
     */

    WebDriver getDriver() {
        return SauceLabs.getInstance().getDriver();
    }

    void pause(Integer second) {
        try {
            TimeUnit.SECONDS.sleep(second);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    void highlight(WebElement element) {
        String orgStyle = element.getAttribute("style");

        setStyle(element, "outline: 1px dashed red;");
        pause(1);
        setStyle(element, orgStyle);

    }

    /*
    HELPER METHODS
     */

    private void setStyle(WebElement element, String value) {
        final WebDriver driver = this.getDriver();

        for (int i = 0; i < 3; i++) {
            JavascriptExecutor js = (JavascriptExecutor) driver;
            js.executeScript("arguments[0].setAttribute('style', arguments[1]);", element, value);

        }
    }
}
