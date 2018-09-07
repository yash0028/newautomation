package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;
import utils.SeleniumHelper;

import static utils.SeleniumHelper.findElement;
import static utils.SeleniumHelper.waitForElementToLoad;

import java.util.logging.Logger;

public class CrosswalkPage {

    private static Logger logger = Logger.getLogger("CrosswalkPage");

    private CrosswalkPage() {
    }

    public static CrosswalkPage getCrosswalkPage() {
        return (getHeaderContractMetadata().getText().equalsIgnoreCase("Contract Metadata")) ? new CrosswalkPage() : null;
    }

    private static WebElement getHeaderContractMetadata() {
        return findElement("tagname", "h1");
    }

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

    public WebElement getHistoryLogItems() {
        return findElement("xpath", "//table[@class='table']/tbody");
    }
}
