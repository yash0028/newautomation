package ui_test.page.contractManagement;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;
import org.openqa.selenium.support.ui.Select;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ui_test.util.IFactoryPage;
import ui_test.util.IWebInteract;
import ui_test.util.SeleniumHelper;

import static ui_test.util.SeleniumHelper.findElement;
import static ui_test.util.SeleniumHelper.waitForElementToLoad;

@Deprecated
public class CrosswalkPage implements IFactoryPage, IWebInteract {

    private static Logger log = LoggerFactory.getLogger(CrosswalkPage.class);

    private final WebDriver driver;

    /*
    CONSTRUCTOR
     */

    public CrosswalkPage(WebDriver driver) {
        AjaxElementLocatorFactory factory = new AjaxElementLocatorFactory(driver, IWebInteract.TIMEOUT);
        PageFactory.initElements(driver, factory);
        this.driver = driver;
    }

    /*
    STATIC METHODS
     */

    @Deprecated
    public static CrosswalkPage getCrosswalkPage() {
        return (getHeaderContractMetadata().getText().equalsIgnoreCase("getContractPage Metadata")) ? new CrosswalkPage(SeleniumHelper.getWebDriver()) : null;
    }

    @Deprecated
    private static WebElement getHeaderContractMetadata() {
        return findElement("tagname", "h1");
    }

    /*
    FACTORY PAGE METHODS
     */

    @Override
    public boolean confirmCurrentPage() {
        return false;
    }

    @Override
    public WebDriver getDriver() {
        return driver;
    }

    /*
    CLASS METHODS
     */

    public boolean selectValueFromImportDropdown(String optionToSelect) {
        waitForElementToLoad(5);
        WebElement element = SeleniumHelper.findElement("className", "custom-select");
        Select importDropdown = new Select(element);
        importDropdown.selectByVisibleText(optionToSelect);
        return importDropdown.getFirstSelectedOption().getText().equalsIgnoreCase(optionToSelect);
    }

    public WebElement getShowTableButton() {
        return findElement("xpath", "//button[text()=' Show Table ']");
    }

    public WebElement getHideTableButton() {
        return findElement("xpath", "//button[text()=' Hide Table ']");
    }

    public WebElement getDownloadLatestButton() {
        return findElement("xpath", "//button[text()=' Download Latest ']");
    }

    public WebElement getBrowseButton() {
        return findElement("id", "fileUpload");
    }

    public WebElement getSubmitButton() {
        return findElement("xpath", "//button[text()=' Submit']");
    }

    public WebElement getModalPopup() {
        return findElement("className", "modal-content");
    }

    public WebElement getModalPopupCloseButton() {
        return findElement("xpath", "//button[text()='Close']");
    }

    public WebElement getHistoryLogItems()  {
        return findElement("xpath", "//table[@class='table']/tbody");
    }
}
