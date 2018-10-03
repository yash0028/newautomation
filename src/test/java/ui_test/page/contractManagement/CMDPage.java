package ui_test.page.contractManagement;

import org.openqa.selenium.WebElement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

import static ui_test.util.SeleniumHelper.findElement;
import static ui_test.util.SeleniumHelper.findElements;

public class CMDPage {

    private static Logger log = LoggerFactory.getLogger(CMDPage.class);

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
