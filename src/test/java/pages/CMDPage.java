package pages;

import org.openqa.selenium.WebElement;

import static utils.SeleniumHelper.findElements;

import java.util.List;
import java.util.logging.Logger;

import static utils.SeleniumHelper.findElement;

public class CMDPage {

    private static Logger logger = Logger.getLogger("CMDPage");

    private CMDPage() {
    }

    public static CMDPage getCMDPage() {
        return (getHeaderContractMetadata().getText().equalsIgnoreCase("Contract Management")) ? new CMDPage() : null;
    }

    public static WebElement getHeaderContractMetadata() {
        return findElement("className", "navbar-brand");
    }

    public List<WebElement> getSubHeaders() {
        return findElements("tagName", "h3");
    }

    public List<WebElement> getNavHeaders() {
        return findElements("className", "nav-item");
    }

    public List<WebElement> getTransactionsCount() {
        return findElements("className", "statnumber");
    }
}
