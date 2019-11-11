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
        //TODO take ui.runLocalBrowser from properties file
        if (true) {
            return SauceLabs.getInstance() != null ? SauceLabs.getInstance().getDriver() : null;
        } else {
            return LocalDriver.getInstance() != null ? LocalDriver.getInstance().getDriver() : null;
        }
    }
}
