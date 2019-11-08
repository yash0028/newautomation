package ui_test.util;
import org.openqa.selenium.WebDriver;
public class LocalDriverProxy {
    public static void closeDriver(){
        LocalDriver.getInstance().close();
    }
    public static void resetDriver(){
        LocalDriver.reset();
    }
    public static WebDriver getDriver(){
        return LocalDriver.getInstance().getDriver();
    }
}
